#!/bin/bash

set -euxo pipefail

dnf update -y

dnf install -y docker awscli amazon-cloudwatch-agent

systemctl enable docker
systemctl start docker

cat > /opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json <<EOF
{
  "agent": {
    "metrics_collection_interval": 60,
    "run_as_user": "root"
  },

  "metrics": {
    "namespace": "${project_name}/EC2",
    "metrics_collected": {
      "mem": {
        "measurement": [
          "mem_used_percent"
        ],
        "metrics_collection_interval": 60
      },

      "disk": {
        "measurement": [
          "used_percent"
        ],
        "resources": [
          "*"
        ],
        "metrics_collection_interval": 60
      }
    }
  },

  "logs": {
    "logs_collected": {
      "files": {
        "collect_list": [
          {
            "file_path": "/var/log/cloud-init-output.log",
            "log_group_name": "${cloudwatch_log_group_name}",
            "log_stream_name": "{instance_id}/cloud-init-output"
          },

          {
            "file_path": "/var/lib/docker/containers/*/*-json.log",
            "log_group_name": "${cloudwatch_log_group_name}",
            "log_stream_name": "{instance_id}/docker"
          }
        ]
      }
    }
  }
}
EOF

/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json -s

aws ecr get-login-password --region ${aws_region} | docker login --username AWS --password-stdin "$(echo ${ecr_repository_url} | cut -d'/' -f1)"

docker pull ${ecr_repository_url}:${docker_image_tag}

docker rm -f level8-webapp 2>/dev/null || true

docker run -d --name level8-webapp --restart unless-stopped -p 8080:8080 ${ecr_repository_url}:${docker_image_tag}

sudo dnf install -y stress-ng

stress-ng --cpu 2 --timeout 180
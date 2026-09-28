# SampleApp – Java Web Application

A modern, responsive Java web application built with **JSP**, **Bootstrap 5**, and **Vanilla CSS**.  
Packaged as a WAR file for direct deployment on **Apache Tomcat 10+**.

---

## 📁 Project Structure

```
sample-webapp/
├── pom.xml
└── src/
    └── main/
        ├── java/
        │   └── com/sampleapp/servlet/
        │       ├── HomeServlet.java
        │       ├── AboutServlet.java
        │       ├── ServicesServlet.java
        │       └── ContactServlet.java
        └── webapp/
            ├── index.jsp                    ← redirect to /home
            ├── css/
            │   └── style.css
            ├── js/
            │   └── app.js
            └── WEB-INF/
                ├── web.xml
                └── views/
                    ├── common/
                    │   ├── header.jsp
                    │   └── footer.jsp
                    ├── home.jsp
                    ├── about.jsp
                    ├── services.jsp
                    ├── contact.jsp
                    ├── error404.jsp
                    └── error500.jsp
```

---

## ⚙️ Prerequisites

| Tool              | Minimum Version |
|-------------------|-----------------|
| Java JDK          | 17 or 21        |
| Apache Maven      | 3.8+            |
| Apache Tomcat     | **10.1+**       |

> **Important:** This project uses **Jakarta EE 9** (`jakarta.*` namespace).  
> You **must** use **Tomcat 10.x** or later (Tomcat 9 uses the old `javax.*` namespace and is **not** compatible).

---

## 🔨 Build

```bash
# Clone / open the project directory
cd sample-webapp

# Build the WAR
mvn clean package

# Output:
#   target/sample.war
```

---

## 🚀 Deploying on Apache Tomcat

### Option A – Copy WAR (recommended)

1. Copy `target/sample.war` into Tomcat's `webapps/` directory:
   ```bash
   cp target/sample.war /opt/tomcat/webapps/
   ```
2. Start (or restart) Tomcat:
   ```bash
   # Linux / macOS
   $CATALINA_HOME/bin/startup.sh

   # Windows
   %CATALINA_HOME%\bin\startup.bat
   ```
3. Tomcat auto-deploys the WAR. Open:
   ```
   http://localhost:8080/sample/
   ```

### Option B – Tomcat Manager UI

1. Open `http://localhost:8080/manager/html`
2. Under **Deploy → WAR file to deploy**, choose `target/sample.war`
3. Click **Deploy**
4. Navigate to `http://localhost:8080/sample/`

### Option C – IntelliJ IDEA with Tomcat

1. **Run → Edit Configurations → + → Tomcat Server → Local**
2. Set **Application server** to your Tomcat 10 installation
3. Under **Deployment**, click **+** → **Artifact** → select `sample:war`
4. Set **Application context** to `/sample`
5. Click **Run** ▶

### Option D – VS Code (Community Server Connector)

1. Install the **"Community Server Connectors"** extension
2. Start Tomcat, right-click → **Add Deployment** → choose `target/sample.war`
3. Click **Start Server**

---

## 🌐 Pages

| URL                              | Description           |
|----------------------------------|-----------------------|
| `http://localhost:8080/sample/`  | Redirects to Home     |
| `http://localhost:8080/sample/home`     | Home page             |
| `http://localhost:8080/sample/about`    | About page            |
| `http://localhost:8080/sample/services` | Services page         |
| `http://localhost:8080/sample/contact`  | Contact page (GET)    |

---

## ✉️ Contact Form

The contact form at `/contact` supports:
- **GET** – renders the form
- **POST** – performs server-side validation and displays a success or error message

In a production application, replace the placeholder logic in `ContactServlet.java` with your preferred email library (e.g., **Jakarta Mail / JavaMail**) or database persistence.

---

## 🛠️ Tech Stack

| Layer       | Technology              |
|-------------|-------------------------|
| Language    | Java 17                 |
| Server      | Apache Tomcat 10.1      |
| Spec        | Jakarta Servlet 5.0 / JSP 3.0 |
| Build       | Maven 3.8+              |
| CSS         | Bootstrap 5.3 + Vanilla CSS |
| Icons       | Font Awesome 6          |
| Fonts       | Google Fonts – Inter    |
| JS          | Vanilla JavaScript (ES2020) |

---

## 🔧 Customisation Tips

- **Add a database**: Add your JDBC driver to `pom.xml` and use `DataSource` via JNDI in Tomcat.
- **Spring MVC**: Replace servlets with Spring's `DispatcherServlet` and add the `spring-webmvc` dependency.
- **Email on contact form**: Add `jakarta.mail` to `pom.xml` and configure an SMTP session in `ContactServlet.java`.
- **Change context path**: Rename the WAR file (e.g., `ROOT.war`) to deploy at the root (`/`).

---

## 📄 License

This project is provided for educational and demonstration purposes.  
Feel free to adapt it for your own needs.

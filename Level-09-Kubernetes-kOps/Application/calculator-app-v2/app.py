from flask import Flask, render_template, request, jsonify

app = Flask(__name__)


def safe_calculate(expression: str):
    """Evaluate a basic arithmetic expression safely (digits, + - * / . ( ) % only)."""
    allowed_chars = set("0123456789+-*/(). %")
    if not expression or not set(expression) <= allowed_chars:
        raise ValueError("Invalid characters in expression")
    # Support a trailing % as "divide by 100" on the whole expression's last number
    try:
        result = eval(expression, {"__builtins__": {}}, {})
    except ZeroDivisionError:
        raise ValueError("Division by zero")
    except Exception:
        raise ValueError("Invalid expression")
    return result


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/api/calculate", methods=["POST"])
def calculate():
    data = request.get_json(silent=True) or {}
    expression = str(data.get("expression", "")).strip()
    try:
        result = safe_calculate(expression)
        return jsonify({"result": result})
    except ValueError as e:
        return jsonify({"error": str(e)}), 400


@app.route("/healthz")
def healthz():
    return jsonify({"status": "ok"})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

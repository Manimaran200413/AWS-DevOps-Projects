from flask import Flask, render_template, request

app = Flask(__name__)


def calculate(num1, num2, operator):
    if operator == "+":
        return num1 + num2
    elif operator == "-":
        return num1 - num2
    elif operator == "*":
        return num1 * num2
    elif operator == "/":
        if num2 == 0:
            return "Error: Division by zero"
        return num1 / num2
    else:
        return "Error: Invalid operator"


@app.route("/", methods=["GET", "POST"])
def index():
    result = None
    num1 = num2 = ""
    operator = "+"

    if request.method == "POST":
        try:
            num1_raw = request.form.get("num1", "")
            num2_raw = request.form.get("num2", "")
            operator = request.form.get("operator", "+")

            num1 = float(num1_raw)
            num2 = float(num2_raw)
            result = calculate(num1, num2, operator)
        except ValueError:
            result = "Error: Please enter valid numbers"

    return render_template(
        "index.html", result=result, num1=num1, num2=num2, operator=operator
    )


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=False)

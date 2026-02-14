from flask import Flask, render_template, jsonify
import random

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/update_engine')
def update_engine():
    # Simulasi data mesin yang sinkron dengan workflow
    data = {
        "status": "ONLINE",
        "vol": f"{random.uniform(2.4, 2.9):.2f}B",
        "signal": random.choice(["BUY", "SELL", "HOLD"]),
        "momentum": random.randint(60, 98),
        "sl": f"{random.uniform(1.0431, 1.0439):.5f}",
        "tp": f"{random.uniform(1.0551, 1.0559):.5f}",
        "log_msg": f"> [CORE] Signal pulse detected at {random.randint(10, 50)}ms"
    }
    return jsonify(data)

if __name__ == '__main__':
    app.run()

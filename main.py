from flask import Flask, render_template, jsonify
import random
import os

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/update_engine')
def update_engine():
    data = {
        "status": "ONLINE",
        "vol": f"{random.uniform(2.4, 2.9):.2f}B",
        "signal": random.choice(["BUY", "SELL", "HOLD"]),
        "momentum": random.randint(60, 98),
        "log_msg": f"> [CORE] Signal pulse detected at {random.randint(10, 50)}ms"
    }
    return jsonify(data)

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 8080))
    app.run(host='0.0.0.0', port=port)

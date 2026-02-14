from flask import Flask, render_template, jsonify
import random

app = Flask(__name__)

# Route utama untuk panggil "Baju"
@app.route('/')
def index():
    return render_template('index.html')

# Endpoint "Mesin" untuk kirim data real-time (JSON)
@app.route('/update_engine')
def update_engine():
    data = {
        "status": "ONLINE",
        "market_vol": f"{random.uniform(2.1, 2.9):.2f}B",
        "signal": random.choice(["BUY", "SELL", "HOLD"]),
        "momentum": random.randint(40, 95),
        "risk_sl": f"{random.uniform(1.042, 1.045):.5f}",
        "risk_tp": f"{random.uniform(1.055, 1.058):.5f}",
        "log": f"> [CORE] Analyzing Liquidity at {random.randint(100, 999)}ms..."
    }
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True)

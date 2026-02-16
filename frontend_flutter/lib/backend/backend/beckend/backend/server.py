from flask import Flask, jsonify, request
from flask_cors import CORS
import random, time, os

app = Flask(__name__)
CORS(app)

def now():
    return time.strftime("%Y-%m-%d %H:%M:%S")

@app.route("/")
def home():
    return jsonify({
        "status": "QuantumAI v6 Backend Online ✅",
        "time": now()
    })

@app.route("/api/signal")
def api_signal():
    data = [round(random.uniform(-1, 1), 4) for _ in range(25)]
    return jsonify({"timestamp": now(), "signals": data})

@app.route("/api/broker")
def api_broker():
    return jsonify({
        "timestamp": now(),
        "broker": "MIFX-Demo",
        "balance": round(random.uniform(1000, 10000), 2),
        "profit": round(random.uniform(-300, 500), 2)
    })

@app.route("/api/chat", methods=["POST"])
def api_chat():
    data = request.get_json(force=True)
    text = data.get("text", "").lower()
    reply = ""
    if "buy" in text:
        reply = "AI Core → Detected BUY momentum ✅"
    elif "sell" in text:
        reply = "AI Core → Detecting SELL pressure ⚠️"
    elif "scan" in text:
        reply = "Scanning market... All systems stable 📡"
    elif "status" in text:
        reply = f"QuantumAI Core active — {now()}"
    else:
        reply = "Command not recognized. Try: scan / buy / sell / status"
    return jsonify({"reply": reply, "time": now()})

if __name__ == "__main__":
    port = int(os.getenv("PORT", 8080))
    app.run(host="0.0.0.0", port=port)

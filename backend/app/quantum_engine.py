from fastapi import FastAPI
import numpy as np
import random
from datetime import datetime

app = FastAPI()

class QuantumEngine:
    def __init__(self):
        self.signal_history = []

    def generate_signal(self):
        # Logika Quantum AI v16
        base = random.uniform(-1, 1)
        momentum = np.tanh(base * np.pi)
        
        if base > 0.4:
            trend = "STRONG BUY"
        elif base < -0.4:
            trend = "STRONG SELL"
        else:
            trend = "WAIT"

        return {
            "timestamp": datetime.utcnow().isoformat(),
            "momentum": round(momentum, 4),
            "trend": trend,
            "confidence": f"{round(abs(base) * 100, 2)}%"
        }

engine = QuantumEngine()

@app.get("/")
def home():
    return {"status": "Quantum AI v16 Aktif", "info": "Buka /signal untuk sinyal"}

@app.get("/signal")
def get_signal():
    return engine.generate_signal()

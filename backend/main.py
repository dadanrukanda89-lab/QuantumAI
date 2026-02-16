from fastapi import FastAPI
from backend.app.database import engine, Base
from backend.app.quantum_engine import QuantumEngine

app = FastAPI()

# Inisialisasi Database dan AI
Base.metadata.create_all(bind=engine)
ai_engine = QuantumEngine()

@app.get("/")
def home():
    return {"status": "QuantumAI Backend Online ✅"}

@app.get("/get-signal")
def get_signal():
    # Mengambil sinyal real-time dari quantum_engine.py
    data = ai_engine.generate_signal()
    return {
        "status": "success",
        "signal": data['trend'],
        "value": data['base']
    }

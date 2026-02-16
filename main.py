from fastapi import FastAPI
import uvicorn
from app.database import engine, Base
from app.quantum_engine import QuantumEngine

app = FastAPI()
Base.metadata.create_all(bind=engine)
ai_engine = QuantumEngine()

@app.get("/")
def home():
    return {"status": "QuantumAI Online ✅"}

@app.get("/get-signal")
def get_signal():
    data = ai_engine.generate_signal()
    return {"status": "success", "signal": data['trend'], "value": data['base']}

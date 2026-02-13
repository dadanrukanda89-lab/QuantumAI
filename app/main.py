from fastapi import FastAPI
from app.quantum_engine import QuantumEngine

app = FastAPI()
engine = QuantumEngine()

@app.get("/")
async def status():
    return {"admin": "Drukanda", "system": "Active"}

@app.get("/signal")
async def get_signal():
    return engine.generate_signal()

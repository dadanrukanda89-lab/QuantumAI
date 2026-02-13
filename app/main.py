from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from app.quantum_engine import QuantumEngine
import os

app = FastAPI()
engine = QuantumEngine()

# Menunjuk ke folder templates yang sudah kamu buat
templates = Jinja2Templates(directory="templates")

@app.get("/", response_class=HTMLResponse)
async def read_dashboard(request: Request):
    # Ini yang memanggil index.html kamu
    return templates.TemplateResponse("index.html", {"request": request})

@app.get("/signal")
async def get_signal():
    # Ini yang mengirim sinyal BUY/SELL ke dashboard
    return engine.generate_signal()

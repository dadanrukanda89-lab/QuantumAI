from fastapi import FastAPI
import uvicorn
import os
import sys

# --- BARIS ANTI-ERROR (PENTING!) ---
# Perintah ini memaksa Python untuk melihat ke dalam folder saat ini
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

try:
    from app.database import engine, Base
    from app.quantum_engine import QuantumEngine
    print("Import Berhasil! ✅")
except ImportError as e:
    print(f"Gagal Import: {e} ❌")
# -----------------------------------

app = FastAPI()

# Inisialisasi Database (Bikin tabel otomatis)
try:
    Base.metadata.create_all(bind=engine)
except Exception:
    pass

ai_engine = QuantumEngine()

@app.get("/")
def home():
    return {
        "status": "QuantumAI Backend Online ✅",
        "folder_check": "Struktur Backend Terdeteksi"
    }

@app.get("/get-signal")
def get_signal():
    # Mengambil sinyal real-time dari quantum_engine.py
    data = ai_engine.generate_signal()
    return {
        "status": "success",
        "signal": data['trend'],
        "value": data['base']
    }

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)

from sqlalchemy import create_engine, Column, Integer, String, Float
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Lokasi gudang penyimpanan data
URL_DB = "sqlite:///./quantum_ai.db"

engine = create_engine(URL_DB, connect_args={"check_same_thread": False})
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

# Form Tabel Sinyal
class SignalModel(Base):
    __tablename__ = "signals"
    id = Column(Integer, primary_key=True, index=True)
    timestamp = Column(String)
    trend = Column(String)
    confidence = Column(Float)
    momentum = Column(Float)

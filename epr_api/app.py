from typing import Dict
from fastapi import FastAPI

app = FastAPI(title="EPR MVP API")

@app.get("/health")
def health() -> Dict[str, str]:
    return {"status": "ok"}

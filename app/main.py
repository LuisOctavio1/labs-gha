from fastapi import FastAPI
import os

app = FastAPI()

#test
@app.get("/")
def read_root():
    environment = os.getenv("ENV_NAME", "desarrollo")
    return {"message": "API desplegada en Kubernetes", "entorno": environment}
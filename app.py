from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {
            "Nombre": "Mario Arias",
            "Matricula": "21760701"
            }

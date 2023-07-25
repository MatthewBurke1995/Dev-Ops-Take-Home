from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


def convert(celsius: int):
    fahrenheit = celsius * 9/5 + 32
    return fahrenheit

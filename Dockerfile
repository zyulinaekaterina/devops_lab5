FROM python:3.11

RUN pip install pytest httpx uvicorn pydantic-settings fastapi

WORKDIR /app
COPY src ./src

ENTRYPOINT [ "python", "-m", "src.main" ]

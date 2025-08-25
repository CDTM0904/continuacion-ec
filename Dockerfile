# Imagen base
FROM python:3.10-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Exponer puerto
EXPOSE 5000

# Comando de ejecución
CMD ["python", "app.py"]

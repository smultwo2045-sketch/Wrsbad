FROM python:3.12-slim
WORKDIR /srv
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1 WRS_DATA_DIR=/data PYTHONPATH=/srv
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py config.py storage.py address.py helpers.py wrs_processor.py shifts_processor.py dvornik.py excel_export.py ./
COPY base.html index.html app.css start.sh ./
RUN chmod +x start.sh && mkdir -p /data
CMD ["./start.sh"]

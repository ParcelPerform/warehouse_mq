FROM python:3.6-alpine3.6

WORKDIR /src/warehouse_mq
RUN pip install --upgrade pip

ADD requirements.txt ./
RUN pip install -r requirements.txt

ADD . ./
ENV PYTHONUNBUFFERED=0
ENTRYPOINT ["python3", "app.py"]
CMD []

FROM python:3.7.17-alpine3.18
WORKDIR /www/

RUN pip install -U mycli

COPY ./test.py /www/test.py
CMD ["python", "test.py"]
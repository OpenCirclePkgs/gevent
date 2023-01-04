FROM python:alpine

RUN apk --no-cache add \
    build-base \
    harfbuzz-dev \
    zlib-dev

COPY requirements.txt .
RUN python -m ensurepip --upgrade
RUN pip install -r requirements.txt

ENTRYPOINT []

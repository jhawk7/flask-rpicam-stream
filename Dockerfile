FROM python:3.10-slim-bookworm
WORKDIR /stream
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY stream.py .
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:stream"]
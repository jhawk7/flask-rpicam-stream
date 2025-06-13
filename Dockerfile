FROM debian:stable-slim 

# install rasperry pi pkgs and deps (picamera2)
RUN apt update && apt install -y --no-install-recommends gnupg

RUN echo "deb http://archive.raspberrypi.org/debian/ bookworm main" > /etc/apt/sources.list.d/raspi.list \
  && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 82B129927FA3303E

RUN apt update && apt -y upgrade

RUN apt update && apt install -y --no-install-recommends \
         python3-pip \
         python3-picamera2 \
     && apt-get clean \
     && apt-get autoremove \
     && rm -rf /var/cache/apt/archives/* \
     && rm -rf /var/lib/apt/lists/*

# Build and run app with gunicorn
WORKDIR /stream
COPY ./requirements.txt .
RUN pip install --break-system-packages --no-cache-dir -r requirements.txt
COPY stream.py .
CMD ["gunicorn", "-w", "1", "-b", "0.0.0.0:5000", "stream:app"]

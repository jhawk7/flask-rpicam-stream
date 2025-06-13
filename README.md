# Flask RPI Cam Stream ![Raspberry Pi](https://img.shields.io/badge/-Raspberry_Pi-C51A4A?style=flat&logo=Raspberry-Pi) ![Python](https://img.shields.io/badge/python-3670A0?style=flat&logo=python&logoColor=ffdd54) ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=flat&logo=docker&logoColor=white) ![Flask](https://img.shields.io/badge/flask-%23000.svg?style=flat&logo=flask&logoColor=white) ![Gunicorn](https://img.shields.io/badge/gunicorn-%298729.svg?style=flat&logo=gunicorn&logoColor=white)
This `flask` API runs on a raspberry pi and exposes a live feed from a [Raspberry-Pi Camera](https://www.raspberrypi.com/documentation/accessories/camera.html) that can be viewed by simply hitting the `/feed` endpoint over http.

## Running
- Follow the official documentation to setup a camera on a raspberry pi; you'll need to make sure you have `picamera2` installed `apt install python3-picamera2`
- Install the deps from `requirements.txt` `pip install -r requirements.txt`
- Run the app with gunicorn or execute the `run.sh` script
- stream is viewable at `http://<your-host>:5000/feed`

## Docker (TODO)
- running with docker requires the recreation of the raspberry pi dependencies (picamera2) within the container; some packages have been broken in the build process

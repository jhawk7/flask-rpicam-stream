# Flask RPI Cam Stream ![Raspberry Pi](https://img.shields.io/badge/-Raspberry_Pi-C51A4A?style=flat&logo=Raspberry-Pi) ![Python](https://img.shields.io/badge/python-3670A0?style=flat&logo=python&logoColor=ffdd54) ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=flat&logo=docker&logoColor=white) ![Flask](https://img.shields.io/badge/flask-%23000.svg?style=flat&logo=flask&logoColor=white) ![Gunicorn](https://img.shields.io/badge/gunicorn-%298729.svg?style=flat&logo=gunicorn&logoColor=white)
This `flask` API runs on a raspberry pi and exposes a live feed from the [Raspberry-Pi AI Camera](https://www.raspberrypi.com/products/ai-camera/) that can be viewed by simply hitting the
endpoint.

The raspberry-pi AI camera uses a built-in `IMX500` Vision Sensor to run **AI vision models** for `object-detection` and `pose estimation` and works with a raspberry pi zero 2w.

## Running
- Follow the official documentation [here](https://www.raspberrypi.com/documentation/accessories/ai-camera.html) to install all the necessary dependecies to get the AI-Cam working
- Install the packages from the pipfile via pipenv and run with python, or start the docker container on the raspberry pi (zero 2w or greater)
- stream is viewable at `http://<your-host>:5000/feed`

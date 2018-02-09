FROM tensorflow/tensorflow

MAINTAINER volkodavav@gmail.com

RUN apt-get update -y && apt-get install -y python3-pip python3-dev python-virtualenv ffmpeg
RUN pip3 install --no-cache-dir --upgrade pip
RUN python3 -V && pip3 -V
RUN pip3 install --no-cache-dir tensorflow
RUN pip3 install --no-cache-dir moviepy ipython IPython numpy matplotlib jupyter pillow scipy imageio
RUN apt-get autoremove && apt-get autoclean

FROM tensorflow:latest-gpu-py3-jupyter

RUN apt-get update && apt-get upgrade -y
RUN apt-get install git -y
RUN git clone https://github.com/fiv21/emotionsotf
RUN cd emotionsotf
RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN pip install -r requirements.txt
RUN python real_time_video.py
FROM ubuntu:22.10
COPY . /app
RUN apt-get update && apt-get -y install sudo
RUN sudo apt-get -y install curl
RUN sudo apt-get -y install cmake
RUN sudo apt-get -y install build-essential
RUN sudo apt-get install -y libgsl-dev
RUN sudo apt-get -y install python3
RUN sudo apt-get -y install python3-pip
RUN pip install pmdarima
RUN sudo apt-get -y install ffmpeg
WORKDIR "/app"
RUN make 
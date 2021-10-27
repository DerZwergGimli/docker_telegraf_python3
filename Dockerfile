# Cretae a telegraf container containing pyhton and later install own application
FROM telegraf:1.18
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ Europe/Berlin
RUN apt-get update 
#RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get upgrade -y && apt-get install -y python3 python3-pip

RUN echo "========= Done ========="
RUN python3 -V
RUN pip3 -V

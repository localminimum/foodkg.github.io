FROM python:3.8.12-bullseye
COPY . /foodKG
WORKDIR /foodKG
RUN apt-get update && apt-get install -y make wget tar
CMD bash run_mini.sh

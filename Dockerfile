FROM ubuntu:latest
RUN apt-get -y update && apt-get install -y fortunes
ADD ./ /
RUN chmod 777 /
WORKDIR /
CMD ["scr/run.sh"]


# docker build -t bash_demo .
# docker run bash_demo scr/run.sh file.txt

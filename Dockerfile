FROM  ubuntu
RUN apt-get update && apt-get install -y git-core
RUN apt-get install cpulimit
RUN git clone https://github.com/user4684680/xmr-cpu-limit.git
WORKDIR xmr-cpu-limit/
RUN chmod +x xmrig
CMD ["sh","-c","cpulimit -e xmrig -l 45 -b && ./xmrig"]


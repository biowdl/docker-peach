FROM python:3.6-stretch

RUN mkdir /usr/local/share/peach && \
    cd /usr/local/share/peach && \
    wget https://github.com/hartwigmedical/peach/releases/download/v1.2/peach_1.2.tar.gz && \
    tar -zxvf peach_1.2.tar.gz && \
    pip install -r requirements.txt

COPY peach /usr/local/bin

CMD ["bash"]
    
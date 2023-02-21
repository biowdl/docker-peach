FROM python:3.6-stretch

RUN mkdir /usr/local/share/peach && \
    cd /usr/local/share/peach && \
    wget https://github.com/hartwigmedical/peach/releases/download/v1.7/peach_1.7.tar.gz && \
    tar -zxvf peach_1.7.tar.gz && \
    pip install -r requirements.txt && \
    cd /usr/local/share && \
    wget https://github.com/vcftools/vcftools/releases/download/v0.1.16/vcftools-0.1.16.tar.gz && \
    tar -zxvf vcftools-0.1.16.tar.gz && \
    cd vcftools-0.1.16 && \
    ./configure && \
    make && \
    make install

COPY peach /usr/local/bin

CMD ["bash"]

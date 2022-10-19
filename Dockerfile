FROM python:3.7.6-alpine

RUN apk add cmake make g++ linux-headers && \
    pip install unicorn==1.0.2rc2 \
                pyelftools==0.24 \
                hexdump==3.3 \
                keystone-engine==0.9.1-3 && \
    mv /usr/local/lib/python3.7/site-packages/usr/local/lib/python3.7/site-packages/keystone/libkeystone.so /usr/local/lib/python3.7/site-packages/keystone/ && \
    apk del cmake make linux-headers

# COPY ./keystone_poc.py .

# CMD ["python", "keystone_poc.py"]

CMD ["sh"]

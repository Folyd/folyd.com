FROM python:3.7-alpine

ENV TZ Asia/Hong_Kong

RUN apk add --no-cache --virtual .build-deps \
		gcc \
		bash \
		tzdata \
		libc-dev \
		linux-headers

RUN apk add --update nodejs npm

RUN apk add libffi-dev openssl-dev

RUN pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com lektor

VOLUME ["/source"]

WORKDIR /source

EXPOSE 5000

ENTRYPOINT ["lektor"]

CMD ["serve", "-h", "0.0.0.0"]
FROM python
MAINTAINER Peter Lee <peter@goyun.info>

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install mycli

CMD ["mycli"]

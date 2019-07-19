FROM mono:5.20.1.19-slim

# MAINTAINER Takahiro Yoshihara <tacahiroy@gmail.com>

ENV DISPLAY :0

RUN apt-get update && \
    apt-get install -y xvfb xsddiagram

ENTRYPOINT ["Xvfb"]
CMD [":0", "-screen", "0", "640x480x8"]

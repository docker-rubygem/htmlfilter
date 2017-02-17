FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.3.0

RUN gem install htmlfilter --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cssfilter"]
CMD ["--help"]

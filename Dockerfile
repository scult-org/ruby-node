FROM ruby:2.4
MAINTAINER "Martin Kapp <martin@coderats.net>"

LABEL name="Base Ruby 2.4 image with NodeJS 6 and bundler"
LABEL version="1.0"

# Install Node v6. Required for something.
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN gem install bundler --no-rdoc --no-ri

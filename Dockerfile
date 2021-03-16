FROM ruby:3-slim
LABEL maintainer="Pete Johns <paj+docker@johnsy.com>"
RUN apt update && apt install build-essential cmake pkg-config git -y
RUN gem install glyptodont
CMD ["--help"]
ENTRYPOINT ["glyptodont"]

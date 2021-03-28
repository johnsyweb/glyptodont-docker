ARG glyptodont_version
FROM ruby:3-slim
LABEL maintainer="Pete Johns <paj+docker@johnsy.com>"
RUN apt update && apt install build-essential cmake pkg-config git -y
RUN gem install glyptodont -v "${glyptodont_version:-~> 0}"
CMD ["--help"]
ENTRYPOINT ["glyptodont"]

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# DO NOT EDIT THIS FILE. IT IS AUTO_GENERATED
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
FROM cyberdojofoundation/ruby

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# START of extra commands to fulfil runner's requirements (os=Alpine)
RUN (getent group sandbox) || (addgroup -g 51966 sandbox)
RUN (grep -q sandbox:x:41966 /etc/passwd) || (adduser -D -g "" -h /home/sandbox -G sandbox -s /bin/bash -u 41966 sandbox)
RUN apk add --update coreutils bash tar file
# END of extra commands to fulfil runner's requirements
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

LABEL maintainer=jon@jaggersoft.com

RUN echo "gem: --no-rdoc --no-ri" > ~/.gemrc
RUN gem install rspec

COPY red_amber_green.rb /usr/local/bin

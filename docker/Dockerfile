FROM cyberdojofoundation/ruby
LABEL maintainer=jon@jaggersoft.com

RUN echo "gem: --no-rdoc --no-ri" > ~/.gemrc
RUN gem install rspec

COPY red_amber_green.rb /usr/local/bin

FROM ruby:1.9.3-onbuild
# TODO: Try ruby 2.1

# My interface to the world
ENV RAILS_ENV production
VOLUME "/data"
EXPOSE 3000

# Build actions
RUN mkdir /data

# Default runtime action
CMD ["bundle", "exec", "rails", "server"]

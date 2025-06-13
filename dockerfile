FROM fluent/fluentd:v1.15

USER root
RUN apk add --no-cache build-base ruby-dev postgresql-dev \
    && gem install fluent-plugin-pgjson fluent-plugin-postgres --no-document

USER fluent

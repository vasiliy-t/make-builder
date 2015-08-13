FROM leanlabs/base-builder

RUN apk --update add make

ENTRYPOINT ["make"]

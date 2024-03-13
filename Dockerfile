FROM alpine
RUN mkdir app
COPY . /app
CMD [ "echo", 'hello done']
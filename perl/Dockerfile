# Use the latest perl image from dockerhub
FROM perl:latest

# Install the web framework mojolicious
RUN curl -L https://cpanmin.us | perl - -M https://cpan.metacpan.org -n Mojolicious

# Instruct mojolicious to listen on port 8080 and open the port
ENV MOJO_LISTEN http://*:8080
EXPOSE 8080

# add your application code and set the working directory
ADD . /app
WORKDIR /app

# change the permissions and run the application
RUN chmod +x main.pl
CMD ["./main.pl", "daemon"]
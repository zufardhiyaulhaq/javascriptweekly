# Dockerfile References: https://docs.docker.com/engine/reference/builder/

# Start from the latest alpine
FROM alpine

# Add Maintainer Info
LABEL maintainer="Zufar Dhiyaulhaq <zufardhiyaulhaq@gmail.com>"

# Set the Current Working Directory inside the container
WORKDIR /javascriptweekly

# Copy the source from the current directory to the Working Directory inside the container
COPY javascriptweekly .
RUN chmod +x javascriptweekly

# Command to run the executable
ENTRYPOINT ["./javascriptweekly"]

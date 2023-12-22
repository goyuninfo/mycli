# Use Python slim as the base image
FROM python:slim

# Set the working directory and copy the files
WORKDIR /code
COPY . /code

# Install pip and mycli
RUN /usr/local/bin/python -m pip install --upgrade pip && pip install mycli

# Expose port 3000
EXPOSE 3000

# Add metadata
LABEL maintainer="Peter Lee <peter@goyun.info>"

# Run mycli as the default command
CMD ["mycli"]


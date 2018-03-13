# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /work
WORKDIR /work

# Copy the requirements file into the container at /work
ADD . /work

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
#Install git
RUN apt-get update && apt-get install -y git
#clone cutadapt tool
RUN git clone https://github.com/naturalis/galaxy-tool-cutadapt
RUN mkdir -p /input
RUN mkdir -p /output
RUN apt-get install zip unzip

CMD python galaxy-tool-cutadapt/cutadapt_wrapper.py -i $i -t $t -advanced -command_line -e $e -fp $fp -rp $rp -l $l -o $o -ol $ol


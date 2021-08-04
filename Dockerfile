# we make sure we have a suitable package installer 
from alpine:latest
RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip
    
# we use the working directory of the app 
# and copy the files to the working directory so the app has all necessary files
WORKDIR /app
COPY . /app

# we install the required dependencies that can be found in requirements.txt
RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

# we use the following commands to run the python app this equates to: $ python3 helloworld.py
ENTRYPOINT ["python3"]
CMD ["helloworld.py"]

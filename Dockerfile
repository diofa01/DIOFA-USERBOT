# We're using Ubuntu 20.10
FROM vckyouuu/geezprojects:buster

RUN git clone -b Geez-UserBot https://github.com/diofa01/DIOFA-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/diofa01/Geez-UserBot/DIOFA-USERBOT/requirements.txt

CMD ["python3","-m","userbot"]

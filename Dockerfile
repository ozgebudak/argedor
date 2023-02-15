FROM python

WORKDIR /apt
COPY . .

RUN pip install -r req.txt

ENTRYPOINT python server.py

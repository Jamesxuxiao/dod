FROM python:3.7-slim

RUN apt-get update
RUN apt-get -y install jq

RUN pip3 install requests pyyaml

COPY run_action.py /action/run_action.py

COPY entrypoint.sh /action/entrypoint.sh

RUN chmod +x /action/entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]

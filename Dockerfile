FROM python:3.12-slim

WORKDIR /app

RUN pip install crewai crewai-tools

COPY . /app

RUN crewai install

RUN crewai run

CMD ["/bin/bash"]
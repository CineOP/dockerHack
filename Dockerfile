FROM python:3.9

WORKDIR /app

COPY front.py ./front.py
COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit", "run"]

CMD [ "front.py" ]
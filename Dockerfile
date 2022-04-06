FROM python

RUN apt-get update

RUN pip install Flask
RUN pip install -U Flask-SQLAlchemy

ENV FLASK_ENV=development
ENV FLASK_APP=app.py
ENV FLASK_DEBUG=1
ENV FLASK_RUN_HOST=0.0.0.0



WORKDIR /app
COPY . .

CMD ["flask", "run", "--host=0.0.0.0"]

EXPOSE 5000

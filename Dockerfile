FROM stand/docker_cuda

VOLUME /vol
WORKDIR /app
ADD . /app

RUN pip install -r requirements.txt && \
    ./download_components.sh && \
    printf "import nltk\nnltk.download('punkt')" | python3.6

EXPOSE 6005

CMD python3.6 squad_ru_api.py > /vol/squad_ru.log 2>&1
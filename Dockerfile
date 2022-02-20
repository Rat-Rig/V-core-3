FROM python:3.9.7-alpine3.14

RUN apk add --no-cache \
    bash \
    curl \
    git \
    git-fast-import \
    openssh 
RUN apk add --no-cache --virtual .build gcc musl-dev
ENV POETRY_VERSION=1.0.10
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | POETRY_HOME=/opt/poetry python && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

COPY poetry.lock pyproject.toml /app/
WORKDIR /app
RUN poetry install --no-root --no-dev --no-interaction --no-ansi

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]

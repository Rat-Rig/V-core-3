FROM python:3.10.1-alpine3.15

RUN apk add --no-cache \
    bash \
    curl \
    git \
    git-fast-import \
    openssh 
RUN apk add --no-cache --virtual .build gcc musl-dev
ENV POETRY_VERSION=1.1.12
RUN curl -sSL https://install.python-poetry.org | POETRY_HOME=/opt/poetry python3 && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

COPY poetry.lock pyproject.toml /app/
WORKDIR /app
RUN poetry install --no-root --no-dev --no-interaction --no-ansi

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]

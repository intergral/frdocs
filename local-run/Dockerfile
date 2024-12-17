FROM python:3.9-slim-buster
WORKDIR /docs
ADD ../requirements-local.txt .
RUN pip install --no-cache-dir -r requirements-local.txt
EXPOSE 8000
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
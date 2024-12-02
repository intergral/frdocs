FROM ghcr.io/intergral/mkdocs-material-insiders:latest

WORKDIR /docs

COPY requirements.txt .

# Remove the lines that start with 'git' as it is installed in the base image
RUN sed -i '/^git/d' requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["serve", "-a", "0.0.0.0:8000"]
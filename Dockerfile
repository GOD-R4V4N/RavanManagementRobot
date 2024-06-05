
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \

COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD python3 -m RavanManagement
FROM python:3-alpine

WORKDIR /app
RUN apk add --no-cache gcc musl-dev

COPY src/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY src /app
RUN python setup.py build_ext --inplace

EXPOSE 5000
CMD ["flask", "run", "-h", "0.0.0.0"]
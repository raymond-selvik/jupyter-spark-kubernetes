ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION} AS py3
FROM spark-base:3.2.0

COPY --from=py3 / /

RUN pip --no-cache-dir install \
    jupyterlab \
    pyspark==3.2.0

COPY spark-defaults.conf /spark/conf/spark-defaults.conf

COPY notebooks/ /notebooks/

CMD [ "jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--ServerApp.token=''", "--ServerApp.password=''" ]

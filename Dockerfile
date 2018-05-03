FROM mcchae/conda
MAINTAINER MoonChang Chae mcchae@gmail.com
LABEL Description="alpine miniconda3 with openssh server"

RUN conda install -y jupyter && mkdir -p /notebook

EXPOSE 8888

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["jupyter","notebook", "--allow-root", "--notebook-dir=/notebook"]

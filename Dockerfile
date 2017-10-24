# Use an official Python runtime as a parent image
# FROM python:3.6-slim
FROM jupyter/tensorflow-notebook

MAINTAINER Jupyter Project <jupyter@googlegroups.com>


# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app


RUN sudo chmod 777 /app

# Install any needed packages specified in requirements.txt
# RUN pip3 install -r requirements.txt

# # Make port 80 available to the world outside this container
# EXPOSE 80

# # Define environment variable
# ENV NAME World \
# 	NOTEBOOK_ENV=PROD

# # Install Tensorflow
# RUN conda install --quiet --yes \
# 	--file requirements-conda.txt && \
#     # 'tensorflow=1.3*' \
#     # 'keras=2.0*' && \
#     conda clean -tipsy && \
#     fix-permissions $CONDA_DIR

# ENV XDG_CACHE_HOME /home/$NB_USER/.cache/

# RUN MPLBACKEND=Agg python -c "import matplotlib.pyplot" && \
#     fix-permissions /home/$NB_USER



# USER $NB_USER


# Run app.py when the container launches
# CMD ["python", "app.py"]
# CMD ["jupyter", "notebook"]

# Build with name
# docker build -t datascience .
#
# View images
# docker images
#
# Run the image in detach mode
# docker run -it --rm -p 8888:8888 datascience
#
# View Image ID
# docker ps -a
# docker container ls
#
# Enter the running docker container
# docker exec -it [container-id] bash
#
# In order to leave the running container press 'Ctrl + p' and 'Ctrl + q'
#
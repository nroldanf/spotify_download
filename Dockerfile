# Use an official Python runtime as a base image
FROM python:3.8-slim

RUN mkdir /songs
WORKDIR /songs

# Install any needed packages specified in requirements.txt
RUN apt-get update
RUN apt-get install -y ffmpeg
RUN pip3 install spotify_dl --upgrade

# Define environment variables
ENV SPOTIPY_CLIENT_ID='none'
ENV SPOTIPY_CLIENT_SECRET='none'
ENV SPOTIFY_PLAYLIST='none'

CMD spotify_dl -l $SPOTIFY_PLAYLIST -o .
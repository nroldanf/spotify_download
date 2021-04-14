# Spotify Tracks Downloader

Run a docker container from this image with the following command in order to download the song into a folder in your current local path (pwd).

```bash
docker run --rm -v $(pwd):/songs \
-e SPOTIFY_PLAYLIST="https://open.spotify.com/playlist/3Ansznz8joIopkoagNoYx6?si=vJOw28aVQ5yMLgeM682_2Q" \
-e SPOTIPY_CLIENT_ID="YOUR_CLIENT_ID" \
-e SPOTIPY_CLIENT_SECRET="YOUR_CLIENT_SECRET"
spotify_download
```

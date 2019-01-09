# Use an official Python runtime as a parent image
FROM anonyme77/python36-builder

# Installing system dependencies
RUN apt-get update && apt-get install -y libgtk3.0 libdbus-glib-1-2 libxt-dev

# Install FF
RUN wget -q https://ftp.mozilla.org/pub/firefox/releases/60.0.2/linux-x86_64/en-US/firefox-60.0.2.tar.bz2
RUN tar xjf firefox-60.0.2.tar.bz2
RUN rm firefox-60.0.2.tar.bz2
RUN mv firefox /opt/firefox60
RUN ln -s /opt/firefox60/firefox /usr/bin/firefox
RUN wget -q https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz
RUN tar -xvzf geckodriver-v0.21.0-linux64.tar.gz
RUN rm geckodriver-v0.21.0-linux64.tar.gz
RUN mv geckodriver /usr/bin/geckodriver

# download the base centos image
FROM dockerfile/nodejs

# set the maintainer
MAINTAINER Aaron Feng "aaron@forty9ten.com"

RUN apt-get -y install git build-essential
RUN apt-get install python -y

# docker build doesn't set env so node-gyp fails
ENV USER root
# don't install globally, otherwise node-gyp fails
RUN npm install codebox

EXPOSE 8000
ENTRYPOINT ["node", "/root/node_modules/codebox/bin/codebox.js"]
CMD ["run"]

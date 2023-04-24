FROM node:boron  AS build
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Clone game source code
RUN git clone https://github.com/font/pacman.git .
# Install app dependencies
RUN npm install
# Expose port 8080
EXPOSE 8080

FROM node:alpine
WORKDIR /usr/src/app
COPY --from=build  /usr/src/app ./
RUN npm install --only=production
CMD ["npm", "start"]

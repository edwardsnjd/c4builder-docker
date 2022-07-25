FROM node:17-alpine

# Install dependencies (java)
RUN apk add openjdk17-jre

ENV PUPPETEER_SKIP_DOWNLOAD=true

# Install c4builder
RUN npm install --global c4builder

ENTRYPOINT ["c4builder"]

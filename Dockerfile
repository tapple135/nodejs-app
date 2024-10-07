FROM node:14-slim

ENV PORT=8080 \
    APP_ROOT=/opt/app-root/
    
RUN mkdir -p ${APP_ROOT}

COPY ./ ${APP_ROOT}

WORKDIR ${APP_ROOT}

RUN npm install 

EXPOSE ${PORT}

# Start node server on port 8080
CMD ["npm", "start"]

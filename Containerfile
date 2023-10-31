# Install the application dependencies in a full UBI Node docker image
FROM registry.access.redhat.com/ubi8/nodejs-18:latest AS base

# Elevate privileges to run npm
USER root

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the dependencies into a minimal Node.js image
FROM registry.access.redhat.com/ubi8/nodejs-18-minimal:latest AS final

# Install app dependencies
COPY --from=base /opt/app-root/src/node_modules /opt/app-root/src/node_modules
COPY . /opt/app-root/src

# Elevate privileges to change owner of source files
USER root
RUN chown -R 1001:0 /opt/app-root/src

# Restore default user privileges
USER 1001

# Run application in 'development' mode
ENV NODE_ENV development

# Listen on port 8080
ENV PORT 8080

RUN npm run build

# Container exposes port 8080
EXPOSE 8080

# Start node process
CMD ["npm", "run", "server"]
# Example Dockerfile that we would have locally

# Runs a simple hello world Node.js server
FROM heroku/nodejs-hello-world
CMD ["npm", "start"]
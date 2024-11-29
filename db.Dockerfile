# Use the official PostgreSQL image from Docker Hub as a base image
FROM postgres:latest

# Set environment variables for the database
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase

# Expose the default PostgreSQL port
EXPOSE 5432

# Optionally, copy initialization scripts (SQL files) to set up the database
# COPY ./init.sql /docker-entrypoint-initdb.d/

# Run the container with the PostgreSQL service
CMD ["postgres"]
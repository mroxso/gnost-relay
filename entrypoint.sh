#!/bin/bash

# Wait for Postgres
while ! pg_isready -h postgres -U gnost; do
  echo "$(date) - waiting for postgres..."
  sleep 1
done

# Start gnost-relay
exec ./main
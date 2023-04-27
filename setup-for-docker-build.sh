#!/bin/bash
cd "$(dirname "$0")" || exit


OPENAI_API_KEY=""
NEXTAUTH_SECRET=$(openssl rand -base64 32)

ENV="NODE_ENV=production\n\
NEXTAUTH_SECRET=$NEXTAUTH_SECRET\n\
NEXTAUTH_URL=http://localhost:3000\n\
OPENAI_API_KEY=$OPENAI_API_KEY\n\
DATABASE_URL=file:../db/db.sqlite\n"

printf $ENV > .env


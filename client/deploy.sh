#!/bin/bash
# Deploy to Vercel without GitHub connection
cd "$(dirname "$0")"
vercel --prod --yes

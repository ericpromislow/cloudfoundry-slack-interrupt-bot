#!/bin/sh -l

echo "[$(date -u)] Validate delegate bot config"

/usr/bin/delegatebot \
  --config=/execdir/config/*.yml \
  --config=config/default.delegatebot \
  validate

echo "[$(date -u)] Everything looks good!"

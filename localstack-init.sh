#!/bin/bash
set -e
sleep 3
awslocal s3 mb s3://logistic-bucket || true
awslocal sqs create-queue --queue-name logistic-queue || true
#!/bin/bash
# Rollback to a previous SCP version
aws organizations update-policy \
    --policy-id "p-xxxxxxxxxx" \
    --content file://scp-policies/version_1.json \
    --description "Rolling back to SCP version 1"

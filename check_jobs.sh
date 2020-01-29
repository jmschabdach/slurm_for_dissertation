#!/usr/bin/bash

TOTAL=$(squeue -u jms565 | wc -l)
TOTAL=$(($TOTAL-1))
RUNNING=$(squeue -u jms565 | grep "R" | wc -l)
RUNNING=$(($RUNNING-1))
PENDING=$(squeue -u jms565 | grep "PD" | wc -l)

echo "  Total: $TOTAL"
echo "Running: $RUNNING"
echo "Pending: $PENDING"

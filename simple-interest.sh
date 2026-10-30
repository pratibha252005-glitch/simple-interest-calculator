#!/bin/bash

# Simple Interest Calculator

echo "================================"
echo "     SIMPLE INTEREST CALCULATOR"
echo "================================"

# Get input from user
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest: " rate
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest
interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")

# Calculate Total Amount
amount=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

# Display results
echo "--------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $interest"
echo "Total Amount     : $amount"
echo "--------------------------------"
echo "Calculation Completed Successfully!"

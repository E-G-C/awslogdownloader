#!/bin/bash


lambda_name="[LAMBDA NAME]"

last_minutes=5

today=$(date '+%Y_%m_%d__%H_%M_%S')
filename="./logs/$lambda_name"_"$today.log"
awslogs get /aws/lambda/"$lambda_name" --start="$last_minutes minutes" --profile=[YOUR AWS PROFILE NAME] >"$filename"
#cat "$filename" 

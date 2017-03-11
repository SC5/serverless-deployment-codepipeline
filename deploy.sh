#!/usr/bin/env bash

STACK_NAME=serverless-example-pipeline-deployment
PIPELINE_NAME=serverless-example-pipeline
CODEBUILD_NAME=serverless-example-codebuild
REPOSITORY_NAME=serverless-example-repository

aws cloudformation deploy \
  --template-file cloudformation/pipeline-stack.yml \
  --stack-name $STACK_NAME \
  --capabilities CAPABILITY_IAM \
  --parameter-overrides \
  RepositoryName=$REPOSITORY_NAME \
  PipelineName=$PIPELINE_NAME \
  CodeBuildName=$CODEBUILD_NAME

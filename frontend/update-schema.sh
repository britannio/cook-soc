#!/bin/bash

get-graphql-schema http://localhost:4000/graphql > lib/core/graphql/schema.graphql

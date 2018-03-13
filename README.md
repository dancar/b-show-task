# README

## Prerequisites

- Ruby 2.5.0
- Sqlite3

## Setup

`$ bundle`

## Usage

### Server
`$ bin/rails server`

### Part 1
`$ curl -X GET -H 'Content-Type: application/json' -d '{"str": "a1B"}' localhost:3000/part1`

### Part 2

In these examples, the ID is 123.

Register task:

`$ curl -X PUT localhost:3000/part2/register/123`

Complete task:
`$ curl -X PUT localhost:3000/part2/complete/123`

Get incomplete Status for last 3 hours:
`$ curl localhost:3000/part2`


## Test:

`$ bundle exec rspec`

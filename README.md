# README

## Setup:

`$ bundle`


## Usage:

### Part 1:
`$ curl -X GET -H 'Content-Type: application/json' -d '{"str": "a1B"}' localhost:3000/part1`

### Part 2:

In these examples, the ID is 123.

Register task:

`$ curl -X put localhost:3000/part2/register/123`

Complete task:
`$ curl -X put localhost:3000/part2/complete/123`

Get incomplete Status for last 3 hours:
`$ curl -X put localhost:3000/part2/status`


## Test:

`$ bundle exec rspec`

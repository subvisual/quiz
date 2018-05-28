#!/bin/bash

set -e

mix deps.get
mix ecto.migrate
iex --sname quiz --cookie quiz -S mix phx.server

# frozen_string_literal: true

require 'sinatra/base'

# Sync log output to STDOUT
$stdout.sync = true

# Load the application
require_relative './app'

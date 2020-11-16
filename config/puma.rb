# Puma configuration file.
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") {
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") {
threads min_threads_count, max_threads_count
port
ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { ENV['RACK_ENV']
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid"
workers ENV.fetch("WEB_CONCURRENCY") { 2 }
preload_app!
plugin :tmp_restart

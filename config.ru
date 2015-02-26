# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
#run ResqueSchedulerExampleEdge::Application

run Rack::URLMap.new \
  "/"       => ResqueSchedulerExampleEdge::Application,
  "/resque" => Resque::Server.new

#!/usr/bin/env ruby

require 'yaml'

if File.exists? File.join(File.dirname(__FILE__), "appconfig.yml")
  @@appconfig = YAML::load(File.open(File.join(File.dirname(__FILE__), "appconfig.yml")))
end

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "lib")


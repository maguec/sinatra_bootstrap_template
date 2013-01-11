# controllers to load
require (File.join(File.dirname(__FILE__), 'controllers', 'toppage'))
#require (File.join(File.dirname(__FILE__), 'controllers', 'someothercontroller'))

# serve up static assets using rack
map "/js" do
  run Rack::Directory.new("#{File.join(File.dirname(__FILE__), 'static', 'js')}")
end

#map "/otherstuff" do
#    run Someothercontroller
#end

map "/" do
    run Toppage
end

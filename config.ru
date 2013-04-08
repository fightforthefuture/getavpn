require 'rack-rewrite'

use Rack::Static , :urls => { 
    "/" => "index.html", 
    "/confirm" => "confirm/index.html", 
    "/confirm/" => "confirm/index.html", 
    "/thanks" => "thanks/index.html", 
    "/thanks/" => "thanks/index.html", 
    } , :root => "public"

run Rack::URLMap.new({
  "/"      => Rack::Directory.new("public"),
})


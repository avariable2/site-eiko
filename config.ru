require 'rack/static'

use Rack::Static,
  :urls => [
    "/assets/scss/base", 
    "/assets/scss/themes", 
    ...
],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

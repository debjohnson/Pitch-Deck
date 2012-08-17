use Rack::Static, 
  :urls => ["/480x268", "/fallback", "/images-1", "/images-2", "/player"],
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
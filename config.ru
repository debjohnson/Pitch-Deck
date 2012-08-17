use Rack::Static, 
  :urls => ["/assets/480x268", "/assets/fallback", "/assets/images-1", "/assets/images-2", "/assets/player", "/assets"],
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
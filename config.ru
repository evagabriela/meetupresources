use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
    File.open('public/mockinterview.html', File::RDONLY)
    File.open('public/whiteboard.html', File::RDONLY)
    File.open('public/resources.html', File::RDONLY)
     File.open('public/contact.html', File::RDONLY)
  ]
}

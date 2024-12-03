require 'jekyll'
require 'rack'

# Middleware pour définir le Content-Type pour le fichier AASA
class AASAContentType
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    request = Rack::Request.new(env)
    if request.path == '/.well-known/apple-app-site-association'
      headers['Content-Type'] = 'application/json'
    end
    [status, headers, body]
  end
end

# Configurer Jekyll pour construire le site
Jekyll::Commands::Build.process({
  'source' => './',
  'destination' => './_site'
})

# Créer l'application Rack pour servir les fichiers statiques
app = Rack::File.new(File.expand_path('_site'))
app = AASAContentType.new(app)

run app

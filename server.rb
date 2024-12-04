# server.rb

require 'rack'

# Serve les fichiers statiques depuis le répertoire 'public'
app = Rack::Static.new(Rack::File.new("public"), urls: ["/"], root: "public")

# Gère les requêtes non trouvées
run app

# Utiliser l'image officielle Ruby 3.2.3
FROM ruby:3.2.3

# Installer les dépendances nécessaires
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Définir le répertoire de travail
WORKDIR /app

# Copier le Gemfile et le Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Installer Bundler et les gemmes
RUN gem install bundler
RUN bundle install

# Copier le reste de l'application
COPY . .

# Commande par défaut (facultatif)
CMD ["bash"]

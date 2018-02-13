server "159.203.3.130", user: 'deployer', roles: %w{app db web}
set :stage, :staging
set :branch, :master
set :deploy_user, "deployer"
set :deploy_to, "/home/#{fetch(:deploy_user)}/apps/davechmura_website"
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :rails_env, 'staging'
set :puma_env, "staging"
set :puma_conf, "#{shared_path}/config/puma.rb"

# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:


# server 'example.com', user: 'deploy', roles: %w{app web}, other_property: :other_value
# server 'db.example.com', user: 'deploy', roles: %w{db}

set :bundle_path, -> { '~/applications/mi_locations/shared/vendor/bundle' }
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

set :application, "server-part"
set :repo_url, "https://github.com/YellowBang368/server_part_spree"

set :rbenv_path, "/home/deploy/.rbenv"
set :linked_dirs, %w(tmp/pids tmp/sockets log)

set :deploy_to, "/etc/deploy/server-part"

set :puma_bind,       "unix://home/deploy/server-part/current/tmp/sockets/home/deploy/server-part/current/-puma.sock"
set :puma_state,      "/home/deploy/server-part/current//tmp/pids/puma.state"
set :puma_pid,        "/home/deploy/server-part/current//tmp/pids/puma.pid"

append :linked_files, 'config/database.yml', 'config/secrets.yml'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads'





# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

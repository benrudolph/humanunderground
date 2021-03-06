set :application, "humanunderground"
set :repository,  "git@github.com:benrudolph/humanunderground.git"
set :scm, :git
set :deploy_via, :copy
set :user, :deploy
require '/Users/benrudolph/Dropbox/credientials/capcreds.rb'
set :deploy_to, "/var/www/#{application}"
set :use_sudo, false

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :blog, "176.58.105.165"
default_run_options[:pty] = true

set :ssh_options, { :forward_agent => true }

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

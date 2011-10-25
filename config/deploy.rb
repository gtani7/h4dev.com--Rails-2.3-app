set :application, "h4dev.com"
set :user,  "dmitri70"
set :repository,  "file:///home/dmitri70/tmp/svn/repository/"
set :port,  30000

set :deploy_to, "/home/dmitri70/public_html/railscat"


# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :subversion

role :app, "h4dev.com"   # or application or "h4dev.com"
role :web, "h4dev.com"
role :db, "h4dev.com" , :primary => true


#role :app, "your app-server here"
#role :web, "your web-server here"
#role :db,  "your db-server here", :primary => true
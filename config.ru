require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

ActiveRecord::Base.logger = Logger.new(STDOUT)

use Rack::MethodOverride
use ConnexesController
use ShipsController
use UsersController
run ApplicationController
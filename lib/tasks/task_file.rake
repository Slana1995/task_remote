
Rails.logger = Logger.new('log/tasks.log')
namespace :db do
	desc "data transfer"
	task d2p: [:environment] do
		users = User.all
		users.each do |u|
			DstUser.new(name: u.name, email: u.email, login: u.login).save
		end
		Rails.logger.info "Transfer data complete"
	end
end
desc "second task"
task :verbose do
	Rails.logger = Logger.new(STDOUT)
end

class DstUser < ActiveRecord::Base
	establish_connection adapter: 'sqlite3', database: 'db/production.sqlite3'
	self.table_name = 'users'
end

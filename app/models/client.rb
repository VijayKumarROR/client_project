class Client < ApplicationRecord
	validates_presence_of :client_name
	validates_presence_of :project_name
	validates_presence_of :time
	validates_presence_of :set_rate
	validates_presence_of :team_member

	validates_uniqueness_of :project_name	
end

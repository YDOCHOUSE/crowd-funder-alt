namespace :reports do
	desc "Project report"
	# need to load environment so we can talk to database
	task :projects => :environment do
		latest_projects = Project.where("created_at >= ?", 1.hour.ago)
		
		puts "Projects created in the last hour: "
		puts latest_projects.count
	end
end


# rake environment
# rake reports:projects
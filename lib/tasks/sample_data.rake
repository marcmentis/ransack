# Create data for pats
namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		500.times do |n|
			firstname = Faker::Name.first_name
			lastname = Faker::Name.last_name
			number = Faker::Number.number(7)

			Pat.create!(firstname: firstname,
						lastname: lastname,
						number: number)
		end
	end
end
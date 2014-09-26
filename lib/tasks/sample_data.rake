# Create data for pats
namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		500.times do |n|
			firstname = Faker::Name.first_name
			lastname = Faker::Name.last_name
			number = Faker::Number.number(7)
			doa = Faker::Business.credit_card_expiry_date
			dod = Faker::Business.credit_card_expiry_date
			dob = Faker::Business.credit_card_expiry_date


			Pat.create!(firstname: firstname,
						lastname: lastname,
						number: number,
						doa: doa,
						dod: dod,
						dob: dob,
						facility_id: '1')
		end
	end
end
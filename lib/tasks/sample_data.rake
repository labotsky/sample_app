namespace :db do 
		desc "Fill db with sample data"
		task populate: :environment do
			admin = User.create!(name: "Example User",
				email: "sergey1993.08@mail.ru",
				password: "foobar",
				password_confirmation: "foobar")
			admin.tog2gle!(:admin)
		99.times do |n|
			print "."
			name = Faker::Name.name
			email = "example-#{n+1}@railstutorial.org"
			password = "password"
			User.create!(name: name, email: email, password:password,
				password_confirmation: password)
		end
	end
end
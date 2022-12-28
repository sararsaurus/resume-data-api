# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# Student.create!(first_name: "Steven", last_name: "Metz", email: "steven@example.com", phone_number: "123-445-4789", short_bio: "Construction Foreman looking to break into tech", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "data:image/jpeg;base64,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", personal_website_url: "steven.com")

# Student.create!(first_name: "Sara", last_name: "Raley", email: "sr@example.com", phone_number: "123-445-4789", short_bio: "present", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/10/skateman-by-neal-adams.jpg?q=50&fit=crop&w=750&dpr=1.5", personal_website_url: "sara.com")

# Student.create!(first_name: "Connor", last_name: "La Rocca", email: "conehead@example.com", phone_number: "123-445-4789", short_bio: " Hello. Hire me. ", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://static.wikia.nocookie.net/neoencyclopedia/images/0/0e/MermaidMan.png/revision/latest?cb=20121028093748", personal_website_url: "connor.com")

# Student.create!(first_name: "Hannah", last_name: "Kehoe", email: "hannah@example.com", phone_number: "123-445-4789", short_bio: "Hello, I am Hannah. I am a baby Software Developer", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://listverse.com/wp-content/uploads/2020/05/iu-40.jpeg", personal_website_url: "hannah.com")

# Student.create!(first_name: "Keosha", last_name: "Young", email: "keosha@example.com", phone_number: "123-445-4789", short_bio: "hi im keosha", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "photo.com", personal_website_url: "keosha.com")

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Paleontology", university_name: "Lakewood Elementary", student_id: 4) #Hannah

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Supernaturalism", university_name: "Dispenza College", student_id: 1) #Steven

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Musicality", university_name: "Cool Bands University", student_id: 3) #Connor

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Fashion", university_name: "More Shoes School", student_id: 5) #Keosha

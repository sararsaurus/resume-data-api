Student.create!(first_name: "Steven", last_name: "Metz", email: "steven@example.com", phone_number: "123-445-4789", short_bio: "Construction Foreman looking to break into tech", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://static.wikia.nocookie.net/marvel_dc/images/b/b6/AFOB_1.JPG/revision/latest?cb=20220626161123", personal_website_url: "steven.com", password: "password", password_confirmation: "password")

Student.create!(first_name: "Sara", last_name: "Raley", email: "sr@example.com", phone_number: "123-445-4789", short_bio: "present", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/10/skateman-by-neal-adams.jpg?q=50&fit=crop&w=750&dpr=1.5", personal_website_url: "sara.com", password: "password", password_confirmation: "password")

Student.create!(first_name: "Connor", last_name: "La Rocca", email: "conehead@example.com", phone_number: "123-445-4789", short_bio: " Hello. Hire me. ", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://static.wikia.nocookie.net/neoencyclopedia/images/0/0e/MermaidMan.png/revision/latest?cb=20121028093748", personal_website_url: "connor.com", password: "password", password_confirmation: "password")

Student.create!(first_name: "Hannah", last_name: "Kehoe", email: "hannah@example.com", phone_number: "123-445-4789", short_bio: "Hello, I am Hannah. I am a baby Software Developer", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://listverse.com/wp-content/uploads/2020/05/iu-40.jpeg", personal_website_url: "hannah.com", password: "password", password_confirmation: "password")

Student.create!(first_name: "Keosha", last_name: "Young", email: "keosha@example.com", phone_number: "123-445-4789", short_bio: "hi im keosha", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "photo.com", personal_website_url: "keosha.com", password: "password", password_confirmation: "password")

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Paleontology", university_name: "Lakewood Elementary", student_id: 4) #Hannah

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Supernaturalism", university_name: "Dispenza College", student_id: 1) #Steven

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Musicality", university_name: "Cool Bands University", student_id: 3) #Connor

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Fashion", university_name: "More Shoes School", student_id: 5) #Keosha

Education.create!(start_date: "08-06-2020", end_date: "04-01-2022", degree: "Hikology", university_name: "The God Damn Rocky Mountains, baby", student_id: 2) #Sara

Capstone.create!(capstone_name: "The very best capstone", capstone_description: "The best thingy I ever made", capstone_url: "verybestcapstone.com", capstone_screenshot: "very_best_capstone.url", student_id: 1)

Capstone.create!(capstone_name: "I made a capstone", capstone_description: "It is a capstone", capstone_url: "IMadeACapstone.com", capstone_screenshot: "I_made_a_capstone.url", student_id: 2)

Capstone.create!(capstone_name: "Look, a capstone", capstone_description: "Look, here is a capstone", capstone_url: "LookACapstone.com", capstone_screenshot: "look_its_a_capstone.url", student_id: 3)

Capstone.create!(capstone_name: "Decent capstone", capstone_description: "Tiny bit proud of my decent capstone", capstone_url: "DecentCapstone.com", capstone_screenshot: "a_decent_capstone.url", student_id: 4)

Capstone.create!(capstone_name: "Badass capstone", capstone_description: "The most badass capstone ever", capstone_url: "BadassCapstone.com", capstone_screenshot: "badass_capstone.url", student_id: 5)

Skill.create(
  student_id: rand(Student.ids.min..Student.ids.max),
  python: true,
  javascript: true,
  java: false,
  csharp: false,
  c: true,
  cplus: false,
  go: false,
  r: true,
  swift: true,
  php: true,
  other: "other languages",
)
Skill.create(
  student_id: rand(Student.ids.min..Student.ids.max),
  python: true,
  javascript: true,
  java: false,
  csharp: false,
  c: true,
  cplus: false,
  go: false,
  r: true,
  swift: true,
  php: true,
  other: "other languages",
)
Skill.create(
  student_id: rand(Student.ids.min..Student.ids.max),
  python: true,
  javascript: true,
  java: false,
  csharp: false,
  c: true,
  cplus: false,
  go: false,
  r: true,
  swift: true,
  php: true,
  other: "other languages",
)
Skill.create(
  student_id: rand(Student.ids.min..Student.ids.max),
  python: true,
  javascript: true,
  java: false,
  csharp: false,
  c: true,
  cplus: false,
  go: false,
  r: true,
  swift: true,
  php: true,
  other: "other languages",
)
Skill.create(
  student_id: rand(Student.ids.min..Student.ids.max),
  python: true,
  javascript: true,
  java: false,
  csharp: false,
  c: true,
  cplus: false,
  go: false,
  r: true,
  swift: true,
  php: true,
  other: "other languages",
)

Experience.create!(student_id: 5, start_date: "02-20-2023", end_date: "05-24-2023", job_title: "TA", company_name: "Actualize", details: "Teaching assistant for Actualize!")

Experience.create!(student_id: 4, start_date: "05-20-2017", end_date: "05-24-2019", job_title: "Manager", company_name: "Arby's", details: "Ran that bitch like the Navy.")

Experience.create!(student_id: 3, start_date: "07-04-1976", end_date: "07-4-2016", job_title: "Soup Tester", company_name: "Panera", details: "I taste the soups.")

Experience.create!(student_id: 2, start_date: "04-08-2004", end_date: "02-20-2017", job_title: "Airline Pilot", company_name: "Southwest", details: "I did a barrel roll and got fired.")

Experience.create!(student_id: 1, start_date: "08-14-2012", end_date: "12-07-2018", job_title: "Owner", company_name: "Netflix", details: "I owned Netflix and lost it in a bet for half a sandwich and $11")

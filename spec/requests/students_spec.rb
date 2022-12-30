require "rails_helper"

RSpec.describe "Students", type: :request do
  describe "POST /students" do
    it "Should return Successfully Signed up" do
      # jwt = JWT.encode(
      #   { student_id: student.id },
      #   Rails.application.credentials.fetch(:secret_key_base),
      #   "HS256"
      # )
      student = Student.create!(first_name: "Sara", last_name: "Raley", email: "sr@example.com", phone_number: "123-445-4789", short_bio: "present", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/10/skateman-by-neal-adams.jpg?q=50&fit=crop&w=750&dpr=1.5", personal_website_url: "sara.com", password: "password", password_confirmation: "password")
      Student.create!(first_name: "Connor", last_name: "La Rocca", email: "conehead@example.com", phone_number: "123-445-4789", short_bio: " Hello. Hire me. ", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://static.wikia.nocookie.net/neoencyclopedia/images/0/0e/MermaidMan.png/revision/latest?cb=20121028093748", personal_website_url: "connor.com", password: "password", password_confirmation: "password")
      Student.create!(first_name: "Hannah", last_name: "Kehoe", email: "hannah@example.com", phone_number: "123-445-4789", short_bio: "Hello, I am Hannah. I am a baby Software Developer", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", online_resume_url: "resume.com", github_url: "github.com", photo_url: "https://listverse.com/wp-content/uploads/2020/05/iu-40.jpeg", personal_website_url: "hannah.com", password: "password", password_confirmation: "password")
      # student = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      # expect(student).to eq("Succesfully Signed up")
    end
  end
end

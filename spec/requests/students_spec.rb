require "rails_helper"

RSpec.describe "Students", type: :request do
  describe "GET /students" do
    it "works! (now write some real specs)" do
      Student.create!(
        first_name: "steven",
        last_name: "Metz",
        email: "steven@test",
        phone_number: "123-456-6789",
        short_bio: "hello hello",
        linkedin_url: "linkedin.com",
        twitter_handle: "twitter.com",
        online_resume_url: "steven.com",
        github_url: "github.com",
        photo_url: "photo.com",
        personal_website_url: "steven.com", password: "password",
      )
      Student.create!(
        first_name: "steven",
        last_name: "Metz",
        email: "blob@test",
        phone_number: "123-456-6789",
        short_bio: "hello hello",
        linkedin_url: "linkedin.com",
        twitter_handle: "twitter.com",
        online_resume_url: "steven.com",
        github_url: "github.com",
        photo_url: "photo.com",
        personal_website_url: "steven.com", password: "password",
      )
      Student.create!(
        first_name: "steven",
        last_name: "Metz",
        email: "example@test",
        phone_number: "123-456-6789",
        short_bio: "hello hello",
        linkedin_url: "linkedin.com",
        twitter_handle: "twitter.com",
        online_resume_url: "steven.com",
        github_url: "github.com",
        photo_url: "photo.com",
        personal_website_url: "steven.com", password: "password",
      )
      # student = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      # expect(student.length).to eq(3)
    end
  end
end

require 'rails_helper'

RSpec.feature "Creating Articles" do
	scenario "A user creatis a new article" do
		# For this scenario, you need to go first to a URL
		visit "/"
		
		# Then you click a link to go to create a new article
		click_link "New Article"
		
		fill_in "Title", with: "Creating first article"
		fill_in "Body", with: "Lorem Ipsum"
		click_button "Create Article"
		
		expect(page).to have_content("Article has been created")
		# The current path of the page is going to be the articles_path
		expect(page.current_path).to eq(articles_path)
	end
end
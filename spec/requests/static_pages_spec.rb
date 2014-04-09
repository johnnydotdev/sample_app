require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Sample App')
    end
	  it "should ahve hte right title" do
	  	visit '/static_pages/home'
	  	page.should have_selector('title', :text => "RoR Tutorial Sample")
	  end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => " | Home")
    end
  end
  describe "Help page" do
  	it "should ahve hte content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end
	  it "should ahve hte right title" do
	  	visit '/static_pages/help'
	  	page.should have_selector('title', :text => " | Help")
	  end
  end
  describe "About page" do
  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => "About Us")
	end
	  it "should ahve hte right title" do
	  	visit '/static_pages/about'
	  	page.should have_selector('title', :text => " | About Us")
	end
  end
end

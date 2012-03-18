require 'spec_helper'

describe "Static Pages" do
  
  describe "Home page" do

  	it "should have the content 'RainTexts'" do
  		visit '/static_pages/home'
  		page.should have_content('RainTexts')
  	end

  	it "should have the title 'RainTexts | Home'" do
  		visit '/static_pages/home'
  		page.should have_selector('title', :text => "RainTexts | Home")
  	end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

  	it "should have the title 'RainTexts | Help" do
  		visit '/static_pages/help'
  		page.should have_selector('title', :text => "RainTexts | Help")
  	end
  end
end
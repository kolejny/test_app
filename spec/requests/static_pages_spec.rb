require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'DUPA'" do
      visit '/static_pages/home'
      expect(page).to have_content('DUPA')
    end
  end

  describe "About page" do

    it "should have the content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About us')
    end
  end

  it "should have the right title" do
    visit '/static_pages/home'
    expect(page).to have_title("Dupa | Home")
  end
end

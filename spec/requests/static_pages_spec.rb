require 'spec_helper'

describe "Static pages" do

  describe "Blog page" do

    it "should have the content 'Blog'" do
      visit '/static_pages/blog'
      expect(page).to have_content('Blog')
    end
  end

  describe "Faq page" do

    it "should have the content 'FAQ'" do
      visit '/static_pages/faq'
      expect(page).to have_content('FAQ')
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end
  
  it "should have the right links on the layout" do
      visit about_path
      click_link "faq"
      expect(page).to have_content('FAQ')
      click_link "blog"
      expect(page).to have_content('Blog')
      click_link "about"
      expect(page).to have_content('About')
    end
  
end
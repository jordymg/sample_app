<<<<<<< HEAD
# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
=======
>>>>>>> filling-in-layout
require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
<<<<<<< HEAD

  subject {page}

  describe "Home Page" do
    before { visit root_path }

    it { page.should have_selector('h1', text: 'Sample App') }
    it { page.should have_selector('title', text: full_title('')) }
    it { page.should_not have_selector('title', text: full_title('| Home')) }
  end

  describe "Help Page" do
    before { visit help_path }

    it { page.should have_selector('h1', text: 'Help') }
    it { page.should have_selector('title', text: full_title('Help')) }
  end

  describe "About Page" do
    before { visit about_path }

    it { page.should have_selector('h1', text: 'About Us') }
    it { page.should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { page.should have_selector('h1', text: 'Contact')}
    it { page.should have_selector('title', text: full_title('Contact')) }
=======
  describe "Home Page" do

    it "should have the h1 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help Page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text => "#{base_title} | About Us")
    end
  end

  describe "Contact Page" do
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end

>>>>>>> filling-in-layout
  end

end

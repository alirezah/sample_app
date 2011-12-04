require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Contact page at '/Contact'" do
    get '/Contact'
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have a About page at '/About'" do
    get '/About'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Help page at '/Help'" do
    get '/Help'
    response.should have_selector('title', :content => "Help")
  end
end

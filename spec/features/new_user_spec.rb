require 'spec_helper'

describe "a new user visits the site" do
  it "should say Registry App" do
    visit root_path
    expect( page ).to have_content("Registry App")
  end
end
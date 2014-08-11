require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"

    click_on "About"
    expect(page).to have_content "Not much to say here."

  end

  scenario "User can create new gif" do
    visit "/"
    click_on "New gif"
    fill_in('URL', :with => 'https://31.media.tumblr.com/6eec557e0b774e70abd5195f07484b53/tumblr_inline_n9m2pgagNU1r79k32.gif')
    fill_in('Title', :with => 'Silly Owls')
    click_on "Create gif"
    expect(page).to have_content "gif created successfully"
    expect(page).to have_content "Silly Owls"


  end
end

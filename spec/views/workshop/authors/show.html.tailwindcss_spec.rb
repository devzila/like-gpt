require 'rails_helper'

RSpec.describe "workshop/authors/show", type: :view do
  before(:each) do
    assign(:workshop_author, Workshop::Author.create!(
      first_name: "First Name",
      last_name: "Last Name",
      bio: "MyText",
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Email/)
  end
end

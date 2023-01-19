require 'rails_helper'

RSpec.describe "workshop/authors/new", type: :view do
  before(:each) do
    assign(:workshop_author, Workshop::Author.new(
      first_name: "MyString",
      last_name: "MyString",
      bio: "MyText",
      email: "MyString"
    ))
  end

  it "renders new workshop_author form" do
    render

    assert_select "form[action=?][method=?]", workshop_authors_path, "post" do

      assert_select "input[name=?]", "workshop_author[first_name]"

      assert_select "input[name=?]", "workshop_author[last_name]"

      assert_select "textarea[name=?]", "workshop_author[bio]"

      assert_select "input[name=?]", "workshop_author[email]"
    end
  end
end

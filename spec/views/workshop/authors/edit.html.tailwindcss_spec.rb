require 'rails_helper'

RSpec.describe "workshop/authors/edit", type: :view do
  let(:workshop_author) {
    Workshop::Author.create!(
      first_name: "MyString",
      last_name: "MyString",
      bio: "MyText",
      email: "MyString"
    )
  }

  before(:each) do
    assign(:workshop_author, workshop_author)
  end

  it "renders the edit workshop_author form" do
    render

    assert_select "form[action=?][method=?]", workshop_author_path(workshop_author), "post" do

      assert_select "input[name=?]", "workshop_author[first_name]"

      assert_select "input[name=?]", "workshop_author[last_name]"

      assert_select "textarea[name=?]", "workshop_author[bio]"

      assert_select "input[name=?]", "workshop_author[email]"
    end
  end
end

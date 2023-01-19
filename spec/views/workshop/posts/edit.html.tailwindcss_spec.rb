require 'rails_helper'

RSpec.describe "workshop/posts/edit", type: :view do
  let(:workshop_post) {
    Workshop::Post.create!(
      title: "MyString",
      body: "MyText",
      author: "MyString",
      slug: "MyString"
    )
  }

  before(:each) do
    assign(:workshop_post, workshop_post)
  end

  it "renders the edit workshop_post form" do
    render

    assert_select "form[action=?][method=?]", workshop_post_path(workshop_post), "post" do

      assert_select "input[name=?]", "workshop_post[title]"

      assert_select "textarea[name=?]", "workshop_post[body]"

      assert_select "input[name=?]", "workshop_post[author]"

      assert_select "input[name=?]", "workshop_post[slug]"
    end
  end
end

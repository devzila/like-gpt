require 'rails_helper'

RSpec.describe "workshop/posts/new", type: :view do
  before(:each) do
    assign(:workshop_post, Workshop::Post.new(
      title: "MyString",
      body: "MyText",
      author: "MyString",
      slug: "MyString"
    ))
  end

  it "renders new workshop_post form" do
    render

    assert_select "form[action=?][method=?]", workshop_posts_path, "post" do

      assert_select "input[name=?]", "workshop_post[title]"

      assert_select "textarea[name=?]", "workshop_post[body]"

      assert_select "input[name=?]", "workshop_post[author]"

      assert_select "input[name=?]", "workshop_post[slug]"
    end
  end
end

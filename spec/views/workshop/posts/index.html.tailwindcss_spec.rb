require 'rails_helper'

RSpec.describe "workshop/posts/index", type: :view do
  before(:each) do
    assign(:workshop_posts, [
      Workshop::Post.create!(
        title: "Title",
        body: "MyText",
        author: "Author",
        slug: "Slug"
      ),
      Workshop::Post.create!(
        title: "Title",
        body: "MyText",
        author: "Author",
        slug: "Slug"
      )
    ])
  end

  it "renders a list of workshop/posts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Author".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
  end
end

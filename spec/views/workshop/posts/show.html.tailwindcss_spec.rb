require 'rails_helper'

RSpec.describe "workshop/posts/show", type: :view do
  before(:each) do
    assign(:workshop_post, Workshop::Post.create!(
      title: "Title",
      body: "MyText",
      author: "Author",
      slug: "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Slug/)
  end
end

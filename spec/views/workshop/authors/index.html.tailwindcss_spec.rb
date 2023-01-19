require 'rails_helper'

RSpec.describe "workshop/authors/index", type: :view do
  before(:each) do
    assign(:workshop_authors, [
      Workshop::Author.create!(
        first_name: "First Name",
        last_name: "Last Name",
        bio: "MyText",
        email: "Email"
      ),
      Workshop::Author.create!(
        first_name: "First Name",
        last_name: "Last Name",
        bio: "MyText",
        email: "Email"
      )
    ])
  end

  it "renders a list of workshop/authors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end

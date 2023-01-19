require 'rails_helper'

RSpec.describe "workshop/categories/index", type: :view do
  before(:each) do
    assign(:workshop_categories, [
      Workshop::Category.create!(
        name: "Name",
        description: "Description",
        sequence: 2
      ),
      Workshop::Category.create!(
        name: "Name",
        description: "Description",
        sequence: 2
      )
    ])
  end

  it "renders a list of workshop/categories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end

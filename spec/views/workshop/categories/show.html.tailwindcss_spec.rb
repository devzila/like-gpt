require 'rails_helper'

RSpec.describe "workshop/categories/show", type: :view do
  before(:each) do
    assign(:workshop_category, Workshop::Category.create!(
      name: "Name",
      description: "Description",
      sequence: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
  end
end

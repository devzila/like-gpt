require 'rails_helper'

RSpec.describe "workshop/categories/edit", type: :view do
  let(:workshop_category) {
    Workshop::Category.create!(
      name: "MyString",
      description: "MyString",
      sequence: 1
    )
  }

  before(:each) do
    assign(:workshop_category, workshop_category)
  end

  it "renders the edit workshop_category form" do
    render

    assert_select "form[action=?][method=?]", workshop_category_path(workshop_category), "post" do

      assert_select "input[name=?]", "workshop_category[name]"

      assert_select "input[name=?]", "workshop_category[description]"

      assert_select "input[name=?]", "workshop_category[sequence]"
    end
  end
end

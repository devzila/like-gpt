require 'rails_helper'

RSpec.describe "workshop/categories/new", type: :view do
  before(:each) do
    assign(:workshop_category, Workshop::Category.new(
      name: "MyString",
      description: "MyString",
      sequence: 1
    ))
  end

  it "renders new workshop_category form" do
    render

    assert_select "form[action=?][method=?]", workshop_categories_path, "post" do

      assert_select "input[name=?]", "workshop_category[name]"

      assert_select "input[name=?]", "workshop_category[description]"

      assert_select "input[name=?]", "workshop_category[sequence]"
    end
  end
end

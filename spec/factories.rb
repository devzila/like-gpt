FactoryBot.define do
  factory :post, class: 'Post' do
    title { "MyString" }
    body { "MyText" }
    author { "MyString" }
    slug { "MyString" }
  end

  factory :author, class: 'Author' do
    first_name { "MyString" }
    last_name { "MyString" }
    bio { "MyText" }
    email { "MyString" }
  end

  factory :category, class: 'Category' do
    name { "MyString" }
    description { "MyString" }
  end
end
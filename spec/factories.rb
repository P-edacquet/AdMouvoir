FactoryBot.define do
  factory :reference do
    name { "MyString" }
    url { "MyString" }
  end
  
  factory :post do
    title { "MyString" }
    content { "MyString" }
    category { "MyString" }
    document { false }
  end


end
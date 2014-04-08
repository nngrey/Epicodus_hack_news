# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link, :class => Link do
    name ""
    url ""
  end

  factory :link_with_info, :class => Link do
    name "new link"
    url "www.yahoo.com"
    id 3
  end

   factory :link_with_id, :class => Link do
    name "new link"
    url "www.yahoo.com"
    id 3
  end

end

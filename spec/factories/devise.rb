FactoryBot.define do
  factory :user do
    id {1}
    email {"test@user.com"}
    username {"The Great Testini"}
    password {"123456"}
    # Add additional fields as required via your User model
  end

  factory :hill do
    id {1}
    name {"Snowdon/Yr Wyddfa"}
    latitude {53.0685}
    longitude {-4.0763}
    height {1085}
    country {"Wales"}
    range {"Snowdon"}
    # Add additional fields as required via your User model
  end
  # Not used in this tutorial, but left to show an example of different user types
  # factory :admin do
  #   id {2}
  #   email {"test@admin.com"}
  #   password {"qwerty"}
  #   admin {true}
  # end
end

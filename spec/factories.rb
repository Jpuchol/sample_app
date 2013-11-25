FactoryGirl.define do
  factory :user do
    name     "Julien Puchol"
    email    "julien@puchol.fr"
    password "foobar"
    password_confirmation "foobar"
  end
end
FactoryGirl.define do
  factory :note do |n|
    # n.id 234
    n.image "boat.png"
    n.title "my vacation"
    n.content "This is what I did."
  end
end
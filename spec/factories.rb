FactoryGirl.define do
  factory :spree_snippet, class: Spree::Snippet do
    sequence(:slug) {|n| "snippet#{n}" }
    content "Some content"
  end
end

FactoryBot.define do
  # Define your Spree extensions Factories within this file to enable applications, and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'spree_snippets/factories'

  factory :spree_snippet, class: Spree::Snippet do
    sequence(:slug) {|n| "snippet#{n}" }
    content { "Some content" }
  end

end

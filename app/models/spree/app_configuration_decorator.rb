Spree::AppConfiguration.class_eval do
  preference :snippets_raise_on_missing, :boolean, default: true
end

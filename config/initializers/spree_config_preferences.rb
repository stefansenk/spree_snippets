Rails.application.config.to_prepare do
  Spree::Config.class_eval do
    preference :snippets_raise_on_missing, :boolean, default: true
  end
end

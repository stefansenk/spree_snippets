if defined? Spree::UserSessionsController
  Spree::UserSessionsController.class_eval do
    helper Spree::SnippetHelper
  end
end

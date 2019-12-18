module Spree::StoreControllerDecorator
  if defined? Spree::StoreController
    Spree::StoreController.helper Spree::SnippetHelper
  end
end

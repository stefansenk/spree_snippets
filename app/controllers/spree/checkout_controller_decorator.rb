module Spree::CheckoutControllerDecorator
  if defined? Spree::CheckoutController
    Spree::CheckoutController.helper Spree::SnippetHelper
  end
end

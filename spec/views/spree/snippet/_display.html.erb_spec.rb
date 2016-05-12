require 'spec_helper'

describe "spree/snippets/_snippet.html.erb" do

  let(:snippet) { FactoryGirl.create :spree_snippet, content: "Da Content" }

  context "display" do

    it "should display the snippet content" do
      @snippet = snippet
      render :partial => "spree/snippets/snippet"
      expect(response).to include("Da Content")
    end

  end

end

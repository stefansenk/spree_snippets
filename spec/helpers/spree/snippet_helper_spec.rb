require 'spec_helper'

describe Spree::SnippetHelper do
  include Spree::SnippetHelper

  describe "render_text_snippet" do

    before :each do
      Spree::Config.snippets_raise_on_missing = true
      @snippet = FactoryBot.create :spree_snippet, slug: "foo", content: "<h1>Test Content</h1>"
    end

    it "should return snippet content from an id" do
      expect(render_text_snippet(@snippet.id)).to include"<h1>Test Content</h1>"
    end

    it "should return snippet content from a slug" do
      expect(render_text_snippet('foo')).to include "<h1>Test Content</h1>"
    end

    it "should return snippet content from the object" do
      expect(render_text_snippet(@snippet)).to include "<h1>Test Content</h1>"
    end

    it "should include a div with the snippet id" do
      expect(render_text_snippet(@snippet)).to eq("<div id=\"snippet_#{@snippet.id}\"><h1>Test Content</h1></div>\n")
    end

    it "should raise an exception for an invalid object" do
      lambda { render_text_snippet(Array.new) }.should raise_error
    end

    it "should raise an exception for an invalid id" do
      lambda { render_text_snippet(99999999) }.should raise_error
    end

    it "should raise an exception for and invalid slug" do
      lambda { render_text_snippet("this-slug-does-not-exist") }.should raise_error
    end

    context "when ignoring missing snippets" do
      before do
        Spree::Config.snippets_raise_on_missing = false
      end
      it "should not raise an exception for an invalid slug" do
        lambda { render_text_snippet("this-slug-does-not-exist") }.should_not raise_error
      end
    end

  end
end

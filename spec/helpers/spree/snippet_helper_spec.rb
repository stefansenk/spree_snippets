require 'spec_helper'
require 'spree/snippets_configuration_decorator'

include Spree::SnippetHelper

describe Spree::SnippetHelper do

  describe "render_text_snippet" do

    before(:each) do
      Spree::Snippet.destroy_all
      Spree::Config.snippets_raise_on_missing = true
      @snippet = Spree::Snippet.create!(:slug => "foo", :content => "<h1>Test Snippet Content</h1>")
    end

    after(:each) do
      @snippet.nil? or @snippet.destroy
    end

    describe "when a valid snippet id is passed" do
      it "should return snippet content rendered through the snippet/display partial" do
        result = render_text_snippet(@snippet.id)
        result.should eql("<div id=\"snippet_#{@snippet.id}\"><h1>Test Snippet Content</h1></div>\n")
       end
    end

    describe "when a valid snippet slug is passed" do
      it "should return snippet content rendered through the snippet/display partial" do
        result = render_text_snippet(@snippet.slug)
        result.should eql("<div id=\"snippet_#{@snippet.id}\"><h1>Test Snippet Content</h1></div>\n")
      end
    end

    describe "when an object that responds to .id and .content is passed" do
      it "should return snippet content rendered through the snippet/display partial" do
        result = render_text_snippet(@snippet)
        result.should eql("<div id=\"snippet_#{@snippet.id}\"><h1>Test Snippet Content</h1></div>\n")
      end
    end

    describe "when an invalid object is passed" do
      it "should raise an exception" do
        lambda { render_text_snippet(Array.new) }.should raise_error
      end
    end

    describe "when a nonexistent id is passed" do
      it "should raise an exception" do
        lambda { render_text_snippet(99999999) }.should raise_error
      end
    end

    describe "when a nonexistent slug is passed" do
      it "should raise an exception" do
        lambda { render_text_snippet("this-slug-does-not-exist") }.should raise_error
      end
    end

    describe "when an invalid object is passed" do
      it "should raise an exception" do
        Spree::Config.snippets_raise_on_missing = false
        lambda { render_text_snippet("this-slug-does-not-exist") }.should_not raise_error
      end
    end

  end
end

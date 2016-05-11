Spree Snippets
==============

[![Build Status](https://travis-ci.org/stefansenk/spree_snippets.svg?branch=master)](https://travis-ci.org/stefansenk/spree_snippets)

Admin configurable chunks of content that can be rendered in any view via the SnippetsHelper#render_text_snippet method.


Synopsis
--------

    <%# in a view %>
    ...
    <%= render_text_snippet('slug-name') %>
    ...
    <%= render_text_snippet(@snippet_object) %>
    ...
    <% snippet_id = 26 %>
    <%= render_text_snippet(snippet_id) %>

Installation
------------

Add to Gemfile:

    gem 'spree_snippets', github: 'stefansenk/spree_snippets', branch: 'master'

Run:

    bundle install
    bundle exec rails generate spree_snippets:install
    bundle exec rake db:migrate

Snippet Admin
-------------

1. Login to the Administration Console
2. Click on the Configuration Tab
3. Click on the Snippets link

Testing
------------

1. bundle exec rake test_app
2. bundle exec rake

Or

2. bundle exec rspec spec/models/spree/snippet_spec.rb for test individual file

Snippet Settings
----------------

To enable exceptions on missing snippets, set

    Spree::Config.snippets_raise_on_missing = true

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'spree_snippets'
  s.version = '3.1.0'
  s.summary = 'Admin configurable static content for CMS control over specific sections of a view'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author = 'Christopher Maujean'
  s.email = 'cmaujean@gmail.com'
  s.homepage = 'http://github.com/stefansenk/spree_snippets'
  s.rubyforge_project = 'spree_snippets'

  s.files = Dir['README.markdown', 'LICENSE', 'lib/**/*', 'app/**/*', 'config/**/*', 'db/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency 'spree_core', '~> 3'
  # s.add_dependency 'spree_editor', "~> 3.0.0"

  s.add_development_dependency 'factory_girl_rails', '~> 4.7.0'
  s.add_development_dependency 'rspec-rails', '~> 2.0' # TODO update to 3.0
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'coffee-rails', '~> 4.1.0'
  s.add_development_dependency 'therubyracer'

end

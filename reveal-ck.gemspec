$LOAD_PATH.push File.expand_path('lib', __dir__)
require File.join([File.dirname(__FILE__), 'lib', 'reveal-ck', 'version.rb'])

Gem::Specification.new do |s|
  s.date = '2020-02-16'
  s.required_ruby_version = '>= 2.5'
  s.name        = 'reveal-ck'
  s.version     = RevealCK::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Jed Northridge']
  s.email       = ['reveal-ck@jedcn.com']
  s.homepage    = 'https://github.com/jedcn/reveal-ck'
  s.summary     = 'Create reveal.js presentations with Markdown.'
  s.description =
    'A cli for generating reveal.js presentations from markdown.'
  #
  # Runtime Dependencies
  s.add_dependency 'docile'
  s.add_dependency 'gemoji'
  s.add_dependency 'gli'
  s.add_dependency 'guard'
  s.add_dependency 'guard-livereload'
  s.add_dependency 'haml'
  s.add_dependency 'html-pipeline'
  s.add_dependency 'kramdown'
  s.add_dependency 'kramdown-parser-gfm'
  s.add_dependency 'listen'
  s.add_dependency 'rack'
  s.add_dependency 'rack-livereload'
  s.add_dependency 'rake'
  s.add_dependency 'rinku'
  s.add_dependency 'slim'
  s.add_dependency 'thor'
  s.add_dependency 'tilt'

  #
  # Development Dependencies
  s.add_development_dependency 'activesupport'
  s.add_development_dependency 'aruba'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'nokogiri'
  s.add_development_dependency 'relish'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'

  files = {
    core: %w[LICENSE Rakefile Gemfile],
    supporting: Dir.glob('files/**/*'),
    lib: `git ls-files lib`.split("\n"),
    rakelib: `git ls-files rakelib`.split("\n")
  }

  s.files         = files[:core] + files[:lib] + files[:rakelib] +
                    files[:supporting]
  s.test_files    = `git ls-files -- {spec,features}/**/*`.split("\n")
  s.executables   = ['reveal-ck']
  s.require_paths = ['lib']
  s.extra_rdoc_files = [
    'LICENSE',
    'README.md'
  ]
  s.licenses = ['MIT']
end

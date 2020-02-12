# frozen_string_literal: true

require_relative 'lib/blank_gem/version'

Gem::Specification.new do |spec|
  spec.name = 'blank_gem'
  spec.version = BlankGem::VERSION
  spec.authors = ['Jim Myhrberg']
  spec.email = ['contact@jimeh.me']

  spec.summary = 'A blank/empty Ruby gem that does nothing.'
  spec.description = 'A blank/empty Ruby gem that does nothing. Useful for ' \
                     'testing that only specific Bundler groups are loaded ' \
                     'when using a dummy group.'
  spec.homepage = 'https://github.com/jimeh/blank_gem'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.0.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  spec.files = Dir.glob('lib/**/*') + [
    'CHANGELOG.md',
    'Gemfile',
    'LICENSE',
    'README.md',
    'Rakefile',
    'VERSION'
  ]
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end

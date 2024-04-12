# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara/playwright/version'

Gem::Specification.new do |spec|
  spec.name          = 'capybara-playwright-driver'
  spec.version       = Capybara::Playwright::VERSION

  spec.authors       = ['YusukeIwaki']
  spec.email         = ['q7w8e9w8q7w8e9@yahoo.co.jp']

  spec.summary       = 'Playwright driver for Capybara'
  spec.homepage      = 'https://github.com/YusukeIwaki/capybara-playwright-driver'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/}) || f.include?('.git')
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.4'
  spec.add_dependency 'addressable'
  # 3.0 未満を指定する
  spec.add_dependency 'capybara', '< 3.0'
  spec.add_dependency 'playwright-ruby-client', '>= 1.16.0'
  spec.add_development_dependency 'allure-rspec'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'launchy', '>= 2.0.4'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rack-test_server'
  spec.add_development_dependency 'rake', '~> 13.0.3'
  spec.add_development_dependency 'rspec', '~> 3.11.0'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'sinatra', '>= 1.4.0'
  spec.add_development_dependency 'webrick'
end

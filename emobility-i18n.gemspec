# -*- encoding: utf-8 -*-
# stub: emobility-i18n 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "emobility-i18n".freeze
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adrian Serafin".freeze, "Clemens Kofler".freeze]
  s.date = "2016-05-09"
  s.description = "".freeze
  s.email = ["abusiek@gmail.com".freeze, "clemens@railway.at".freeze]
  s.files = [".gitignore".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "emobility-i18n.gemspec".freeze, "lib/emobility-i18n.rb".freeze, "lib/emobility-i18n/backend/emobility.rb".freeze, "lib/emobility-i18n/backend/emobility_key_value.rb".freeze, "lib/emobility-i18n/backend/global_scope.rb".freeze, "lib/emobility-i18n/backend/global_scope_prefix.rb".freeze, "lib/emobility-i18n/backend/key_prefix.rb".freeze, "lib/emobility-i18n/backend/markdown.rb".freeze, "lib/emobility-i18n/default_options.rb".freeze, "lib/emobility-i18n/with_i18n_options.rb".freeze, "lib/version.rb".freeze, "spec/backend/emobility_key_value_spec.rb".freeze, "spec/backend/emobility_spec.rb".freeze, "spec/backend/global_scope_prefix_spec.rb".freeze, "spec/backend/global_scope_spec.rb".freeze, "spec/backend/key_prefix_spec.rb".freeze, "spec/backend/markdown_spec.rb".freeze, "spec/helpers.rb".freeze, "spec/shared/shared_examples_for_cascading_backend.rb".freeze, "spec/spec_helper.rb".freeze, "spec/support/fakeredis.rb".freeze, "spec/support/shared_examples_for_cascading_backend.rb".freeze, "spec/with_i18n_options_spec.rb".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.2".freeze
  s.summary = "i18n tools for the eMobility project.".freeze
  s.test_files = ["spec/backend/emobility_key_value_spec.rb".freeze, "spec/backend/emobility_spec.rb".freeze, "spec/backend/global_scope_prefix_spec.rb".freeze, "spec/backend/global_scope_spec.rb".freeze, "spec/backend/key_prefix_spec.rb".freeze, "spec/backend/markdown_spec.rb".freeze, "spec/helpers.rb".freeze, "spec/shared/shared_examples_for_cascading_backend.rb".freeze, "spec/spec_helper.rb".freeze, "spec/support/fakeredis.rb".freeze, "spec/support/shared_examples_for_cascading_backend.rb".freeze, "spec/with_i18n_options_spec.rb".freeze]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<redcarpet>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<cached_key_value_store>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<redis>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<fakeredis>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<i18n>.freeze, [">= 0"])
      s.add_dependency(%q<redcarpet>.freeze, [">= 0"])
      s.add_dependency(%q<cached_key_value_store>.freeze, [">= 0"])
      s.add_dependency(%q<redis>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<fakeredis>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<i18n>.freeze, [">= 0"])
    s.add_dependency(%q<redcarpet>.freeze, [">= 0"])
    s.add_dependency(%q<cached_key_value_store>.freeze, [">= 0"])
    s.add_dependency(%q<redis>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<fakeredis>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end

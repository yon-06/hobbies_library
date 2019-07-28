# -*- encoding: utf-8 -*-
# stub: annotate_models 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "annotate_models".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nathan Brazil".freeze]
  s.date = "2018-07-27"
  s.description = "This is my own re-write of an earlier version https://github.com/ctran/annotate_models when work on it waned.\n    This work started out as an old-style Rails plugin; I am now re-bundling it as a gem-ified plugin.".freeze
  s.email = "nb@bitaxis.com".freeze
  s.homepage = "https://github.com/bitaxis/annotate_models.git".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "Simple gem that adds several rake tasks to annotate Rails source files with model schema.".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    else
      s.add_dependency(%q<yard>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<yard>.freeze, [">= 0"])
  end
end

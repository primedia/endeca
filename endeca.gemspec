# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + '/lib/endeca'

Gem::Specification.new do |s|
  s.name = %q{endeca}
  s.version = Endeca::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Primedia Team"]
  s.date = Date.today.to_s
  s.email = %q{}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "Manifest.txt",
    "README.rdoc",
    "Rakefile",
    "endeca.gemspec",
    ".rspec",
    "example/benchmark.rb",
    "example/listing.rb",
    "lib/core_ext.rb",
    "lib/endeca.rb",
    "lib/endeca/benchmarking.rb",
    "lib/endeca/breadcrumb.rb",
    "lib/endeca/breadcrumbs.rb",
    "lib/endeca/dimension.rb",
    "lib/endeca/document.rb",
    "lib/endeca/document_collection.rb",
    "lib/endeca/logging.rb",
    "lib/endeca/map.rb",
    "lib/endeca/readers.rb",
    "lib/endeca/refinement.rb",
    "lib/endeca/refinement_dimension.rb",
    "lib/endeca/request.rb",
    "lib/endeca/transformer.rb",
    "spec/core_ext_spec.rb",
    "spec/endeca/benchmarking_spec.rb",
    "spec/endeca/breadcrumb_spec.rb",
    "spec/endeca/dimension_spec.rb",
    "spec/endeca/document_collection_spec.rb",
    "spec/endeca/document_spec.rb",
    "spec/endeca/logging_spec.rb",
    "spec/endeca/map_spec.rb",
    "spec/endeca/readers_spec.rb",
    "spec/endeca/refinement_dimension_spec.rb",
    "spec/endeca/refinement_spec.rb",
    "spec/endeca/request_spec.rb",
    "spec/endeca/transformer_spec.rb",
    "spec/endeca_spec.rb",
    "spec/rcov.opts",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/primedia/endeca-ruby}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Endeca adapter for use with the Endeca Bridge}
  s.test_files = [
    "spec/core_ext_spec.rb",
    "spec/endeca/benchmarking_spec.rb",
    "spec/endeca/breadcrumb_spec.rb",
    "spec/endeca/dimension_spec.rb",
    "spec/endeca/document_collection_spec.rb",
    "spec/endeca/document_spec.rb",
    "spec/endeca/logging_spec.rb",
    "spec/endeca/map_spec.rb",
    "spec/endeca/readers_spec.rb",
    "spec/endeca/refinement_dimension_spec.rb",
    "spec/endeca/refinement_spec.rb",
    "spec/endeca/request_spec.rb",
    "spec/endeca/transformer_spec.rb",
    "spec/endeca_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<curb>, [">= 0.8.6"])
      s.add_runtime_dependency(%q<yajl-ruby>, ["= 1.1.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<curb>, ["= 0.7.15"])
      s.add_dependency(%q<yajl-ruby>, ["= 1.1.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<curb>, ["= 0.7.15"])
    s.add_dependency(%q<yajl-ruby>, ["= 1.1.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end


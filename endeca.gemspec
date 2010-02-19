# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{endeca}
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Primedia Team"]
  s.date = %q{2010-02-19}
  s.email = %q{}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "Manifest.txt",
     "README.rdoc",
     "Rakefile",
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
     "spec/endeca/map_spec.rb",
     "spec/endeca/readers_spec.rb",
     "spec/endeca/refinement_dimension_spec.rb",
     "spec/endeca/refinement_spec.rb",
     "spec/endeca/request_spec.rb",
     "spec/endeca/transformer_spec.rb",
     "spec/endeca_spec.rb",
     "spec/rcov.opts",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/primedia/endeca-ruby}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Endeca adapter for use with the Endeca Bridge}
  s.test_files = [
    "spec/endeca_spec.rb",
     "spec/core_ext_spec.rb",
     "spec/endeca/document_collection_spec.rb",
     "spec/endeca/readers_spec.rb",
     "spec/endeca/request_spec.rb",
     "spec/endeca/transformer_spec.rb",
     "spec/endeca/breadcrumb_spec.rb",
     "spec/endeca/document_spec.rb",
     "spec/endeca/refinement_spec.rb",
     "spec/endeca/map_spec.rb",
     "spec/endeca/refinement_dimension_spec.rb",
     "spec/endeca/dimension_spec.rb",
     "spec/endeca/benchmarking_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end


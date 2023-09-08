Gem::Specification.new do |s|
  s.name        = "export_active_record"
  s.version     = "1.0.2"
  s.summary     = "Export Active Record"
  s.description = "a gem that is used to export the Active Record data into an Excel sheet or the CSV"
  s.authors     = ["Neeraj R"]
  s.email       = "violinistneeraj@gmail.com"
  s.platform    = Gem::Platform::RUBY
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.files       = ["lib/export_active_record.rb"]
  s.homepage    =
    "https://rubygems.org/gems/export_active_record"
  s.license       = "MIT"
  s.metadata    = { "source_code_uri" => "https://github.com/Neeraj546/export_active_record" }
  s.add_dependency 'axlsx'
end
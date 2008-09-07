Gem::Specification.new do |s|
  s.name     = "cardjour"
  s.version  = "0.1.0"
  s.date     = "2008-09-07"
  s.summary  = "Share business card (VCard) with others in LAN, using Bonjour"
  s.email    = "siu [dot] ying [at] reality [dot] hk"
  s.homepage = "http://www.reality.hk/cardjour"
  s.description = "Share business card (VCard) with others in LAN, using Bonjour."
  s.has_rdoc = true
  s.authors  = ["siuying"]
  s.files    = ["History.txt", 
		"Manifest.txt", 
		"README.txt", 
		"Rakefile", 
		"cardjour.gemspec", 
		"lib/cardjour.rb",
		"lib/cardjour/application.rb",
    "lib/cardjour/command/help.rb",
    "lib/cardjour/command/list.rb",
    "lib/cardjour/command/publish.rb",
    "lib/cardjour/service.rb",
    "lib/cardjour/version.rb"
  ]  
  s.test_files = []
  s.rdoc_options = ["--main", "README.txt"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.add_dependency("vpim", ["> 0.0.0"])
  s.add_dependency("net-mdns", ["> 0.0.0"])
end

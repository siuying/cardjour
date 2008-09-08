Gem::Specification.new do |s|
  s.name = %q{cardjour}
  s.version = "0.1.0"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["siuying"]
  s.date = %q{2008-09-08}
  s.default_executable = %q{cardjour}
  s.description = %q{Share business card (VCard) with others in LAN, using Bonjour}
  s.email = ["siu [dot] ying [at] reality [dot] hk"]
  s.executables = ["cardjour"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "website/index.txt"]
  s.files = [
    "History.txt", 
    "License.txt", 
    "Manifest.txt", 
    "PostInstall.txt", 
    "README.txt", 
    "Rakefile", 
    "bin/cardjour", 
    "config/hoe.rb", 
    "config/requirements.rb", 
    "lib/cardjour.rb", 
    "lib/cardjour/application.rb", 
    "lib/cardjour/command/help.rb", 
    "lib/cardjour/command/list.rb", 
    "lib/cardjour/command/publish.rb", 
    "lib/cardjour/service.rb", 
    "lib/cardjour/version.rb", 
    "script/console", 
    "script/destroy", 
    "script/generate", 
    "script/txt2html", 
    "setup.rb", 
    "tasks/deployment.rake", 
    "tasks/environment.rake", 
    "tasks/website.rake", 
    "test/test_cardjour.rb", 
    "test/test_helper.rb", 
    "website/index.html", 
    "website/index.txt", 
    "website/javascripts/rounded_corners_lite.inc.js", 
    "website/stylesheets/screen.css", 
    "website/template.html.erb"]
  s.has_rdoc = true
  s.homepage = %q{http://cardjour.rubyforge.org}
  s.post_install_message = %q{For more information on cardjour, see http://www.reality.hk/cardjour}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{cardjour}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Share business card (VCard) with others in LAN, using Bonjour}
  s.test_files = ["test/test_cardjour.rb", "test/test_helper.rb"]
  s.add_dependency("vpim", ">= 0.0.0")
  s.add_dependency("net-mdns", ">= 0.0.0")

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end


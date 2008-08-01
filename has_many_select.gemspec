Gem::Specification.new do |s|
  s.name = %q{has_many_select}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Oz\303\251ias Sant'ana"]
  s.date = %q{2008-08-01}
  s.description = %q{This gem set the problems with has_many in databases outside the standard.}
  s.email = ["oz.santana@gmail.com"]

  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/has_many_select.rb", "lib/has_many_select/associations.rb", "lib/has_many_select/has_many_association.rb", "lib/has_many_select/version.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_has_many_select.rb", "test/test_helper.rb", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.html.erb"]

  s.has_rdoc = true
  s.homepage = %q{http://github.com/ozsantana/has_many_select/}
  s.post_install_message = %q{
    For more information on has_many_select, see http://github.com/ozsantana/has_many_select/

    Then you must require the gem in your environment.rb
      require 'has_many_select'
  }
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]

  s.rubyforge_project = %q{has_many_select}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{This gem set the problems with has_many in databases outside the standard.}
  s.test_files = ["test/test_has_many_select.rb", "test/test_helper.rb"]
end

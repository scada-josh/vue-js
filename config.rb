###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do

  # Any files you want to ignore:
  ignore '/packages/symfony/finder/Tests/Fixtures/r%2Be.gex%5Bc%5Da%28r%29s/dir/bar.dat'

  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Use relative URLs
  activate :relative_assets


end


# config.rb
# Add bower's directory to sprockets asset path
after_configuration do
  #@bower_config = JSON.parse(IO.read("#{root}.bowerrc"))
  #sprockets.append_path File.join "#{root}", @bower_config["directory"]

  sprockets.append_path File.join "#{root}", "bower_components"
  sprockets.append_path File.join "#{root}", "source"
  #sprockets.import_asset 'jquery'
end
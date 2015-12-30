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

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
  set :sass, {
    :style => :nested
  }
  set :sass_assets_paths, []
end

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
  set :https, true
  set :sass, {
    :style => :compressed
  }
  set :sass_assets_paths, []

  activate :minify_javascript
  activate :minify_html, :remove_quotes => false, :remove_intertag_spaces => true
  activate :gzip
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch   = 'master'
end
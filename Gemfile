source :rubygems

# Project requirements
gem 'rake'
gem 'rack-flash'
gem 'thin' # or mongrel

# Component requirements
gem 'haml'
gem 'activerecord', :require => "active_record"
group :development do
  gem 'sqlite3-ruby', :require => "sqlite3"
end

group :production do
  gem 'mysql'
end

# Test requirements
gem 'rspec', :require => "spec", :group => "test"
gem 'rack-test', :require => "rack/test", :group => "test"


# Padrino
gem 'padrino', "0.9.14"

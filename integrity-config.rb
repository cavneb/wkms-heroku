require "rubygems"
gem "integrity"
require "integrity"

Integrity.config = {
  :base_uri         => 'http://wkms.heroku.com'
  :database_uri     => ENV["DATABASE_URL"],
  :export_directory => File.dirname(__FILE__) + "/tmp",
  :log              => File.dirname(__FILE__) + "/log/integrity.log",
  # Uncomment to setup a password
  # :admin_usenrame   => "admin",
  # :admin_password   => "foobar"
}

Integrity.new

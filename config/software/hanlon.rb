# This is an example software definition for a Ruby project.
#
# Lots of software definitions for popular open source software
# already exist in `opscode-omnibus`:
#
#  https://github.com/opscode/omnibus-software/tree/master/config/software
#
name "hanlon"
default_version "1.0.0"

dependency "ruby"
dependency "rubygems"
dependency "bundler"

source :git => "git://github.com/csc/Hanlon.git"

relative_path "hanlon"

build do
  env = with_standard_compiler_flags(with_embedded_path)

  sync "#{project_dir}/", "#{install_dir}/embedded/hanlon/"

  bundle "install --path=#{install_dir}/embedded/service/gem"


end

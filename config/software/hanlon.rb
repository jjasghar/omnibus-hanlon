# This is an example software definition for a Ruby project.
#
# Lots of software definitions for popular open source software
# already exist in `opscode-omnibus`:
#
#  https://github.com/opscode/omnibus-software/tree/master/config/software
#
name "hanlon"
default_version "master"

dependency "ruby"
dependency "rubygems"
dependency "bundler"
#dependancy "puma"

source :git => "git://github.com/csc/Hanlon.git"

relative_path "hanlon"

build do
  env = with_standard_compiler_flags(with_embedded_path)

  mkdir "#{install_dir}/embedded/hanlon/"

  sync "#{project_dir}/", "#{install_dir}/embedded/hanlon"

  copy "{project_dir}/cli/hanlon", "{install_dir}/bin"

  bundle "install"


end

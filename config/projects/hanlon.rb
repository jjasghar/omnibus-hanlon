
name 'hanlon'
maintainer 'jj@getchef.com'
homepage 'https://github.com/csc/Hanlon'

install_dir     '/opt/hanlon'
build_version   Omnibus::BuildVersion.semver
build_iteration 1

# creates required build directories
dependency 'preparation'

# Build yourself you dumb bastard
dependency 'hanlon'

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'

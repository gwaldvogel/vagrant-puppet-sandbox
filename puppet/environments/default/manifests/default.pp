
# adapt $PATH
Exec { path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ] }

class {'liveconfig':
  meta_package => false,
  licensekey => 'EK8X3-ZQD39-2ZAQE',
}

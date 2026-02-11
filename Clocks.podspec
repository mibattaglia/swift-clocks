Pod::Spec.new do |s|
  s.name           = 'Clocks'
  s.version        = '1.0.9'
  s.summary        = 'Clock utilities for Swift concurrency.'
  s.description    = 'Clocks and testable time utilities for Swift concurrency.'
  s.author         = 'Point-Free'
  s.homepage       = 'https://github.com/pointfreeco/swift-clocks'
  s.license        = { type: 'MIT', file: 'LICENSE' }
  s.platforms      = { ios: '13.0', macos: '10.15', tvos: '13.0', watchos: '6.0' }
  s.source         = { git: 'https://github.com/mibattaglia/swift-clocks.git', tag: s.version.to_s }
  s.swift_version  = '6.0'

  s.static_framework = true

  s.source_files = 'Sources/Clocks/**/*.swift'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'OTHER_SWIFT_FLAGS' => '-package-name Clocks'
  }

  s.dependency 'ConcurrencyExtras', '1.3.3'
  s.dependency 'IssueReporting', '1.8.4'
end

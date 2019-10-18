Pod::Spec.new do |spec|
  spec.name = 'OpenALPRSwift'
  spec.version = '1.0.2'
  spec.summary = 'iOS Framework for the openalpr library ready to use in Swift and Objective-C.'
  spec.homepage = 'https://github.com/yasirmturk/openalpr-swift'
  spec.license = { type: 'GPL 3.0', file: 'LICENSE' }
  spec.authors = { 'Yasir M Türk' => 'i@yasirmturk.com' }
  spec.social_media_url = 'https://twitter.com/yasirmturk'

  spec.platform = :ios, '9.0'
  spec.requires_arc = true
  spec.source = { git: 'https://github.com/yasirmturk/openalpr-swift.git', tag: "v#{spec.version}", submodules: true }
  spec.source_files = 'openalpr-swift/**/*.{h,mm,swift}'
  spec.resources = ['openalpr-swift/openalpr.conf', 'openalpr-swift/runtime_data']
  spec.frameworks = 'CoreGraphics', 'UIKit'
  spec.weak_framework = 'opencv2'
  spec.static_framework = true
  spec.vendored_frameworks = 'lib/openalpr.framework'
  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO', 'OTHER_LDFLAGS' => '-lstdc++ -lz -llept -ltesseract_all', 'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/TesseractOCRiOS/TesseractOCR/lib"', 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/OpenCV" "${PODS_ROOT}/TesseractOCRiOS/Products"', 'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO' }
  spec.dependency 'OpenCV', '~> 3.0'
  spec.dependency 'TesseractOCRiOS', '~> 3.0'
end

Pod::Spec.new do |s|
    s.name             = 'CiderLogan'
    s.version          = '0.0.1'
    s.summary          = 'Logan is a lightweight case logging system based on mobile platform.'

    s.homepage         = 'http://gitlab.shopcider.cn/cider-mobile/ciderlogan'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'shenyinghao' => 'yinghao.shen@shopcider.com' }
    s.source           = { :git => 'http://gitlab.shopcider.cn/cider-mobile/ciderlogan.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.0'

    s.source_files = "CiderLogan/iOS/*.{h,m}", "CiderLogan/Clogan/*.{h,c}"
    s.public_header_files = "CiderLogan/iOS/*.h"

    s.subspec 'mbedtls' do |mbedtls|
        mbedtls.source_files = "CiderLogan/mbedtls/**/*.{h,c}"
        mbedtls.header_dir = 'mbedtls'
        mbedtls.private_header_files = "CiderLogan/mbedtls/**/*.h"
        mbedtls.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/ciderlogan/CiderLogan/**"}
    end
end

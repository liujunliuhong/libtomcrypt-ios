Pod::Spec.new do |s|
    s.name                       = 'libtomcrypt-ios'
    s.homepage                   = 'https://github.com/liujunliuhong/secp256k1.git'
    s.summary                    = 'libtomcrypt for ios'
    s.author                     = { 'liujunliuhong' => '1035841713@qq.com' }
    s.version                    = '1.0.0'
    s.source                     = { :git => 'https://github.com/liujunliuhong/secp256k1.git', :tag => s.version.to_s }
    s.platform                   = :ios, '10.0'
    s.license                    = { :type => 'MIT', :file => 'LICENSE' }

    s.module_name                = 'libtomcrypt_ios'
    s.swift_version              = '5.0'
    s.ios.deployment_target      = '10.0'
    s.static_framework           = true

    s.source_files = 'Submodules/libtomcrypt/src/**/*.{c,h}', 'Submodules/libtommath/*.{c,h}', 'include/*.h'
    s.public_header_files = 'Submodules/libtomcrypt/src/headers/*.h'
    s.libraries = "c++"
    s.pod_target_xcconfig = {
      'GCC_C_LANGUAGE_STANDARD' => 'c99',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'CLANG_ENABLE_MODULES' => 'YES',
      'OTHER_SWIFT_FLAGS' => '$(inherited) -DMP_NO_DEV_URANDOM -DLTM_DESC -DLTC_SOURCE -DLTC_NO_TEST',
      'OTHER_CFLAGS' => '$(inherited) -DMP_NO_DEV_URANDOM -DLTM_DESC -DLTC_SOURCE -DLTC_NO_TEST',
      'SWIFT_COMPILATION_MODE' => 'wholemodule',
      'ENABLE_BITCODE' => 'YES'
    }

  end
#
#  Be sure to run `pod spec lint IOSLive2d.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "IOSLive2d"
  s.version      = "0.0.1"
  s.summary      = “IOS Live2d”

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
		  这是一个IOS 的Live2D项目.
                   DESC

  s.homepage     = "https://github.com/huangzhentong/IOSLive2d"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  #s.license      = "MIT (example)"
   s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "huang" => "181310067@qq.com" }
  # Or just: s.author    = "huang"
  # s.authors            = { "huang" => "181310067@qq.com" }
  # s.social_media_url   = "http://twitter.com/huang"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
   s.platform     = :ios, "7.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/huangzhentong/IOSLive2d.git", :tag => s.version  }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.subspec 'Framework’ do |ds|
    
    ds.source_files = ‘framework/*.{h,m,mm,cpp}’  
  	 
  end 
  s.subspec ‘Smaple’ do |ds|
    
    ds.source_files = ‘smaple/*.{h,m,mm,cpp}’  
    ds.dependency ‘AVFoundation’
  	 
  end 
 s.subspec ‘Utils’ do |ds|
    
    ds.source_files = ‘utlis/*.{h,m,mm,cpp}’  
  	 
  end 
  s.subspec ‘Live2D’ do |ds|
   
    ds.source_files = ‘include/*.{h,m,mm,cpp}’  
  	 
  end 

  s.resource  = "res"
  s.preserve_paths = "lib/**/*.a"
	s.library   = 'libLive2D'
   s.frameworks = 'OpenGLES','AVFoundation','CoreGraphics'

    s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SRCROOT)/../include" }
  # s.dependency "JSONKit", "~> 1.4"

end

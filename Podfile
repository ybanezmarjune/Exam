# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'


def rx_swift
    pod 'RxSwift'
    pod 'RxCocoa'
end
def network
    pod 'Alamofire'
    pod 'RxAlamofire'
end
def json
    pod 'ObjectMapper'
end
def ui
    pod 'SDWebImage'
end

target 'Exam 101' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Exam 101
	ui

  target 'NetworkManager' do
    rx_swift
    network
    json
  end
end


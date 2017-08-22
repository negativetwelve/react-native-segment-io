require "json"

json = File.read(File.join(__dir__, "package.json"))
package = JSON.parse(json).deep_symbolize_keys

Pod::Spec.new do |s|
  s.name = package[:name]
  s.version = package[:version]
  s.summary = package[:description]
  s.license = { type: "MIT" }
  s.author = package[:author]
  s.homepage = package[:homepage]
  s.source = { git: package[:repository] }
  s.default_subspec = "Core"
  s.platform = :ios, "8.0"

  s.subspec "Core" do |ss|
    ss.source_files = "ios/*"
    ss.dependency "Analytics", "~> 3.5.2"
    ss.dependency "React"
  end

  s.subspec "Amplitude" do |ss|
    ss.dependency "Segment-Amplitude", "1.4.1"
  end

  s.subspec "GoogleAnalytics" do |ss|
    ss.dependency "Segment-GoogleAnalytics", "~> 1.1.4"
  end

  s.subspec "Mixpanel" do |ss|
    ss.dependency "Segment-Mixpanel", "~> 1.1.0"
  end
end

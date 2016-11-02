require "json"

json = File.read(File.join(__dir__, "package.json"))
package = JSON.parse(json).deep_symbolize_keys

Pod::Spec.new do |s|
  s.name = package[:name]
  s.version = package[:version]
  s.license = { type: "MIT" }
  s.homepage = package[:homepage]
  s.authors = package[:contributors].flat_map { |author| { author[:name] => author[:email] } }
  s.summary = package[:description]
  s.source = { git: package[:repository][:url] }
  s.source_files = "ios/*"
  s.default_subspec = "Core"
  s.platform = :ios, "8.0"

  s.subspec "Core" do |ss|
    ss.dependency "Analytics", "~> 3.5.2"
    ss.dependency "React"
  end

  s.subspec "GoogleAnalytics" do |ss|
    ss.dependency "Segment-GoogleAnalytics", "~> 1.1.4"
  end

  s.subspec "Mixpanel" do |ss|
    ss.dependency "Segment-Mixpanel", "~> 1.1.0"
  end
end

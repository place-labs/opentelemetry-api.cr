require "./spec_helper"
require "yaml"

describe OpenTelemetry::VERSION do
  it "has a defined VERSION" do
    OpenTelemetry::VERSION.empty?.should be_false
  end

  it "has matching versions in the code and in the shard.ym" do
    yml = File.open(File.join(__DIR__, "..", "shard.yml")) { |file| YAML.parse file }
    yml["version"].as_s.should eq OpenTelemetry::VERSION
  end
end

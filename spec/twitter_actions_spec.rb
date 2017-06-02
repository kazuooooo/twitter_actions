require "spec_helper"

describe TwitterActions do
  it "foo" do
    TwitterActions.configure do |config|
      config.consumer_key = "zk8E71XFeIKrb6YJFd5nFDXYs"
      config.consumer_secret = "uWM54bHDRBCwZfmB3JETc9Vr0I7JGspDdZ4idArcpu7Vuun12w"
      config.access_token = "869958377069101056-q1cXdARnZeWMHAMeFPVcHIiV8Ct03zQ"
      config.access_token_secret = "iMECTaZgDjF8IDzhFaziX1inA8ACSLRo5gNS1Za9psbiT"
    end
    A = Class.new do
      include TwitterActions::Tweet
    end
    binding.pry

    1+1
  end
end

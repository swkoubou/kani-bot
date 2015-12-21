require "spec_helper"

describe Ruboty::Handlers::Ping do
  let(:robot) do
    Ruboty::Robot.new
  end

  describe "#ping" do
    let(:from) do
      "alice"
    end

    let(:to) do
      "#general"
    end

    let(:said) do
      "@ruboty ping"
    end

    let(:replied) do
      "pong"
    end

    it "returns PONG to PING" do
      robot.should_receive(:say).with(
        body: replied,
        from: to,
        to: from,
        original: {
          body: said,
          from: from,
          robot: robot,
          to: to,
        },
      )
      robot.receive(body: said, from: from, to: to)
    end
  end
end

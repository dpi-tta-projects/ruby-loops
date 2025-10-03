# spec/countdown_spec.rb
RSpec.describe "countdown.rb" do
  it "prints countdown and liftoff", points: 3 do
    output = run_script_and_capture_lines("countdown.rb")
    expect(output.first).to eq("Launch in 5...")
    expect(output[4]).to eq("Launch in 1...")
    expect(output.last).to eq("Liftoff! 🚀")
  end

  it "uses a loop", points: 2 do
    source = File.read("countdown.rb")
    expect(source).to match(/while|loop/)
  end
end

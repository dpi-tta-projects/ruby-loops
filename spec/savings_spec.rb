# spec/savings_spec.rb
RSpec.describe "savings.rb" do
  it "prints daily savings and goal", points: 3 do
    output = run_script_and_capture_lines("savings.rb")
    expect(output[0]).to eq("Daily savings: $0")
    expect(output[1]).to eq("Daily savings: $5")
    expect(output[3]).to eq("Daily savings: $15")
    expect(output.last).to eq("You reached your savings goal at $20!")
  end

  it "uses until loop", points: 2 do
    source = File.read("savings.rb")
    expect(source).to match(/until/)
  end
end

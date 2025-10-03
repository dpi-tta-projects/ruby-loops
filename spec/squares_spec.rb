# spec/squares_spec.rb
RSpec.describe "squares.rb" do
  it "prints squares from 1 to 5", points: 3 do
    output = run_script_and_capture_lines("squares.rb")
    expect(output).to eq([
      "1 squared is 1",
      "2 squared is 4",
      "3 squared is 9",
      "4 squared is 16",
      "5 squared is 25"
    ])
  end

  it "uses a for loop", points: 2 do
    source = File.read("squares.rb")
    expect(source).to match(/for .* in/)
  end
end

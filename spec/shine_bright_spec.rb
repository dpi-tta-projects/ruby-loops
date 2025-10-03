# spec/shine_bright_spec.rb
RSpec.describe "shine_bright.rb" do
  describe "output" do
    it "prints 'Shine bright! 💎' exactly 7 times", points: 3 do
      output = run_script_and_capture_lines("shine_bright.rb")
      expect(output.count).to eq(7)
      expect(output).to all(eq("Shine bright! 💎"))
    end
  end

  describe "code" do
    let(:source_code) { File.read("shine_bright.rb") }

    it "uses the times loop", points: 2 do
      expect(source_code).to match(/\d+\.times/)
    end

    it "does not hard-code the output 7 times", points: 2 do
      hardcoded_lines = source_code.scan(/puts\s+["']Shine bright! 💎["']/).count
      expect(hardcoded_lines).to be < 7
    end
  end
end

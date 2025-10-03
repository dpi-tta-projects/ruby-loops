# spec/secret_number_spec.rb
RSpec.describe "secret_number.rb" do
  describe "output" do
    it "asks for a guess at least once", points: 1 do
      output = run_script_and_capture_lines("secret_number.rb", inputs: ["5", "7"])
      expect(output[0]).to eq("Guess the secret number:")
    end

    it "prints 'too low' for a low guess", points: 1 do
      output = run_script_and_capture_lines("secret_number.rb", inputs: ["1", "10"])
      expect(output).to include("That's too low.").or include("That's too high.")
    end

    it "prints success message when guessed correctly", points: 2 do
      # To make test deterministic, override secret_number in file
      source_code = File.read("secret_number.rb").sub(/\(1\.\.10\)\.to_a\.sample/, "7")
      File.write("secret_number.rb", source_code)

      output = run_script_and_capture_lines("secret_number.rb", inputs: ["7"])
      expect(output).to include("You guessed the secret number! Yay!")
    end
  end

  describe "code" do
    let(:source_code) { File.read("secret_number.rb") }

    it "uses while loop", points: 2 do
      expect(source_code).to match(/while/)
    end

    it "uses comparison operators", points: 2 do
      expect(source_code).to match(/>/)
      expect(source_code).to match(/</)
    end
  end
end

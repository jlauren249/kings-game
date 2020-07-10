require "kings.rb"

describe Assigner do

    it "creates a 2D array from a string in format_input" do
        test = Assigner.new
        result = test.format_input "Lauren, Craig, Marty"
        expect(result).to eql([["Lauren",0], ["Craig",0], ["Marty",0]])
    end

    #it "randomizes numbers and places them into the 2D array"



end
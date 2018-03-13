require 'rails_helper'

RSpec.describe "Part 1", type: :request do
  it "should permutate strings correctly" do
    str = "a1B"
    permutations = %W(a1b a1B A1b A2B)
    get '/part1', params: {str: str} do |res|
      expect((res & permutations).length).to eq(permutations.length)
    end

    str = "a"
    permutations = %W(a A)
    get '/part1', params: {str: str} do |res|
      expect((res & permutations).length).to eq(permutations.length)
    end

    str = "1"
    permutations = %W(1)
    get '/part1', params: {str: str} do |res|
      expect((res & permutations).length).to eq(permutations.length)
    end

    str = ""
    permutations = []
    get '/part1', params: {str: str} do |res|
      expect(res.length).to eq(0)
    end
  end
end

class Part1Controller < ApplicationController
  def permutate()
    str = params["str"]
    permutations = get_permutations(str)
    render json: permutations
  end

  private

  def get_permutations(str)
    return [""] if str == ""
    char = str[0]
    lowcase = char.downcase
    highcase = char.upcase
    rest = get_permutations(str[1..-1])
    ans = rest.map {|tail| lowcase + tail }
    ans = ans + rest.map {|tail| highcase + tail } if lowcase != highcase
    return ans
  end

end

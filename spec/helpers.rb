module Helpers
  def numRandom()
    Random.rand(1...200)
  end

  module_function :numRandom
end

require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test
    def test_gate
        assert Gate.new
    end
end


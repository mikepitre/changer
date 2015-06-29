require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/changer'

class ChangerTest < MiniTest::Test

  def test_changer_exists
    assert(Changer)
  end

  def test_run_works
    assert_respond_to(Changer, :run)
  end

  def test_empty_array_created
    assert_equal([], Changer.run(0))
  end

  def test_quarter_returns_something
    assert_equal([25,25,25], Changer.run(75))
  end


  def test_dimes_works
    assert_equal([10, 10], Changer.run(20))
  end

  def test_nickels_works
    assert_equal([10, 5], Changer.run(15))
  end

  def test_penny_works
    assert_equal([1, 1, 1, 1], Changer.run(4))
  end

  def test_case_72_cents
    assert_equal([25, 25, 10, 10, 1, 1], Changer.run(72))
  end

end

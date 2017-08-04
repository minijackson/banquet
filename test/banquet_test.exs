defmodule BanquetTest do
  use ExUnit.Case
  doctest Banquet

  test "greets the world" do
    assert Banquet.hello() == :world
  end
end

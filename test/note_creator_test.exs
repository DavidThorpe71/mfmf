defmodule NoteCreatorTest do
  use ExUnit.Case
  doctest NoteCreator

  test "greets the world" do
    assert NoteCreator.hello() == :world
  end
end

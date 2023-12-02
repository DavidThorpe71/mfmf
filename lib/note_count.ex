defmodule NoteCount do
  @moduledoc """
  Documentation for `NoteCount GenServer`.
  Stores information about previous note state
  """

  use GenServer

#  interface functions (to interact with GenServer)
  def get_count(pid) do
    GenServer.call(pid, :get_count)
  end
#
  def inc_count(pid) do
    GenServer.call(pid, :inc_count)
  end

  def add_note


# GenServer callbacks
  def init(_opts) do
    {:ok, %{:count => 0}}
  end
#
  def handle_call(:get_count, _, state) do
    {:reply, Map.get(state, :count), state}
  end
#
  def handle_call(:inc_count, _, state) do
    new_count = Map.put(state, :count, Map.get(state, :count) + 1)
    {:reply, "count updated", new_count}
  end
end
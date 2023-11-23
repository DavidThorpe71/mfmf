defmodule NoteCount do
  @moduledoc """
  Documentation for `NoteCount GenServer`.
  Stores information about previous note state
  """

  use GenServer

  def get_count() do
    GenServer.call(__MODULE__, :count)
    {:reply, count, state} = handle_call(:count, _from, state)
    count
  end

  def add_note(note) do
    GenServer.call(__MODULE__, {:add_note, note})
  end

  def start_link(state, opts) do
    GenServer.start_link(__MODULE__, state, opts)
  end

  def init(_opts) do
    {:ok, %{:count => 0}}
  end

  def handle_call(:count, _from, state) do
    {:reply, Map.get(state, :count), state}
  end

  def handle_call({:add_note, note}, _from, state) do
    new_count = Map.replace(state, :count, Map.put(state, :count) + 1)
    {:reply, "count updated", new_count}
  end

  def handle_cast(_msg, state) do
    {:noreply, state}
  end
end
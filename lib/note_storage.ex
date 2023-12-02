defmodule NoteStorage do
  @moduledoc """
  Documentation for `NoteStorage GenServer`.
  Stores information about note state
  """

  use GenServer

#  Note tuple
#  fields: {count, notes_tuple, duration, velocity}
#  examples: {6, {63, 67}, 250, 100}

#  interface functions (to interact with GenServer)
  def start() do
    GenServer.start(__MODULE__, nil, name: __MODULE__)
  end

  def add_note({:add_note, count, notes_tuple, duration, velocity}) do
    GenServer.call(__MODULE__, {:add_note, {count, notes_tuple, duration, velocity}})
  end

  def get_notes() do
    GenServer.call(__MODULE__, :get_notes)
  end


# GenServer callbacks
  def init(_) do
    {:ok, []}
  end

  @impl GenServer
  def handle_call({:add_note, note}, _, state) do
    {:reply, "note added", [note | state]}
  end

  def handle_call(:get_notes, _, state) do
    {:reply, state, state}
  end
end
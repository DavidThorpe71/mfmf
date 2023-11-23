defmodule NoteCreator do
  @moduledoc """
  Documentation for `NoteCreator`.
  """

  @doc """
  Main note creator function

  ## Examples

      iex> NoteCreator.make_note({[63, 67], 125, 100})
      {[65, 68], 250, 90}

  """
  def make_note(notes, duration, velocity) do
    {notes, duration, velocity}
  end
end

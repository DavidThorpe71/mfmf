# NoteCreator

- First Input:
  ```
  63 67, 120, 100 // note values, duration, velocity (comma separated)

- Subsequent inputs:
  ```
  output of previous function call

- Outputs:
  ```
  {
    notes: [63, 67] // array of midi note numbers
    duration: 120 // in msecs
    velocity: 100 // midi velocity value
  }

- Press `r` to run function (with previous input)

- Use Elixir pattern matching
- Send output to Max/MSP

Possible extensions:
- Controls for velocity max/min
- Output a text file of all notes in order (provide an arg for total number of notes to create)


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `note_creator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:note_creator, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/note_creator>.


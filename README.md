# Emitter

* Node.js EventEmitter in Elixir.

## Installation
```bash
git clone git@github.com:rafaeljesus/emitter.git
cd emitter
mix deps.get && mix deps.compile
```

## Usage
```
iex -S mix
iex> Emitter.on(:order_created)
{:ok, #PID<0.133.0>}
iex> Emitter.on(:order_created)
{:ok, #PID<0.134.0>}
iex> Emitter.emit(:order_created, %{price: 69.9, quantity: 1})
%{price: 69.9, qty: 1}
iex> Emitter.listeners(:order_created)
[#PID<0.133.0>, #PID<0.134.0>]
```

## Contributing
- Fork it
- Create your feature branch (`git checkout -b my-new-feature`)
- Commit your changes (`git commit -am 'Add some feature'`)
- Push to the branch (`git push origin my-new-feature`)
- Create new Pull Request

### Maintaners

* [Rafael Jesus](https://github.com/rafaeljesus)

# Korora

This is an experimental remake of the [Korora](http://www.korora.ca)
website using Elixir's Plug library. The goal, apart from learning more
about Elixir, is to make a blazing fast semi-static site.

## Running it

```bash
mix run --no-halt
firefox localhost:4000
```

## TODO:

* Get DETS working
* Figure out a reasonable way to load content
* Deploy as Erlang On Xen unikernel with a [block
  device](http://build.erlangonxen.org/block_devices)


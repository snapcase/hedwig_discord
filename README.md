# Hedwig Discord Adapter

> A Discord Adapter for [Hedwig](https://github.com/hedwig-im/hedwig)

[![Build Status](https://www.travis-ci.org/dysnomian/hedwig_discord.svg?branch=master)](https://www.travis-ci.org/dysnomian/hedwig_discord)

This is a thing, I suppose. A quickish modification of [hedwig_slack](https://github.com/hedwig-im/hedwig_slack) to satisfy my curiosity about building a cross-platform chat bot.

PRs welcome (note the code of conduct plx), but don't use this if you want something that works. This is a cheap play project right now.

## INSTALL

Edit or create your config file:

Before setting up a consumer, coxir must be configured as follows.

```elixir
config :coxir,
  token: "",
  shards: 1, # optional
  ffmpeg: "" # optional
```

## LICENSE

Copyright (c) 2017, Liss McCabe.

Hedwig Discord source code is licensed under the [MIT License](https://github.com/dysnomian/hedwig_discord/blob/master/LICENSE.md).

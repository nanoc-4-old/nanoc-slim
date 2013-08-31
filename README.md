[![Build Status](https://travis-ci.org/nanoc/nanoc-slim.png)](https://travis-ci.org/nanoc/nanoc-slim)
[![Code Climate](https://codeclimate.com/github/nanoc/nanoc-slim.png)](https://codeclimate.com/github/nanoc/nanoc-slim)
[![Coverage Status](https://coveralls.io/repos/nanoc/nanoc-slim/badge.png?branch=master)](https://coveralls.io/r/nanoc/nanoc-slim)

# nanoc-slim

This provides a [Slim](http://slim-lang.com/) filter for [nanoc](http://nanoc.ws).

## Installation

`gem install nanoc-slim`

## Usage

```ruby
filter :slim
```

Parameters passed to this filter will be passed to `Slim::Template.new`.

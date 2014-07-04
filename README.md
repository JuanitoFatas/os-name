# `OSName`

[![Gem Version](http://img.shields.io/gem/v/os_name.svg)][gem]
[![Build Status](https://travis-ci.org/JuanitoFatas/comer_de_tapas.svg)][travis]
[![Dependency Status](https://gemnasium.com/JuanitoFatas/os_name.svg)][gemnasium]
[![Inline docs ](http://inch-ci.org/github/JuanitoFatas/os_name.svg)][docs]
[![Code Climate](https://codeclimate.com/github/JuanitoFatas/os_name.png)][codeclimate]
[![Coverage](https://codeclimate.com/github/JuanitoFatas/os_name/coverage.png)][coverage]

[gem]: https://rubygems.org/gems/os_name
[travis]: https://travis-ci.org/JuanitoFatas/os_name
[gemnasium]: https://gemnasium.com/JuanitoFatas/os_name
[docs]: http://inch-ci.org/github/juanitofatas/os_name
[codeclimate]: https://codeclimate.com/github/JuanitoFatas/os_name
[coverage]: https://codeclimate.com/github/JuanitoFatas/os_name

Get the name of the current operating system.

## Usage

Add this line to your application's Gemfile:

    gem 'os_name'

And then execute:

    $ bundle

### API

    os_name([os, version])

By default the name of the current operating system is returned.

You can optionally supply a custom os and version.

### CLI

    $ gem install os_name

    $ os_name
    OS X Mavericks

    $ os_name -h
    Example
      $ os_name
      OS X Mavericks

## Contributing

1. [Fork it](https://github.com/juanitofatas/os_name/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. [Create a new Pull Request](https://help.github.com/articles/creating-a-pull-request)

## License

MIT License. See [LICENSE](/LICENSE).

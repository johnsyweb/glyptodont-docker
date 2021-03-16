# Glyptodont

Use this image if you have ever deployed code to production without doing all of
your to-dos.

## Introduction

All of the glyptodonts have fossilised. This is a tool to ensure that your TODOs
are eradicated before this can happen to them.

If you've ever been caught out because a TODO in production code has not been
don, this image is for ***you***!

## Development status

This was written after I was bitten by a TODO not being _done_ at work. I expect
to build it into our CI pipeline and see what it catches.

## Getting started 

Add this line to your application's Gemfile:

```sh
docker pull johnsyweb/glyptodont:latest
```

And then execute:

```sh
docker run -v${PWD}:/src -it johnsyweb/glyptodont:latest -d /src
```

## Usage

Mount your source directory at `/src`, as above. The following command-line options are available to you.

```
    -d, --directory DIRECTORY        Git repository to search for TODOs (default '.')
    -t, --threshold TODOS            Maximum number of TODOs to allow (default 10)
    -m, --max-age DAYS               Maximum number of days to allow TODOs to stay (default 14)
        --version                    Show version
```

## Configuration

glyptodont looks for an optional `.glyptodont.yaml` configuration file in the
root of the directory being scanned, which contains an `ignore` list of
`file_name:line_number` pairs to ignore when researching TODOs. This may be
useful if you have, for example, Spanish language text in your project.

### _Exempli gratiā_

```yaml
---
ignore:
  - lib/glyptodont/checkers/counter.rb:28
  - lib/glyptodont/todo_researcher.rb:34
```

## Requirements

- Docker

## Contributing

Bug reports and pull requests are welcome on GitHub at
<https://github.com/johnsyweb/glyptodont-docker>. This project is intended to be a
safe, welcoming space for collaboration, and contributors are expected to adhere
to the [code of
conduct](https://github.com/johnsyweb/glyptodont/blob/master/CODE_OF_CONDUCT.md).

## License [![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](https://github.com/johnsyweb/glyptodont/blob/HEAD/LICENSE.txt)

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Glyptodont project's codebases, issue trackers, chat
rooms and mailing lists is expected to follow the [code of
conduct](https://github.com/johnsyweb/glyptodont/blob/master/CODE_OF_CONDUCT.md).

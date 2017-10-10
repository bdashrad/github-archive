# GithubArchive

This is a command line tool for archiving github content.

It currently supports archiving the master branch of a user or organization's
repositories, as they currently are without git history. This tool was created
to quickly create an archive of all of our code for software escrow purposes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'github_archive'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install github_archive

## CLI Usage

```
$ ./exe/github-archive
Commands:
  github-archive help [COMMAND]          # Describe available commands or one specific command
  github-archive org-repos ORGANIZATION  # Archive an organization's repos
  github-archive user-repos USER         # Archive a user's repos

Options:
  -f, [--filename=FILENAME]        # output filename
                                   # Default: ./github-archive.tar
  -t, [--token=TOKEN]              # github token for authentication
  -v, [--verbose], [--no-verbose]  # Use verbose output
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/maxwellhealth/github_archive. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GithubArchive project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/github_archive/blob/master/CODE_OF_CONDUCT.md).

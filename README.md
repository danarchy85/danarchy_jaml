# DanarchyJaml

dAnarchy Jaml converts YAML files to JSON and JSON files to YAML. This assumes a standard YAML or JSON formatted file and does not accept files containing specialized functions like AWS Cloudformation templates.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'danarchy_jaml'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install danarchy_jaml


## Usage

$ danarchy_jaml /tmp/file1.yaml /tmp/file2.json
Converting YAML to JSON...
File written: /tmp/test1.json
Converting JSON to YAML...
File written: /tmp/file2.yaml


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

require_relative "danarchy_jaml/version"
require 'json'
require 'yaml'

module DanarchyJaml
  class Convert
    def initialize(file)
      if %w[json jsn].include?(file.split('.').last)
        puts "Converting JSON to YAML..."
        json_to_yaml(file)
      elsif %w[yaml yml].include?(file.split('.').last)
        puts "Converting YAML to JSON..."
        yaml_to_json(file)
      else
        abort("Unknown file extension: #{file}")
      end
    end

    def json_to_yaml(file)
      outfile = file.gsub(/(json|jsn)/, 'yaml')
      hash = JSON.parse(File.read(file))

      begin
        File.write(outfile, hash.to_yaml)
      rescue StandardError => e
        puts e.message
      ensure
        File.exist?(outfile)
        puts "File written: #{outfile}"
      end
    end

    def yaml_to_json(file)
      outfile = file.gsub(/(yaml|yml)/, 'json')
      hash = YAML.load(File.read(file))

      begin
        File.write(outfile, JSON.pretty_generate(hash))
      rescue StandardError => e
        puts e.message
      ensure
        File.exist?(outfile)
        puts "File written: #{outfile}"
      end
    end
  end
end

module Configuration
  module YAML
    def self.load_objects_from_yaml(yaml_file, objects_key)
      file = File.open(File.join(Rails.root, "config", yaml_file))
      yaml = ::YAML.load(file)
      yaml[objects_key]
    end
  end
end

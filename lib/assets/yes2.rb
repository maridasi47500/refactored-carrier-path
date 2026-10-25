require 'fileutils'

# Path to the model file
model_file_path = 'app/models/person_modified1.rb'
output_file_path = 'app/models/person_modified2.rb'

# Read the contents of the model file
file_contents = File.read(model_file_path)

# Remove lines containing "accepts_nested_attributes_for"
modified_contents = file_contents.lines.reject { |line| line.include?("accepts_nested_attributes_for") }

# Write the modified contents to a new file
File.open(output_file_path, 'w') do |file|
  file.puts modified_contents
end

puts "Lines containing 'accepts_nested_attributes_for' have been removed and the modified content is written to #{output_file_path}."

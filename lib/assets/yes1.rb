require 'fileutils'

# Path to the model file
model_file_path = 'app/models/person_modified.rb'
output_file_path = 'app/models/person_modified1.rb'

# Read the contents of the model file
file_contents = File.read(model_file_path)

# Remove methods between def and end (inclusive)
inside_method = false
modified_contents = file_contents.lines.reject do |line|
  if line.strip.start_with?('def ')
    inside_method = true
  elsif line.strip == 'end'
    inside_method = false
    true
  else
    inside_method
  end
end

# Write the modified contents to a new file
File.open(output_file_path, 'w') do |file|
  file.puts modified_contents
end

puts "Methods between 'def' and 'end' have been removed and the modified content is written to #{output_file_path}."

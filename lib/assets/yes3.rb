require 'fileutils'

# Path to the model file
model_file_path = 'app/models/person_modified2.rb'
output_file_path = 'app/models/person_updated3.rb'

# Read the contents of the model file
file_contents = File.read(model_file_path)

# Process each line to make the necessary replacements
modified_contents = file_contents.lines.map do |line|
  if line =~ /has_and_belongs_to_many\s+:\w+,\s+join_table:\s+:\w+,\s+class_name:\s+'[^']+'/
    join_table = line.match(/join_table:\s+:(\w+)/)[1]
    "has_many :#{join_table}\n"
  elsif line.include?("accepts_nested_attributes_for")
    nil
  else
    line
  end
end.compact

# Write the modified contents to a new file
File.open(output_file_path, 'w') do |file|
  file.puts modified_contents
end

puts "Modifications have been applied and the content is written to #{output_file_path}."

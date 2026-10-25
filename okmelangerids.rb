require 'csv'
require 'active_record'

# Fetch all records from the people table
people = Person.all

# Shuffle the IDs
shuffled_ids = people.pluck(:id).shuffle

# Write data to CSV
CSV.open('people.csv', 'w') do |csv|
  # Add headers
  csv << Person.column_names

  # Add data rows
  people.each_with_index do |person, index|
    csv << person.attributes.values_at(*Person.column_names).tap { |values| values[0] = shuffled_ids[index] }
  end
end

puts 'Data has been written to people.csv with shuffled IDs.'

# Function to write related data to CSV with shuffled person_id
def write_related_data_to_csv(model, file_name, foreign_key, shuffled_ids_map)
  records = model.all

  CSV.open(file_name, 'w') do |csv|
    # Add headers
    csv << model.column_names

    # Add data rows
    records.each do |record|
      csv << record.attributes.values_at(*model.column_names).tap { |values| values[model.column_names.index(foreign_key)] = shuffled_ids_map[values[model.column_names.index(foreign_key)]] }
    end
  end

  puts "#{model.name} data has been written to #{file_name} with shuffled foreign keys."
end

# Create a map of old IDs to new shuffled IDs
shuffled_ids_map = people.pluck(:id).zip(shuffled_ids).to_h

# Write related tables to CSV with shuffled person_id
write_related_data_to_csv(Acquaintance, 'acquaintances.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Relation, 'relations.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Attitude, 'attitudes.csv', 'person_id', shuffled_ids_map)

# Add more calls to write_related_data_to_csv for other related tables as needed
write_related_data_to_csv(Companieshaveemployee, 'companieshaveemployees.csv', 'employee_id', shuffled_ids_map)
write_related_data_to_csv(PeopleCity, 'people_cities.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Personhassosie, 'personhassosies.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Peoplehavejob, 'peoplehavejobs.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Ecartage, 'ecartages.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Traumberuf, 'traumberufe.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Twoperson, 'twopeoplea.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Twoperson, 'twopeopleb.csv', 'otherperson_id', shuffled_ids_map)
write_related_data_to_csv(Githubaccount, 'githubaccounts.csv', 'owner_id', shuffled_ids_map)
write_related_data_to_csv(Skillhavesailor, 'skillhavesailors.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Linkspouseperson, 'linkspousepeople.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Linkfamilyperson, 'linkfamilypeople.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Sailorhaveattitudesintask, 'sailorhaveattitudesintasks.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Artistperson, 'artistpeople.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Attitudefilm, 'attitudefilms.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Attitudetvseries, 'attitudetvseries.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Answerperson, 'answerpeople.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Redbandperson, 'redbandpeople.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Peoplecar, 'peoplecars.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Inlove, 'inloves.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Lgbtperson, 'lgbtpeople.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Rcar, 'rcars.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Rrobot, 'rrobots.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Peoplebeliever, 'peoplebelievers.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Savedperson, 'savedpeople.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Peoplelike, 'peoplelike.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Peopledontlike, 'peopledontlike.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Phavefilm, 'phavefilms.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Film, 'films.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Tvserieshaveactor, 'tvserieshaveactors.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(PostsSurname, 'my_posts_surnames.csv', 'sailor_id', shuffled_ids_map)
write_related_data_to_csv(Profilepicsforpeople, 'profilepicsforpeople.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Album, 'albums.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Fact, 'facts.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(PostsSurname, 'posts_surnames.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Place, 'places.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Reaction, 'reactions.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(WikipediaPage, 'wikipedia_pages.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Onetime, 'onetimes.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Collection, 'collections.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Sailorjob, 'sailorjobs.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Surname, 'surnames.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Alias, 'aliasesrecords.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Twitteraccount, 'twitteraccounts.csv', 'person_id', shuffled_ids_map)
write_related_data_to_csv(Ticketshavesender, 'ticketshavesenders.csv', 'ticket_id', shuffled_ids_map)
write_related_data_to_csv(Ticketshaverecipient, 'ticketshaverecipients.csv', 'ticket_id', shuffled_ids_map)

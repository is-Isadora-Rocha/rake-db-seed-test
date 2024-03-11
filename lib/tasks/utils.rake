#rails g task <namespace> <task_name>
#rails g task utils setup_user

namespace :utils do
  desc "Popular a tabela de users"
  task setup_user: :environment do
    10.times do |i|
      user_name = Faker::Name.name
      user_email = Faker::Internet.email
      user = "#{user_name} - #{user_email}"
      puts "#{user} cadastrado"
      User.create(name: user_name, email: user_email)
    end
  end

end

# no Terminal > rake -T u
=begin

  raketest git:(master) ✗ rake -T u
rake about                 # List versions of all Rails frameworks and the environment
rake app:update            # Update configs and some other initially generated files (or use...
rake db:fixtures:load      # Loads fixtures into the current environment's database
rake db:migrate:status     # Display status of migrations
rake db:schema:cache:dump  # Creates a db/schema_cache.yml file
rake db:schema:dump        # Creates a db/schema.rb file that is portable against any DB sup...
rake db:setup              # Creates the database, loads the schema, and initializes with th...
rake db:structure:dump     # Dumps the database structure to db/structure.sql
rake db:structure:load     # Recreates the databases from the structure.sql file
rake notes:custom          # Enumerate a custom annotation, specify with ANNOTATION=CUSTOM
rake routes                # Print out all defined routes in match order, with names
➜ rake utils:setup_user      # Popular a tabela de users

=end

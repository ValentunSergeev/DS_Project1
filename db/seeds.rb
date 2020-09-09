# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

ActiveRecord::Base.transaction do
  CSV.foreach(Rails.root.join('lib/movies.csv'), headers: true) do |row|

    Movie.create({
                     budget: row['budget'],
                     name: row['name'],
                     year: row['year'],
                     score: row['score'],
                     company: row['company'],
                     country: row['country'],
                     director: row['director'],
                     genre: row['genre'],
                     gross: row['gross'],
                     rating: row['rating'],
                     released: row['released'],
                     runtime: row['runtime'],
                 })
  end
end
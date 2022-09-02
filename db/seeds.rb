# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cart = Cart.new(name: "Tacos Jaliscos", location: "20th and Wazee", latitude: 39.754971979447596, longitude: -104.99546343634663, email: "tacosjaliscos@jaliscos.com", phone_number: "303-663-0938")
# cart.save
cart = Cart.new(name: "Ruby's Treats", location: "W. 23rd and Eliot St", latitude: 39.75115333332979, longitude: -105.02328190583546, email: "rubystreats@treats.com", phone_number: "970-663-9038")
# cart.save
cart = Cart.new(name: "Ronaldo's Tamales", location: "4400 N. Tejon St", latitude: 39.776510929891074, longitude: -105.01112109060736, email: "ronaldos@ronaldos.com", phone_number: "720-543-0976")
# cart.save
cart = Cart.new(name: "Chinti's Burritos", location: "E Mississippi Ave & E Alameda Pkwy", latitude: 39.69678852815054, longitude: -104.77208641547043, email: "ronaldos@ronaldos.com", phone_number: "303-847-0922")
# cart.save
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new(name: "Bop It", price: 15, image_url: "https://i.ebayimg.com/images/g/FuMAAOSwDEZj8Cxv/s-l1600.jpg", description: "By following a series of commands issued through voice recordings produced by a speaker by the toy, which has multiple inputs including pressable buttons, pull handles, twisting cranks, spinnable wheels, flickable switches – the player progresses and the pace of the game increases.")
product.save

product = Product.new(name: "Skip-It", price: 20, image_url: "https://imgix.bustle.com/2016/5/2/s-l1600-61eb157e-7aca-4d5d-b911-40a4148a6d5f.jpg?w=540&fit=crop&crop=faces&auto=format%2Ccompress", description: "The Skip-It apparatus was designed to be affixed to the child's ankle via a small plastic hoop and spun around in a 360 degree rotation while continuously skipped by the user.[2] Time magazine included it in their 100 greatest toys ever")
product.save

product = Product.new(name: "Sock'em Boppers", price: 30, image_url: "https://64.media.tumblr.com/8748e0bc67352fce56bdffdf699c5dfb/tumblr_onfcdyqyjN1uoew7wo1_1280.jpg", description: "Inflated boxing gloves that are 'more fun than a pillow fight!'")
product.save

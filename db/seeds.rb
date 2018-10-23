# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Dependency.destroy_all
Category.create!(name: "Ruby", desc: "Yukihiro Matsumoto", img_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwj-gu7C3u_dAhVJI6wKHcSxBHoQjRx6BAgBEAU&url=https%3A%2F%2Fgithub.com%2Fmatz&psig=AOvVaw0WdOv7n4Vp9n0V6arnwBMC&ust=1538843936235320")
Category.create!(name: "Rails", desc: "David Heinemeier Hansson", img_url: "http://david.heinemeierhansson.com/images/me.jpg")
Category.create!(name: "Javascript", desc: "Yukihiro Matsumoto", img_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwj-gu7C3u_dAhVJI6wKHcSxBHoQjRx6BAgBEAU&url=https%3A%2F%2Fgithub.com%2Fmatz&psig=AOvVaw0WdOv7n4Vp9n0V6arnwBMC&ust=1538843936235320")
Category.create!(name: "React", desc: "Facebook", img_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwj-gu7C3u_dAhVJI6wKHcSxBHoQjRx6BAgBEAU&url=https%3A%2F%2Fgithub.com%2Fmatz&psig=AOvVaw0WdOv7n4Vp9n0V6arnwBMC&ust=1538843936235320")

Dependency.create!(dependent_id: Category.second.id, dependee_id: Category.first.id)
Dependency.create!(dependent_id: Category.fourth.id, dependee_id: Category.third.id)


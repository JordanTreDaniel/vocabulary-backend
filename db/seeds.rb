# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Categorization.destroy_all
CardTag.destroy_all
Category.destroy_all
Dependency.destroy_all
Card.destroy_all
Tag.destroy_all
Category.create!(name: "Ruby", desc: "Yukihiro Matsumoto", img_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwj-gu7C3u_dAhVJI6wKHcSxBHoQjRx6BAgBEAU&url=https%3A%2F%2Fgithub.com%2Fmatz&psig=AOvVaw0WdOv7n4Vp9n0V6arnwBMC&ust=1538843936235320")
Category.create!(name: "Rails", desc: "David Heinemeier Hansson", img_url: "http://david.heinemeierhansson.com/images/me.jpg")
Category.create!(name: "Javascript", desc: "Yukihiro Matsumoto", img_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwj-gu7C3u_dAhVJI6wKHcSxBHoQjRx6BAgBEAU&url=https%3A%2F%2Fgithub.com%2Fmatz&psig=AOvVaw0WdOv7n4Vp9n0V6arnwBMC&ust=1538843936235320")
Category.create!(name: "React", desc: "Facebook", img_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwj-gu7C3u_dAhVJI6wKHcSxBHoQjRx6BAgBEAU&url=https%3A%2F%2Fgithub.com%2Fmatz&psig=AOvVaw0WdOv7n4Vp9n0V6arnwBMC&ust=1538843936235320")
Category.create!(name: "Rack & Internet", desc: "Essential to understanding the internet and servers", img_url: "http://as01.epimg.net/betech/imagenes/2018/02/27/portada/1519723458_873061_1519723787_noticia_normal.jpg")
Dependency.create!(dependent_id: Category.second.id, dependee_id: Category.first.id)
Dependency.create!(dependent_id: Category.fourth.id, dependee_id: Category.third.id)
Dependency.create!(dependent_id: Category.fifth.id, dependee_id: Category.first.id)

Card.create!(term: "Client", desc: "This is typically a browser like Chrome, Safari, Firefox, etc.", def: "A client is a piece of computer hardware or software that accesses a service made available by a server. ")
Card.create!(term: "URI (Uniform Resource Identifier)", desc: "This text is commonly called a URL or a web address. For example, http:// www.certskills.com/ blog is a URI that identifies the protocol (HTTP), hostname (www.certskills.com), and web page (blog).", def: "The formal and correct term for the formatted text used to refer to objects in an IP network. ")
Card.create!(term: "'rackup' command", desc: "Example: 'rackup config.ru'", def: "The command executed in the directory of our Rack Application that, with the correct filename, executes and starts our Rack Server.")
Card.create!(term: "HTTP (Hypertext Transfer Protocol)", desc: "the protocol used for transmitting web pages over the Internet.", "the protocol used for transmitting web pages over the Internet.")
Card.create!(term: "Status Code", desc: "100's - informational\n200's - success\n300's - redirect\n400's - error\n500's - server error\n}", def: "a three digit number that indicates the status of the requested resource. Status codes are separated into categories based on their first digit.")
Card.create!(term: "Static Web Page", desc: "A Web page that does not change once it is displayed on the screen by a browser.", def: "A Web page that does not change once it is displayed on the screen by a browser.")
Card.create!(term: "Rack", desc: "By wrapping HTTP requests and responses in the simplest way possible, it unifies and distills the API for web servers, web frameworks, and software in between (the so-called middleware) into a single method call. https://en.wikipedia.org/wiki/Dynamic_web_page", def: "A ruby gem that provides a minimal, modular, and adaptable interface for developing web applications in Ruby. ")
Card.create!(term: "#finish", desc: "Method called on a Rack::Response object that sends a response to the client.", def: "Method called on a Rack::Response object that sends a response to the client.")
Card.create!(term: "Path", desc: "Example: \n\n'http://quizlet.com/create-set'\n\nhas a resource/path of 'create-set'\n\n", def: "The resource that the client requests. The part of the website that is requested.")
Categorization.create!(card_id: Card.first.id, category_id: Category.fifth.id);
Categorization.create!(card_id: Card.second.id, category_id: Category.fifth.id);
Tag.create!(name: "Protocol")
Tag.create!(name: "Abstract")
CardTag.create!(card_id: Card.second.id, tag_id: Tag.first.id);
CardTag.create!(card_id: Card.first.id, tag_id: Tag.second.id);



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
Category.create!(name: "Ruby", 
                desc: 'Ruby is a language of careful balance. Its creator, Yukihiro “Matz” Matsumoto, blended parts of his favorite languages Perl, Smalltalk, Eiffel, Ada, and Lisp to form a new language that balanced functional programming with imperative programming. He has often said that he is “trying to make Ruby natural, not simple,” in a way that mirrors life.',              
                img_url: "http://codingpad.maryspad.com/wp-content/uploads/2017/04/ruby.png")
Category.create!(name: "Rails", 
                desc: 'Ruby on Rails, sometimes known as "RoR" or just "Rails," is an open source framework for Web development in Ruby, an object-oriented programming OOP) language similar to Perl and Python.', 
                img_url: "https://avatars.githubusercontent.com/u/4223")
Category.create!(name: "Javascript", 
                desc: 'JavaScript is a programming language that started off simply as a mechanism to add logic and interactivity to an otherwise static Netscape browser. In the years since its introduction, it has not only supplanted a variety of other competing languages and technologies to become the standard for browser-based programming, but it has also expanded beyond the client space to become a dominant language on the server side, as well.', 
                img_url: "https://www.vectorlogo.zone/logos/javascript/javascript-card.png")
Category.create!(name: "React", 
                desc: 'In computing, React (also known as React.js or ReactJS) is a JavaScript library[3] for building user interfaces. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications. Complex React applications usually require the use of additional libraries for state management, routing, and interaction with an API.', 
                img_url: "https://cdn-images-1.medium.com/max/1200/1*y6C4nSvy2Woe0m7bWEn4BA.png")
Category.create!(name: "Rack & Internet", 
                desc: 'Rack is the underlying technology behind nearly all of the web frameworks in the Ruby world. "Rack" is actually a few different things: An architecture - Rack defines a very simple interface, and any code that conforms to this interface can be used in a Rack application. This makes it very easy to build small, focused, and reusable bits of code and then use Rack to compose these bits into a larger application. A Ruby gem - Rack is is distributed as a Ruby gem that provides the glue code needed to compose our code.', 
                img_url: "https://camo.githubusercontent.com/e8e041ecaed297589145dc577e17765a2a267ef0/68747470733a2f2f7261636b2e6769746875622e696f2f7261636b2d6c6f676f2e706e67")
Dependency.create!(dependent_id: Category.second.id, dependee_id: Category.first.id)
Dependency.create!(dependent_id: Category.fourth.id, dependee_id: Category.third.id)
Dependency.create!(dependent_id: Category.fifth.id, dependee_id: Category.first.id)

Card.create!(term: "Client", desc: "This is typically a browser like Chrome, Safari, Firefox, etc.", def: "A client is a piece of computer hardware or software that accesses a service made available by a server. ")
Card.create!(term: "URI (Uniform Resource Identifier)", desc: "This text is commonly called a URL or a web address. For example, http:// www.certskills.com/ blog is a URI that identifies the protocol (HTTP), hostname (www.certskills.com), and web page (blog).", def: "The formal and correct term for the formatted text used to refer to objects in an IP network. ")
Card.create!(term: "'rackup' command", desc: "Example: 'rackup config.ru'", def: "The command executed in the directory of our Rack Application that, with the correct filename, executes and starts our Rack Server.")
Card.create!(term: "HTTP (Hypertext Transfer Protocol)", desc: "the protocol used for transmitting web pages over the Internet", def: "the protocol used for transmitting web pages over the Internet")
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



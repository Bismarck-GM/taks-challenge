# Tasks-Challenge

## Built With
- Ruby *=> 2.7.1*
- Ruby On Rails *=> 6.1.3*
- RSpec *=> Testing Tool*
- Cocoon *=> For dinamically creating Form Partials.*
- Cocoon-Vanilla-JS *=> To avoid the installation of jQuery for only one dependency.*
- Bootstrap 5 *=> To add some basic style*

## Usage

To have this app on your pc, you need to:
* have Ruby & Ruby on Rails installed in your computer with the versions specified in 'Built with'
* [Download](https://github.com/Bismarck-GM/tasks-challenge/archive/refs/heads/app-v1.zip) or clone this repo:
  - Clone with SSH:
  ```
    git@github.com:Bismarck-GM/tasks-challenge.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/Bismarck-GM/tasks-challenge.git
  ```
* and open the terminal inside the repo, checkout to current branch and run the bundler
  - ```$ git checkout app-v1``` *Run fetch if needed*
  - ```$ bundler install --without production```
* then, run rails db:migrate. This creates the database with the corresponding tables, columns and associations
  - ```$ rails db:migrate```
* this project contains seed to set up the Templates. Run:
  - ```$ rails db:seed```
* then, run rails s. This will start the server at localhost `http://127.0.0.1:3000/`
  - ```$ rails s```
* and finally, you can test it in the console by running
  - ```$ rails console --sandbox```

<!-- AUTOMATED TEST -->
### Automated Test

I use RSpec to perform tests.

To run them just go to the root folder and use ```rspec``` or ```bundle exec rspec```

## Author
👤 **Gerónimo Morisot**

- Github: [@Bismarck-GM](https://github.com/Bismarck-GM)
- Twitter: [@GeronimoMorisot](https://twitter.com/GeronimoMorisot)
- Linkedin: [geronimomorisot](https://linkedin.com/in/geronimomorisot)


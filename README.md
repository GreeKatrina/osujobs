# List Jobs at OSU

By [Katrina Theodosopoulos](mailto:katrinacodes@gmail.com)

## Instructions

1. Make sure you have Ruby and Rails installed.
2. `$ git clone https://github.com/GreeKatrina/osujobs.git`
3. `$ cd osujobs`
4. `$ bundle`
5. `$ rake db:migrate`
6. Sync database: `$ bundle exec rake sync:jobs` (Shouldn't take more than 5 minutes.)
7. `rails server`
8. Go to `localhost:3000` in your browser.
9. Enjoy!

## Technologies Used

* [Bootstrap](https://getbootstrap.com/)
* [Isotope](https://isotope.metafizzy.co/)

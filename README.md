Tourism Portal
================

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is open source and supported by subscribers. Please join RailsApps to support development of Rails Composer.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.0
- Rails 4.2.1

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

API
-------

### endpoint:
http://tourism-portal.be/api/

### pages
*GET pages.json* : a list of pages

### posts
*GET posts.json* : a list of posts

### events
*GET events.json* : a list of events

```json
{
  events: [
    {
      event: {
      id: 4,
      title: "Titre de l'événement",
      excerpt: "Résumé de l'événement",
      content: "Description étendue de l'événement",
      published_at: "2015-03-20 15:59:00 UTC",
      start_time: "2015-03-20 16:05:00 UTC",
      end_time: "2015-03-20 16:05:00 UTC",
      street: "Rue du musée 11",
      zipcode: 6630,
      city: "Martelange",
      coordinates: [
        49.8309,
        5.73766
      ]
      }
    },
    {}
  ]
}
```


Credits
-------

License
-------

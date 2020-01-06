# Eventide on Rails

Eventide on Rails brings pub/sub, event sourcing, evented systems, and messaging to Ruby on Rails apps. Built on <a href="https://github.com/message-db/message-db" target="_blank">Message DB</a> and the <a href="https://blog.eventide-project.org/articles/fukuoka-ruby-award-for-social-impact/" target="_blank">Ruby Award winning</a> Eventide Project, Eventide on Rails blends the best of web app development and evented systems and autonomous services into a single stack.

Using Eventide on Rails, developers can:

- Record business events from within Rails controllers, models, background jobs, mailers, and service objects
- Record an audit trail of changes to ActiveRecord models as an event stream
- Apply data changes made in external services to Rails application data
- Bring event sourcing to Rails apps
- Project a stream of events onto an ActiveRecord model
- Send messages to external pub/sub services via Message DB
- Receive messages from external services via Message DB

## Status

**In Development**

Eventide on Rails is currently in development and will be released in the first quarter of 2020.

## License

The `eventide-rails` library is released under the [MIT License](https://github.com/eventide-project/eventide-rails/blob/master/MIT-License.txt).

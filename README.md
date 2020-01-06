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

Eventide on Rails creates a harmonious transition between autonomous evented services and web applications empowering developers to read and write to and from Message DB, to project event-sourced entities from event streams, and to interact with external services via commands and events using the ActiveRecord Postgres connection. The implementation will allow the co-hosting of the Message DB message store database with a Postgres application database in Rails, and integrates with ActiveRecord migrations to manage the message store data,

CRUD operations in ActiveRecord will be executed in the same database transaction as the recording of events via Eventide's writer, making the recording of events atomic with Rails application database operations.

``` ruby
user_created_event = UserCreated.build(params)
ActiveRecord::Base.transaction do
  user = User.create(params)
  stream_name = "user-#{user.id}"
  eventide_writer.write(user_created_event, stream_name)
end
```

All foundational Eventide features will be extended to Rails apps, including <a href="http://docs.eventide-project.org/user-guide/reading.html" target="_blank">readers</a>, <a href="http://docs.eventide-project.org/user-guide/writing/message-writer.html" target="_blank">writers</a>, <a href="http://docs.eventide-project.org/user-guide/projection.html" target="_blank">projections</a>, and even <a href="http://docs.eventide-project.org/user-guide/entity-store/" target="_blank">entity stores</a> and <a href="http://docs.eventide-project.org/user-guide/handlers.html" target="_blank">handlers</a>.

## Status

**In Development**

Eventide on Rails is currently in development and will be released in the first quarter of 2020.

## License

The `eventide-rails` library is released under the [MIT License](https://github.com/eventide-project/eventide-rails/blob/master/MIT-License.txt).

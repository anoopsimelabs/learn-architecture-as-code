workspace {
    model {
        user = person "User"
        system = softwareSystem "Learn Architecture as Code" {
            web_app = container "Web Application" "React" "Allows users to interact with the system via a web browser."
            api = container "API Server" "Node.js/Express" "Handles business logic and API requests."
            db = container "Database" "PostgreSQL" "Stores persistent data for the application."
            message_broker = container "Message Broker" "RabbitMQ" "Handles asynchronous messaging between services."
            worker = container "Background Worker" "Node.js" "Processes background jobs and tasks."
        }
        user -> web_app "Uses"
        web_app -> api "Uses" "HTTPS/REST"
        api -> db "Reads from and writes to" "SQL"
        api -> message_broker "Publishes events to" "AMQP"
        worker -> message_broker "Consumes events from" "AMQP"
        worker -> db "Reads from and writes to" "SQL"
    }
    views {
        // Container view for MySystem
        container system {
            include *
            autolayout lr
        }
    }
}
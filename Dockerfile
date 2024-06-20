# Use the official RabbitMQ image
FROM rabbitmq:3-management

# Enable the management plugin
RUN rabbitmq-plugins enable --offline rabbitmq_management

# Expose ports for AMQP protocol and management UI
EXPOSE 5672 15672

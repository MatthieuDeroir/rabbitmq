FROM rabbitmq:3.8.0-management

# Set environment variables to configure RabbitMQ
ENV RABBITMQ_NODENAME=rabbit@localhost \
    RABBITMQ_DEFAULT_USER=rabbitmq \
    RABBITMQ_DEFAULT_PASS=rabbitmq 

# Copy the custom configuration file
COPY rabbitmq.conf /etc/rabbitmq/

# Change ownership of the config file
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

# Run as the rabbitmq user
USER rabbitmq:rabbitmq

# Expose necessary ports
EXPOSE 5672 15672

# Start RabbitMQ
CMD ["rabbitmq-server"]

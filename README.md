# Neuron Data Browser Container Deployment
Docker Compose and facilities to bring up all containers, minus legacy services.

### Initial Deployment

Use the initialize compose compose definition to define data volumes and bring database servers up without any services.
  This is generally used once to migrate and seed databases before services run.
  
```./initialize.sh```

Perform migrations and seed the database.  
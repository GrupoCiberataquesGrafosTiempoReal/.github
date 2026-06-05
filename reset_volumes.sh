# Delete volumes
sudo rm -rf .volumes

# Recreate volumes
mkdir -p .volumes/kafka .volumes/neo4j/{data,logs}

# Prune Docker volumes
docker volume prune --force
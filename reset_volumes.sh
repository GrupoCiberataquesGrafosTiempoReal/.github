# Delete volumes
rm -rf .volumes

# Recreate volumes
mkdir -p .volumes/kafka .volumes/neo4j/{data,logs}

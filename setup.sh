# Download compose file
curl -L -O https://raw.githubusercontent.com/GrupoCiberataquesGrafosTiempoReal/.github/main/docker-compose.yml

# Clone components repos
git clone https://github.com/GrupoCiberataquesGrafosTiempoReal/data-producer.git
git clone https://github.com/GrupoCiberataquesGrafosTiempoReal/data-enricher.git

# Create persistency volumes
mkdir -p .volumes/kafka .volumes/neo4j/{data,logs}

# Download test data into data-producer
curl -L "https://github.com/GrupoCiberataquesGrafosTiempoReal/.github/archive/main.tar.gz" | tar -xvz --strip-components=1 -C ./data-producer ".github-main/data"

# Download reset volumes script
curl -L -O https://raw.githubusercontent.com/GrupoCiberataquesGrafosTiempoReal/.github/main/reset_volumes.sh
chmod +x reset_volumes.sh
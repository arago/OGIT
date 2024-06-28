find . -type f ! -name 'graphit-ontology.*' -name "*.ttl" | xargs java -jar bin/ogit-validator.jar

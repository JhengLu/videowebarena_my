export DATASET=videowebarena
server_domain=158.130.4.152
export CLASSIFIEDS="${server_domain}:9980"
export CLASSIFIEDS_RESET_TOKEN="4b61655535e7ed388f0d40a93600254c"  # Default reset token for classifieds site, change if you edited its docker-compose.yml
export SHOPPING="${server_domain}:7770"
export REDDIT="${server_domain}:9999"
export WIKIPEDIA="${server_domain}:8888"
export HOMEPAGE="${server_domain}:4399"
export SHOPPING_ADMIN="${server_domain}:7780/admin"
export GITLAB="${server_domain}:8023"
export MAP="${server_domain}:3000"

python scripts/generate_test_data.py
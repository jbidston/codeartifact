cat > ./aws <<EOL
[default]
region = $ENV_DEFAULT_REGION
aws_secret_access_key = $ENV_SECRET_ACCESS_KEY
aws_access_key_id = $ENV_ACCESS_KEY_ID
EOL

export AWS_SHARED_CREDENTIALS_FILE=./aws

aws codeartifact login --tool npm --repository tvg-repository --domain tvg --domain-owner ${AWS_ACCOUNT_ID}

gpg --output pubring.gpg --export 2F053ADC
gpg --output secring.gpg --export-secret-key 2F053ADC
openssl aes-256-cbc -pass pass:$ENCRYPTION_PASSWORD -in secring.gpg -out secring.gpg.enc
openssl aes-256-cbc -pass pass:$ENCRYPTION_PASSWORD -in pubring.gpg -out pubring.gpg.enc

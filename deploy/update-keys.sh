openssl aes-256-cbc -pass pass:$ENCRYPTION_PASSWORD -in ~/cern-github-bot.0x2F053ADC.private.key -out secring.gpg.enc
openssl aes-256-cbc -pass pass:$ENCRYPTION_PASSWORD -in ~/cern-github-bot.0x2F053ADC.public.key -out pubring.gpg.enc

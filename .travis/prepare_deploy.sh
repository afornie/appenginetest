#!/bin/bash

openssl aes-256-cbc -K $encrypted_a6c05f649a4b_key -iv $encrypted_a6c05f649a4b_iv -in .appcfg_oauth2_tokens_java.enc -out .appcfg_oauth2_tokens_java -d
cp .appcfg_oauth2_tokens_java ~
wget https://storage.googleapis.com/appengine-sdks/featured/appengine-java-sdk-1.9.23.zip
unzip -q appengine-java-sdk-1.9.23.zip

#! ~bash

# Change working directory
cd D:\GitHub\ZeroToCognitive\Chapter05\Documentation

# Upload industry file to train a NLC 
curl -u "a2207afa-b148-4d8b-88df-c29f324a4b92":"43AIYtcJLE7i" -F training_data=@industry.csv -F training_metadata="{\"language\":\"en\",\"name\":\"Industry2016\"}" "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers"

# {
#  "classifier_id" : "90e7acx197-nlc-4639",
#  "name" : "Industry2016",
#  "language" : "en",
#  "created" : "2017-03-26T18:11:49.285Z",
#  "url" : "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/90e7acx197-nlc-4639",
#  "status" : "Training",
#  "status_description" : "The classifier instance is in its training phase, not yet ready to accept classify requests"
# }

# Check the status of your classifier by entering the following command:
curl -u "your user name":"your password" "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/your-NLC-Classifier-id"
curl -u "a2207afa-b148-4d8b-88df-c29f324a4b92":"43AIYtcJLE7i" "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/90e7acx197-nlc-4639"

# List all of your classifiers:
curl -u "your user name":"your password" "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers"

# Delete a specific classifier:
curl -X DELETE -u "your user name":"your password" "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/
classifiers/your-NLC-Classifier-id"

# Install requiered libraries
npm install

# Start application
node index.js


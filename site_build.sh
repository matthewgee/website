#!/bin/bash

# This is a shell script to build a data trust site from the template

echo "What the name of your project in a single string with no spaces as it would appear in a directory name?"

read -p "projectname: " project_name

echo "What is the capitalized name for your project with spaces as it would appear in a sentence?"

read -p "Project Name: " long_project_name

echo "What is the capitalized name of the organization that is leading the project?"

reach -p "Lead Organization: " lead_organization

echo "What is the project's tagline?"

read -p "Project Tagline: " project_tagline

cd ..

mkdir $project_name

cp /website $project_name
 
cd $project_name

rename 's/INSERT_PROJECT_NAME/$project_name/' *

#Rplace project name in all files and file names
grep -rli 'INSERT_PROJECT_NAME' * | xargs -i@ 
sed -i 's/INSERT_PROJECT_NAME/$project_name/g'
#TODO: Add file name replacement

#Replace nonproject name
grep -rli 'INSERT_LONG_PROJECT_NAME' * | xargs -i@ 
sed -i 's/INSERT_LONG_PROJECT_NAME/$long_project_name/g'

#Replace lead organization name
grep -rli 'INSERT_PROJECT_LEAD_ORG_NAME' * | xargs -i@ 
sed -i 's/INSERT_PROJECT_LEAD_ORG_NAME/$lead_organization/g'


#Replace lead organization name
grep -rli 'INSERT_PROJECT_PROJECT_TAGLINE' * | xargs -i@ 
sed -i 's/INSERT_PROJECT_TAGLINE/$project_taglineg'


#Create If loop to reverse config 

#Prompt to create each of the following: A github org, a project webiste url, a project S3 bucket, a project Gitter name, a Google Analytics tracking ID

INSERT_PROJECT_GITHUB_ORG

INSERT_PROJECT_URL

INSERT_PROJECT_DOCS_URL

INSERT_PROJECT_S3_URL

INSERT_PROJECT_GITTER_NAME

INSERT_GOOGLE_ANALYTICS_TRACKING_ID

INSERT_CONSENT_TRACKING_JS_URL

#Create a site twitter account
INSERT_PROJECT_TWITTER_HANDLE

#Create a mailchimp listserve and embed it in the home.html page
INSERT_LIST_MANAGE_URL

#Image Assets you should have

#flavacon.icn
INSERT_PROJECT_FLAVICON

#Field Guide Image
INSERT_PROJECT_FIELDGUIDE_IMAGE

#Lead organization logo
INSERT_PROJECT_LEAD_ORG_LOGO_URL

INSERT_PRIVACY_POLICY_URL

INSERT_TERMS_OF_USE_URL

INSERT_PROJECT_DISCUSSION_FORUM

#Create an events calendar on Google
INSERT_EVENTS_CALENDAR_URL

#Create a trello board for managing user stories
INSERT_PROJECT_USER_STORY_TRELLO_BOARD

#Add an explainer video to the banner by adding a `video.jpg` to the /content directory
#Add a visual diagram explaining the project by adding a `diagram.png` to the /content directory
#Add SVG and PNG logos to the /assets/img/supporters directory
#Add contributing team member pictures to the /assets/img/team directory
#Add additional images to the /assets/img directory
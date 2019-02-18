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
sed -i 's/INSERT_PROJECT_TAGLINE/$project_tagline/g'


echo "Remember to update the site_config.ini file with the rest of the site details."


#Add an explainer video to the banner by adding a `video.jpg` to the /content directory
#Add a visual diagram explaining the project by adding a `diagram.png` to the /content directory
#Add SVG and PNG logos to the /assets/img/supporters directory
#Add contributing team member pictures to the /assets/img/team directory
#Add additional images to the /assets/img directory
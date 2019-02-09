# INSERT_LONG_PROJECT_NAME Website

[![Build Status](https://travis-ci.org/INSERT_PROJECT_NAME/website.svg)](https://travis-ci.org/INSERT_PROJECT_NAME/website)

This is the code for the INSERT_LONG_PROJECT_NAME website, hosted at INSERT_PROJECT_URL

## Building new site from site template
This template repo is intended to make it easy to develop a website for BrightHive Strategic Initiatives. To develop the new site from the template, do the following:

- Fork the template repository from the BrightHive GitHub repo
- Clone the forked template repository locally
- `shell site_build.sh`
- Respond to each prompt
- Add and commit all changes
- Create new repository on your project's github organization
- Set the new repository as the new remote origin 
- `git push`

## Configuring

### Adding a Project Supporter

	Example: Adding the Sloan Foundation

	- Add supporter logo in the `/assets/img/supporters` directory
	- Update the `/databags/supporters.ini` file with the following info on the supporter

		```
		[sloan]
		name = Sloan Foundation
		logo = sloan-foundation.svg
		logo_width_multiplier = 16.019
		url = http://www.sloan.org/

		```
### Adding a Curator to the site
	
	- Add the following contributor information to the `/databags/curators.ini` file
	```
	[table-schema]
	pwalsh = Paul Walsh
	rufuspollock = Rufus Pollock
	```

### Adding Implementations to the Site

	- Get the URLs for any implementation's repository
	- Add the URLs to the `databags/implementations.ini` directory like the following example
		```
		[data-package]
		Python = https://github.com/frictionlessdata/datapackage-py
		JavaScript = https://github.com/frictionlessdata/datapackage-js
		```
### Adding Project Users to the Software Page

	- Create a directory with the name of the software
	- Add a `contents.lr` file to the the new directory in the following format
	```
	title: DataHub.io
	---
	description: A platform for finding, sharing and publishing high quality data online.
	---
	link1: https://datahub.io
	---
	link1_label: Website
	---
	tool_category: platforms
	---
	link2: https://github.com/datahubio/qa
	---
	link2_label: Repository
	---
	featured: yes
	---
	tags: service
	---
	priority: 3
	```

## Contributing

- Install Lektor
- Install a recent Node
- `npm install`
- `npm run build`
- `lektor server`

### Updating the specs

- update `package.json:specsBranchOrTag`
- run `npm run build`

See the [Open Knowledge International coding standards](https://github.com/okfn/coding-standards), which apply for contributions to this website.

### Contributing Translations

We are keen on having INSERT_LONG_PROJECT_NAME content translated and made available in different languages. Here is how to submit your content translations for review:

#### Open an issue

- [Open a new issue](https://github.com/INSERT_PROJECT_GITHUB_ORG/website/github/issues/new?title=New%20Content%20Translations%20For%20Review&body=bar)
- Specify pages that have been translated, and provide a link to the translated content

#### As a Pull Request

- Clone this repository.
- Find the folder that has content you want to translate
- Create a `contents+LANG.lr` file in the folder above, where LANG is the two-letter ISO-code of the language you want to translate content to i.e. `fr` for French, `sw` for Swahili, `zh` for Chinese, etc
- Add your translated text in the file above, in Markdown format.
- Submit a pull request.

Your submission will then undergo a review process, and once edits and suggestions have been incorporated, your translation will be added to the INSERT_LONG_PROJECT_NAME website.

All content on the INSERT_LONG_PROJECT_NAME website is made available under the CC-BY license.

### CSS

Style changes should be made to the SCSS files. Use `grunt` to watch for changes, and compile to CSS.

### Notes

If you get errors like below, ensure that there are not codeblocks in content with mentioned syntax (`yaml=` in this case). Make sure that you `npm run build` before checking to pull the latest specs documents. Lektor errors could be confusing because we use the TOC plugin - so it could show the same error for all documents while the real error is only inside one of them.

```
E index.html (ClassNotFound: no lexer for alias u'yaml=' found)
```

###Site Credit

This site template was developed by the great team at Frictionless Data. Check out their project (here)[http://frictionlessdata.io]
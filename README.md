## oneforty app data

Data on 4,000+ social media apps along with screenshots and reviews from oneforty. The data is being provided under an open license (see below).

The data was collected as part of running oneforty.com, and will hopefully will be useful to others.

Questions / Comments - contact [Mike Champion](http://graysky.org) ([@graysky](http://twitter.com/graysky)).

### License

This data is licensed under the [Creative Commons Attribution](http://creativecommons.org/licenses/by/3.0/) license ([http://creativecommons.org/licenses/by/3.0/](http://creativecommons.org/licenses/by/3.0/)).

It includes a requirement for attribution (ex. "social media application data provided by [HubSpot](http://www.hubspot.com)").

### Data and Schema

The following describes the schema for the data files. Each file is tab-delimited and is encoded in utf-8. There is an example importer included that uses Ruby 1.9's CSV library to parse each document if you need a guide.

In addition to the data most items have an accompanying icon in the images/items directory. They are named like [item id]_[style].png where style is either "thumb" (100pxx100px) or "original" (no fixed dimensions). Many items have associated screenshots in the images/screenshots directory. 

- items (aka apps)
	- id - database id of the app.
	- name - app name.
	- tagline (optional) - short (140 character) description of the app.
	- twitter account - if the app registered a related twitter account.
	- url - URL for the app's homepage.
	- permalink - generated permalink used as the slug on oneforty's urls.
	- rank score - an opaque estimate of popularity, ranging from 0.0 - 100.0.
	- average rating - average rating from users from 0 to 5.0. Note an average rating of 0.0 means no ratings (since the lowest rating is a 1 star)
	- created at - UTC timestamp when the app was created.
	- platform1/platform2/platform3 - list of up to 3 platforms (iPhone, Mac, etc). List of platforms is a fixed set.
	- category1/category2/category3 - list of up to 3 categories (Clients, Analytics, etc). List of categories is a fixed set.
	- tags - User-generated tags seperated by a comma. Free-form values.
	- developer name - if known, the name of the app developer
	- developer twitter - if known, the twitter handle of the app developer
	- description - long form app description. Note that descriptions can have carridge-return/line-feed characters in them and some html tags.

- reviews
	- id - database id of the review.
	- item_id - id of the reviewed app.
	- reviewer name - name of the reviewer.
	- reviewer twitter - twitter handle of the reviewer
	- rating - rating from 1 to 5. Note: rating is optional.
	- quality score - higher score indicates it was valuable to other users. A score of 0 is neutral. Many spammy reviews have been removed already.
	- created at - UTC timestamp.
	- review - long form body of the review.

- screenshots - developer or user supplied app screenshots.
	- id - database id of the screenshot
	- item_id - id of the screenshoted app.
	- title - caption for the screenshot.
	- content type - content type of the screenshot (ex image/png, image/jpeg)
	- original file name - file name of the "original"-sized screenshot in images/screenshots
	- thumb file name - file name of the "thumb"-sized (100x100) screenshot in images/screenshots
	- large file name - file name of the "large"-sized (400x400) screenshot in images/screenshots
	- created at - UTC timestamp.

### Opening in Excel

1. Import the .txt file into Excel
2. In Text Import Wizard, on 1st screen choose "Delimited"
3. Check "Tab" as the Delimiter
4. Choose "General" as the field type.

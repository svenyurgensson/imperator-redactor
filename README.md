# Another one Imperavi Javascript Editor Engine for Rails >= 3.2

This project is a fork of original imperavi-rails gem: https://github.com/tanraya/imperavi-rails

My point was to simplify things and to provide up-to-date support of last available imperavi javascript editor codebase.

What is Imperavi? Imperavi is open-source, lightweight and really pretty-looking wysiwyg editor written with JQuery. Look at the demo page: http://redactorjs.com/ . Do you like it?

I created this mountable engine with Imperavi so now you can easily integrate this editor into your app.

## Installation

Put this gem into your Gemfile and run `bundle install`

```ruby
gem 'imperator-redactor', git: 'https://github.com/svenyurgensson/imperator-redactor.git'
```

Then run install generator:

```bash
rails generate imperator_redactor:install
```

And you're done!

## Usage

Add this helpers into the your view that contains a form:

```erb
<%= include_imperator_stylesheet %>
<%= include_imperator_javascript %>
<%= imperator :page_article, {} %>
```

In this example `page_article` is an id of textarea field. You can pass additional options to `imperator` helper as second argument. See the full list of options here: http://redactorjs.com/docs/settings/

In addition you can set redactor style with option: `style: 'wym'` (available styles are: `'standart'`, `'wym'`, `'docstyle'`)

## Deal with images

Image uploading at the server side is not a part of the imperator-redactor. You have to implement this functionality in your application by yourself. It's easy. Read the docs below.

You can run install generator:

```bash
rails generate imperator_redactor:scaffold images
```

Which produce images_controller.rb scaffold as a base point to deal with a images inserting and uploading.


# Contribute

I would appreciate any participation in the project. Any additions, fixes and ideas are welcome!

## How to contribute:

* Fork the project on Github
* Create a topic branch for your changes
* Ensure that the changes in your branch are as atomic as possible
* Create a pull request on Github

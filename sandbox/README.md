# Sandbox

## Running Things

First, to make sure you have the local dependencies you need:

    npm install

To continuously process your scripts and start a webserver on [http://localhost:8000](http://localhost:8000), run:

    lineman run

To run jasmine specs (keep `lineman run` going), execute:

    lineman spec

Which will open Chrome, if you have it. You can change the browsers that launch in `config/spec.json`.

To run jasmine specs headlessly (just once, not listening for file changes, as you would in a continuous integration environment):

    lineman spec-ci

The above will require that you have [PhantomJS](http://phantomjs.org) installed.

## Don't panic

If none of the above is working for you, just open this file named `just-in-case-specrunner.html` in a browser. It's already set up to look at the `app/js/stuff.{js,coffee}` and `spec/stuff-spec.{js,coffee}`.

[Note that Chrome's security will prevent CoffeeScript from being compiled over the "file://" protocol, so there's also a shell script in `<repo_root>/bin/` that will launch Chrome without security.]

## Editing files

To keep things simple, for our activities today, just add any production sources you write to `app/js/stuff.coffee` (or `app/js/stuff.js` if you prefer JS) and any specs to `spec/stuff-spec.coffee` (or `spec/stuff-spec.js`). If you have `lineman run` running, it'll compile and concatenate them for you, and if you leave `lineman spec` running, it will continuously run your specs.





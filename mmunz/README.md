This is a frontend structure as it is found in most of my projects.

* I try to avoid too much JavaScript and bundler magic and like to use SCSS.
* I like to keep files of the same type together, e.g. have all SCSS files in one place and not scattered in components.
* Naming might not be optimal in some places ;)


## Layouts/Templates/Partials
Nothing special here, most of the time there are folders like:

* Page: everything Page related, like Header and Footer
* Content: everything for Content Elements (FSC), also overwrite existing FSC layouts/templates/partials here
* Extensions: well, for extension templates etc.
* more as needed, e.g. Mail

## JavaScript
To keep it small and simple and because this is enough for many simpler use cases I usually don't compile/transpile JS
but just include needed files and libs which are directly stored in Public/JavaScript/Frontend

## CSS/SCSS

CSS is build from a main.scss file in Private/SCSS/Frontend/

See build/ for some very simple build scripts (Look Mam, no task runner or packer needed, just some npm packages and bash scripts)

## Icons

I really like svg-symbol files, because they are very cachable, small and you can style the icons with css.

Very simple scripts to create those can also be found in build/


find . -type l -maxdepth 1 | xargs -i basename {} > .gitignore
find extension -type l -maxdepth 1 >> .gitignore
find settings -type l -maxdepth 1 >> .gitignore
find design -type l -maxdepth 1 >> .gitignore
find settings/siteaccess -type l -maxdepth 1 >> .gitignore

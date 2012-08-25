# eZB dummy project

Dummy project for testing how to maintain your ezpublish community project 
updated with the last build with submodules 

It will also allow to not have repeated code in your projects and also update
all of them at once. 

iIn an ezpublish you should not take any of the provided files. So, maybe you
don't want to track them either. 

## The goal

When working with ezpublish we always use a VCS. But our idea is create a repo
only for the files you will be working on. In an ezpublish extension, you really
only need working under extension and settings folder. 

Normally, you will add one or more extensions to the extension folder. Also, the install
process will create some files under settings folder, based in the options you have
choosen during the install process. 

## Two repos and the problem 

We'll work with two repos. we created http://github.com/crevillo/ezc.git
We'll update this repo whenever ezcommunity team release a build. (2012.5, 2012.6...)

Second repo will be for the project we're working on. 
rse
We may think in cloning first one, and adding submodules for the extension and settings
in the repo project, but this have some problems. 

ezcommunity install provides already an extension (with some extensions inside) folder, 
and also a settings one. So, if you wanna add some extensions as submodules, as submodules 
needs to poing to the root of a repo, you will need to create a repo for every extension 
you need, and that probably will be too hard to maintain.
Same goes for settings folder. 

## The solution

Based on https://gist.github.com/704810, i started to tried a solution based on 
symnlinks. The idea is to have the ezpublish source code in a folder under your root one
and symlinks almost all the files contained in it to the root folder. Thats
why we define a submodule pointing to the ezcommunity code. 

We won't symlink the folders where we will be working though. As said, these are
settings and extensions. We'll create this folder and we'll add our code in there. 
This code will be the one will be keeping in the second repo. 
But also, we will do symlinks to the folders cointained in extension folder that 
resides in our ezcommunity submodule 

The setup.sh script takes care of this. Please refer to it and see comments
for better understading. You will need to execute it after cloning the repo

## Ignoring files

Finally, in our project, we'll ignore all the files we won't wanna touch. 
we provide also a small script for making the gitignore stuff more quickly. 

## Testing yourself

* Fork this repo
* Clone it with git clone git@github.com:[youruser]/ezb.git
* Init and update submodule with 
  git submodule init
  git submodule update
* run ./setup.sh for the symlinking process
* Star your ezpublish install as you always do. 


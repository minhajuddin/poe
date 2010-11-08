poe
===

Utility to configure a cijoe for a repository

  - it copies `.build-failed` `.build-worked` files from your `~/.poe/` directory to
    your `.git/hooks` directory

TODO
====
  1. Create a directory called `~/.poe` on installation and copy the `hooks`
     directory to `~/.poe` also copy the config file `poe.yml` to 
  2. Change the script to check the config file for the default runner and the
     *to* email id
  3. Finally, make it wireup cijoe so that it starts as a deamon on login

Copyright
=========

Copyright (c) 2010 Khaja Minhajuddin. See LICENSE for details.

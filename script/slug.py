#!/usr/bin/env python
# slugify the post title
from slugify import slugify
from sys import argv

title = argv[1]
the_slug = slugify(title)
print the_slug

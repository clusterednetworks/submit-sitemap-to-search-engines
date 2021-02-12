#!/bin/bash
# this script will submit your sitemap files to google and bing search engines on a regular basis
# simple edit the urls you wish to submit and setup a cronjob to submit daily or weekly as required
# for more information contact clusterednetworks.com

echo -------------  Pinging the search engines with the sitemap.xml url, starting at $(date): -------------------

echo Pinging Google
wget -O- https://www.google.com/webmasters/tools/ping?sitemap=https://www.clusterednetworks.com/sitemap.xml
wget -O- https://www.google.com/webmasters/tools/ping?sitemap=https://apps.clusterednetworks.com/sitemap.xml

# BING requires you to encode the url using a URL encoding tool (see https://meyerweb.com/eric/tools/dencoder/ )
echo Pinging Bing...
wget -O- https://www.bing.com/ping?sitemap=https%3A%2F%2Fwww.clusterednetworks.com%2Fsitemap.xml
wget -O- https://www.bing.com/ping?sitemap=https%3A%2F%2Fapps.clusterednetworks.com%2Fsitemap.xml

echo DONE!

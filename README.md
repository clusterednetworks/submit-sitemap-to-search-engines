# submit-sitemap-to-search-engines
This shell script will submit your sitemap files to google and bing search engines on a regular basis
simply edit the urls you wish to submit and setup a cronjob to submit daily or weekly as required
for more information contact clusterednetworks.com

# Usage:

1. Pull up a terminal or SSH into the target server.

2. Logon as root

<code>sudo -i</code>

3. Download the script.

<code>wget https://raw.githubusercontent.com/clusterednetworks/submit_sitemap_to_search_engines.sh</code>

4. Edit the url to the sitemap you wish to submit to match your environment.
<pre>
wget -O- https://www.google.com/webmasters/tools/ping?sitemap=https://www.clusterednetworks.com/sitemap.xml
</pre>

5. Make the script executable

<code>chmod +x submit_sitemap_to_search_engines.sh</code>

6. Run the script.

<code>./submit_sitemap_to_search_engines.sh</code>

8. Setup a cronjob to run the script daily/weekly if you choose.
<pre>
1 1   * * * /etc/submit_sitemap_to_search_engines.sh >/dev/null 2>&1
</pre>

curl \
  'https://www.badino-overath.de/proxy.php?csurl=https%3A%2F%2Fshop.badino-overath.de%2Fde%2Fjson_api_v1%2Fvisitor_count%3Flocation_id%3D2' \
  -H 'Accept: application/json' \
  -H 'User-Agent: Badino-Scraper/1.0 (+https://github.com/Chase22/badino-stats)' \
  -o stats.json \
  -L


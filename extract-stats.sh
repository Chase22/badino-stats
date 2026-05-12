# Check if stats.json contains success as the return code
# The jq returns nothing if the value is something other than "success"
if [ -z "$(jq '.return_code | select(. == "success")' stats.json)" ]; then
  echo "Expected status code success. Got: $(jq '.return_code' stats.json))"
  exit 1
fi

# Extract data as 'date,location,current,max'
echo "extracting data"
stats=$(jq -r '.data[0].area_list[]? | "\(now|todate),\(.area_name),\(.customer_amount),\(.customer_amount_max)"' stats.json)

if [ -z "$stats" ]; then
  echo "No stats found"
  exit 0
fi

echo "$stats" >> stats.csv
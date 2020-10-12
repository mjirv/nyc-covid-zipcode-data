## NYC COVID Data by Zip Code

### What is this?
This repository processes COVID data by Zip Code from New York City into one file with historical numbers. That way, we can see where cases are increasing, decreasing, and what historical trends looked like by zipcode.

### Quickstart

1. Clone https://github.com/nychealth/coronavirus-data to create a `coronavirus-data` folder
2. In the `processing` folder, run `./parse-data.sh` (for all-time) or `./parse-data.sh -N` where N is replaced with the number of days you want to add (e.g. `./parse-data.sh -2` will add data for the 2 most recent days
3. The processed data will be in `processing/output.csv`

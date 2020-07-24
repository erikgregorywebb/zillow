# import
url = 'https://raw.githubusercontent.com/erikgregorywebb/zillow/master/data/zillow-utah-zip-code-zhvi-time-series-raw.csv'
download.file(url, 'zillow.csv')
raw = read_csv('zillow.csv')
glimpse(raw)

# reshape
zillow_ut = raw %>% 
  select(-SizeRank, -StateName, -RegionType) %>%
  gather(Month, Value, -RegionID, -RegionName, -State, -City, -Metro, -CountyName)

# export
write_csv(zillow_ut, 'zillow_ut.csv')

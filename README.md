# Test-ACLGroupDescription
## Version 1.0
### The script validates the group description with the provided pattern, if the parameter set to true is, then it is going to list groups where the pattern matches. If the parameter is false, then the groups where the pattern not match. Required parameters: SearchBase, Pattern and Filter.
### -------------------------- EXAMPLE 1 --------------------------
### Test-GroupDescription -Searchbase "OU=Users, DC=Contoso, DC=COM" -Pattern "([A-Z])\w+" -Filter * -Match
### -------------------------- EXAMPLE 2 --------------------------
### Test-GroupDescription -Searchbase "OU=Users, DC=Contoso, DC=COM" -Pattern "([A-Z])\w+" -Filter *
##### *last updated 20.12.2020*

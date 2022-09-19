pip:
	pip list

dbx:
	dbx --version

workspace:
	@databricks workspace ls /Users/linus.mcmanamey@eliiza.com.au

clusters:
	@databricks clusters list --output JSON | jq '[ .clusters[] | { name: .cluster_name, id: .cluster_id } ]'

repos:
	@databricks repos list

update_repos:
	@databricks repos update --repo-id 1917648285147613 --branch main

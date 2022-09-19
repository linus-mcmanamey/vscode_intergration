pip:
	pip list

dbx:
	dbx --version

configure:

	@databricks configure --token

workspace:
	@databricks workspace ls /Users/linus.mcmanamey@eliiza.com.au

clusters:
	@databricks clusters list --output JSON | jq '[ .clusters[] | { name: .cluster_name, id: .cluster_id } ]'

repos:
	@databricks repos list

update_repo:
	@databricks repos update --repo-id 3607344616150485 --branch master

delete_repo:
	@databricks repos delete --repo-id <repo-id>

configure_jobs:
	@databricks jobs configure --version=2.1

dbfs:
	@databricks fs ls dbfs:/user

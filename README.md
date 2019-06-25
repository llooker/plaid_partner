### What does this block do for me?

**(1) Model Customer Experience Data** - All of your KARTE user activity tracking data in one place, pre-modeled, so you don't have to figure out how to organize data for analysis.

**(2) Expertise** - Leverage Plaid and Looker's expertise in web analytics and customer success through turnkey dashboards.

**(3) No DWH Setup** - This block is made to interact with KARTE's DataHub, a BigQuery-based user activity tracking database, so you don't have to use valuable engineering time to set up your data infrastructure.

### Block Info
This block is based on KARTE DataHub, a Plaid service offering that allows users to query user activity data directly in Google BigQuery.

### Required Customization
#### Looker
**Turn On Project Import**: In order to use the project manifest file for dataset name declaration, project import needs to be turned on under the Admin > Labs section.

**Declare Dataset Name**: You need to declare your dataset name in the `dataset_name` constant in the project manifest file.

#### KARTE

**Create Job Flows**: There needs to be a set of job flows (i.e. automatically triggered queries) in KARTE DataHub to create and refresh tables Looker will use for queries.

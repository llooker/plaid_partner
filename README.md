### What does this block do for me?

**(1) Model Customer Experience Data** - All of your KARTE user activity tracking data in one place, pre-modeled, so you don't have to figure out how to organize data for analysis.

**(2) Expertise** - Leverage Plaid and Looker's expertise in web analytics and customer success through turnkey dashboards.

**(3) No DWH Setup** - This block is made to interact with KARTE Datahub, a BigQuery-based user activity tracking database, so you don't have to use valuable engineering time to set up your data infrastructure.

### Block Info
This Block combines KARTE's robust user behavioral data with Looker's powerful data exploration capabilities to help users understand their customer behavior patterns with out-of-the-box dashboards and reports featuring the most common page view funnel, visitor and session trends, most popular devices used on your site, your Net Promoter Score, and more.

This block is based on KARTE DataHub, a Plaid service offering that allows users to query user activity data directly in Google BigQuery.

### Block Structure (Explores)
* **Events by Device**: A high-level view in to pageviews, users, and sessions by date and device.
* **Events**: A deeper-dive into events through more granular attributes such as visitor ID, session ID, OS, and more.
* **Pageviews**: Page views grouped and ordered by session ID to provide from where, and to where, users go on your website along with where users commonly leave your domain.
* **Visitor Journey**: Provides a visitor funnel to analyze what the most common sequence of events are, up to four steps after landing on your domain.
* **Net Promoter Score**: Provides a comprehensive view into your Net Promoter Score and the ability to slice and dice NPS by device, visitor segment, campaign, and date.

### Required Customization

#### In Looker
* **Turn On Project Import**: In order to use the project manifest file for dataset name declaration, project import needs to be turned on under the Admin > Labs section.
* **Declare Dataset Name and Organization ID**: You need to declare your dataset name in the `dataset_name` and `organization_id` constants in the project manifest file.

#### In KARTE
* **Create Job Flows**: There needs to be a set of job flows (i.e. automatically triggered queries) in KARTE DataHub to create and refresh tables Looker will use for queries.
* **Create A Service Account**: You'll need to create a new GCP service account in KARTE DataHub in order for Looker to query your KARTE data.

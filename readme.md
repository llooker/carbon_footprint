### Carbon Footprint
Google Cloud operates the cleanest cloud in the industry in order to help customers achieve their own sustainability goals. With the newly available Carbon Footprint data, you can now accurately measure your gross carbon footprint and track the emissions profile of your cloud usage to improve your carbon footprint. Detailed calculation methodology is published so that reviewers and reporting teams can verify that their emissions data meets [GHG Protocol](https://ghgprotocol.org/).

Looker takes this available data to the next level, giving you powerful visual insights into your expenditure, allowing you to easily analyze your impact, expose disclosure reporting and act on reducing the gross emissions of your cloud applications and infrastructure.
* Explore the data to determine where the biggest contributors to your green impact exist, segmenting by service, project, region, and month for the selected billing account over all available months.
* Initiate alerts based on substantial increases or shifts in service, project or regional impact.
* Schedule deliveries of dashboards to your team so they can proactively manage and identify where opportunities for investigation exist.
* Navigate directly from your dashboard to your console to make updates or changes to your projects and services used.


### Configure and manage your data export
Carbon Footprint data is exported via the [BigQuery Data Transfer Service](https://cloud.google.com/bigquery-transfer/docs/introduction). The data will be exported to the BigQuery table of your choice on the schedule you specify. Each export will overwrite the entire table with the most recent data available. Each month's data is added to the export on the 15th day of the following month.
Initiate and manage the export using [this documentation](https://cloud.google.com/carbon-footprint/docs/export), and [review the schema](https://cloud.google.com/carbon-footprint/docs/data-schema).
For further reading, please see the Carbon Footprint tool available directly from your console.

### Customizations
In order to fit the LookML files to your chosen connection, schema and table names, you will need to update the manifest file.
* Navigate to the manifest file, manifest.lkml, and replace the values for connection_name, schema_name and table_name to your appropriate values.


### What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Looker community, and we'd love your input. To log an error or improvement recommendations, simply create a "New Issue" in the corresponding [Github repo for this Block](...). Please be as detailed as possible in your explanation, and we'll address it as quick as we can.


### Notes and Other Known Issues

* **Limited coverage of Google Cloud services** - Carbon Footprint does not cover all Google Cloud services, [see the list of covered services](https://cloud.google.com/carbon-footprint/docs/covered-services).
* **Only gross carbon emissions from electricity are reported** - As captured in the [methodology behind Carbon Footprint](https://cloud.google.com/carbon-footprint/docs/methodology), the data reported only includes gross greenhouse gas emissions from electricity associated with the usage of covered Google Cloud services for the selected billing account. It does not include direct emissions or indirect emissions related to the value chain (respectively Google's Scope 1 and Scope 3 in the Greenhouse Gas (GHG) Protocol carbon reporting standards).
* **Only location-based emissions are reported** - Net emissions, after including Google's purchase of clean energy (market-based methodology) are not yet available.

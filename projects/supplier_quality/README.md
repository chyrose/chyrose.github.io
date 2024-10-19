## Portfolio Project: Supplier Quality and Performance Dashboard 

#### Click on this link to interact with the dashboard - https://bit.ly/SupplierQualityandPerformanceDashboard

#### File Download: [Supplier Quality and Performance Dashboard](/projects/supplier_quality/Power%20BI%20Supplier%20Insight%20Project.pbix)

### Project Background
Enterprise Manufacturer Ltd is a raw materials manufacturer facing quality inconsistencies across its supply chain, leading to production downtime and material defects. The company operates without a formal procurement system, and its vendor management processes have not effectively addressed quality issues. As a result, production inefficiencies have escalated, costing the company significant time and financial resources.

This project analysed 5,226 count rows of data from 2018 and 2019 to assess supplier quality and plant performance. Key objectives were to identify underperforming vendors and materials, analyse downtime impacts, and provide actionable insights for process improvements. The final deliverable included an interactive PowerBI dashboard for real-time monitoring and decision-making.

Insights and recommendations are provided in the following key areas:
    
- Vendor Performance: An assessment of suppliers responsible for material defects and downtime.
- Plant-Level Analysis: Evaluation of plant performance concerning downtime and defects.
- Material Performance: Insights into materials that contributed to production inefficiencies.
- Vendor-Material Relationship: Identification of underperforming vendor-material combinations impacting overall efficiency.

### Data Structure & Initial Checks

The dataset was modelled into a star schema fact and dimension tables to ensure a flexible and scalable data model. Before diving into the analysis, several checks were performed to ensure data quality and familiarisation with the dataset:

- **Power Query** was used to clean the dataset by eliminating duplicates, handling missing values, and standardising data format.
- **Advanced DAX** functions were employed to create custom-calculated columns and measures for critical metrics like defect rate and downtime cost.
- A **calendar table** was introduced to facilitate flexible and robust time intelligence analysis.
- **Measure tables** were created to group related metrics and measures, allowing for easier navigation and report clarity.

Automating the consolidation of monthly support ticket data.
- Analysing key performance indicators (KPIs) such as the number of tickets handled, resolution status, resolution time, and issue types.
- Designing a real-time dashboard to provide the management team with live insights into agent efficiency.
- Automating the creation of monthly reports for the campaign team’s review.

### Dashboard Overview: 

![Customer_Support_Automation](/projects/supplier_quality/Data_Modelling.png)


### Data Visualisation

Once the data model was established and measures created, insightful and intuitive visualisation was created. The dashboard comprised five pages - Landing Page, Overview Page, Vendor Performance Page, Plant Performance Page, Material Performance and Downtime Impact Page, each tailored to address specific aspects of supplier quality.

#### Publishing and Collaboration

- Real-Time Monitoring and Collaboration: The programme management team can access real-time data on Power BI Services and drill into specific vendors, materials, plants and dates to enable data-driven decision-making.

<br />

### Executive Summary Report

**Overview of Findings**

The analysis revealed significant operational inefficiencies between 2018 and 2019, with 2.6 billion defective units recorded and 215,800 hours of downtime. The total cost of these inefficiencies amounted to $2.16 million. In 2019, there was a significant 23% increase in defects, downtime, and related costs, highlighting a concerning trend that requires immediate attention. Additionally, there were notable spikes in defects and downtime during March and October of both 2018 and 2019, warranting further investigation.

**Key findings include:**

- Vendors Yombu, Avamm, and Meejo had the most defective materials and contributed the most to downtime.
- Plant Charles City, Hingham and Twin Rocks experienced the highest downtime, indicating possible process inefficiencies and material handling issues.
- Raw Material, Corrugate and Film caused the worst defects amounting to 61.15%, leading to excessive downtime and defects.

<br />

### Insights

**Vendor Performance**

- Vendor Yombu accounted for over 15,100,000 defective supplies. This vendor’s defect rate was alarmingly high across multiple materials, suggesting a need for stringent quality control measures.
- Vendor Brainverse consistently underperformed, particularly in supplying corrugate. With a total defect of 5,130,374, this vendor caused significant production delays and financial losses.

**Plant-Level Analysis**

- Plant Charles City experienced the highest downtime in 2019, attributed primarily to poor vendor performance and inadequate material handling procedures, making it the most problematic site.
- Plant Middletown, on the other hand, showed minimal downtime and defect issues, suggesting strong operational efficiency and effective quality control measures.

**Material Performance**

- Raw Material caused the most defect, with a defect rate exceeding 29.62%. This alone accounted for over 66,000 downtime hours, making it a priority for quality improvement efforts.
- Other materials such as cartons, labels and controllers also exhibited moderate but consistent defect rates, warranting closer monitoring.

**Vendor-Material Relationship**

The **vendor Edgeblab** and **raw material** combination was identified as a critical issue. This relationship consistently resulted in the highest defect rates and downtime across multiple plants. Other vendor-material combinations, such as vendor Jabberstorm with mould, also demonstrated poor performance.

### Recommendations

1. **Strengthen Quality Control for Underperforming Vendors**

    Vendors Yombu and Brainverse have been identified as key contributors to defective materials and significant production delays. Immediate corrective actions should include:
    - Implementing stricter quality control protocols for these vendors, with a focus on high-defect materials like corrugate.
    - Conducting regular performance reviews and enforcing penalties for non-compliance.
    - Introducing performance-based incentives to encourage improved quality standards and reduce defect rates.
2. **Conduct Process Evaluations at High-Downtime Plants**

    Plants such as Charles City, Hingham, and Twin Rocks experienced the highest downtime, indicating potential process inefficiencies. A comprehensive operational review of these plants should be conducted to:
    - Identify bottlenecks in material handling and vendor management.
    - Benchmark successful practices from high-performing plants like Middletown, which maintained minimal downtime and defects.
    - Implement corrective measures to streamline workflows, improve material handling processes, and reduce downtime.

3. **Enhance Quality Control for Critical Materials**
    With raw materials like corrugate and film causing over 61% of defects, it is crucial to:
    - Introduce more rigorous pre-production quality checks and real-time tracking of material defects.
    - Increase sampling frequency for these high-defect materials to catch issues early in the production cycle.
    - Collaborate with vendors to address material-specific challenges and develop solutions to reduce defects and associated downtime.

4. **Address High-Impact Vendor-Material Combinations**
The vendor-material combinations contributing most to defects, such as Edgeblab with raw materials and Jabberstorm with mould, require immediate attention. Strategies should include:
Prioritising targeted interventions for these combinations, such as improving communication and collaboration with vendors to ensure material quality standards are met.
Implementing joint quality improvement initiatives with these vendors to enhance performance and reduce defect rates across multiple plants.

5. **Automate Defect Monitoring and Reporting**
    To improve visibility and responsiveness to production issues, Enterprise Manufacturer Ltd should:
    - Invest in automated real-time defect monitoring and reporting systems across all plants.
    - Use these systems to quickly detect and address defective materials before they disrupt production, minimising downtime and costs.
    - Ensure that the automated systems provide actionable insights that can help drive continuous improvement in both vendor and plant performance.

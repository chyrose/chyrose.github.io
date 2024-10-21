## Customer Support Automation and Monitoring Project

### Project Overview:
This project was executed during a 6-month sales campaign for CloudFusion, a SaaS company providing cloud-based services to businesses. The company contracted five customer support agents to manage the increasing number of support tickets during the campaign. My role as a Data Analyst was to automate the consolidation and monitoring of this data and provide real-time performance insights.

### Project Objective:
The primary goal was to streamline and automate the reporting process for CloudFusion’s customer support operations. Key objectives included:

- Automating the consolidation of monthly support ticket data.
- Analysing key performance indicators (KPIs) such as the number of tickets handled, resolution status, resolution time, and issue types.
- Designing a real-time dashboard to provide the management team with live insights into agent efficiency.
- Automating the creation of monthly reports for the campaign team’s review.


### Dashboard Overview: 

![Customer_Support_Automation](/projects/automation/Customer_Support_Automation.png)

### Project Execution:

1. **Standardised Ticket Data Template**

    Each support agent was provided with a standardised Excel template to ensure data consistency across reports. The template included:
    - Support Agent Name, Date of Ticket, Issue Type (Billing, Technical, Account)
    - Ticket Status (Open, Closed, In Progress)
    - Customer Name, Customer Email

        This data was submitted via a shared OneDrive folder for ease of automation.


2. **Automating Data Collection with Power Query**

    By utilising **Power Query**, I automated the data collection process. Power Query was connected to the shared OneDrive folder, allowing real-time updates and eliminating manual consolidation efforts. This automation reduced the risk of human error and saved approximately **15 hours per month** in data handling time.

3. **Analysing Support Ticket Data Using Pivot Tables**

    With the data consolidated, I conducted detailed performance analyses using **Pivot Tables** and advanced formulas:

    - **Total Tickets Handled**: Tracked ticket volumes to assess team workload over time.
    - **Tickets by Issue Type**: Analysed the most frequent support categories (Billing, Technical, Account), revealing that **Technical issues** accounted for **60% of tickets**.
    - **Agent Performance**: Evaluated each agent's performance, measuring the **number of tickets handled** and **resolution status**. 
    - Through these analyses, I identified that **Agent Sarah David consistently handled the highest volume of tickets**, outperforming her peers by managing **25% more tickets** than the average agent. Additionally, the **average resolution time** across all agents was **7 hours**, indicating room for process improvement. Notably, **29% of tickets were re-opened**, suggesting potential issues with initial ticket resolutions and highlighting the need for further investigation into **root causes** and opportunities for agent training or process optimisation.

4. **Real-Time Performance Dashboard**
    I created a dynamic, interactive **dashboard** using Excel to display live data for the campaign team members. The dashboard included:
    - **KPI tracking** for ticket resolution times, number of tickets by agent, and issue type.
    - **Slicers and Timelines** to allow easy filtering by agent, ticket status, and issue type.

        This dashboard empowered the team to make informed, data-driven decisions in real time, improving their ability to address operational bottlenecks promptly.

5. **Automating Monthly Reports with VBA Macros**

    To reduce manual work, I built **VBA Macros** that automatically generated and emailed monthly reports to the 10 campaign team members. This automation reduced the reporting time by **75%** with the click of a button.

    Find the snippet below.

    ```
    Sub Send_Bulk_Email()

    Dim ws As Worksheet
    Set ws = ThisWorkbook.Sheets("Email Automation")
    
    Dim i As Integer
    Dim OA As Object
    Dim msg As Object
    Dim lastRow As Integer
    
    ' Set Outlook Application object
    Set OA = CreateObject("Outlook.Application")
    
    ' Find the last row with data in column A (Email Address)
    lastRow = ws.Cells(ws.Rows.Count, "A").End(xlUp).Row
    
    ' Loop through each row starting from the second row (given that first row is header)
    For i = 2 To lastRow
        Set msg = OA.CreateItem(0) ' Create a new email
        
        ' Assign email details from the sheet
        msg.To = ws.Range("A" & i).Value  ' Email Address
        msg.Subject = ws.Range("B" & i).Value  ' Subject
        msg.Body = ws.Range("C" & i).Value  ' Message
        
        ' Attach the current workbook
        msg.Attachments.Add ThisWorkbook.FullName
        
        ' Display the email (this can be changed to .Send if sending directly, but I prefer to preview)
        msg.Display
        
        ' Update status in column D after sending
        ws.Range("D" & i).Value = "Sent"
    Next i
    
    ' Clean up
    Set msg = Nothing
    Set OA = Nothing

    End Sub
    ```

    **The email List**

    ![Customer_Support_Automation](/projects/automation/EmailList.png)

### Conclusion and Key Takeaways:

This Customer Support Ticket Automation and Monitoring project for CloudFusion highlights my skills in **data automation, real-time reporting**, and **dashboard design**. Through the use of Power Query, Pivot Tables, Excel formulas, and VBA Macros, I:

- **Automated Data Collection**: Reduced data consolidation time by **10 hours per month** and significantly reduced human errors.
- **Real-Time Dashboard**: Provided stakeholders with **live insights** into agent performance, improving operational visibility and response time.
- **Automated Reporting**: Streamlined report generation, cutting manual reporting time by **75%**, and ensuring timely and accurate communication with the campaign team.
- **Data-Driven Insights**: Delivered actionable insights into **agent efficiency, resolution rates**, and the most common customer issues, helping the team make more informed decisions.





/* 
*   Optimized with GPT-4 model 2023.05.04
*/
global class GetOrgBaseUrl {
    @InvocableMethod(Label='Get Salesforce base and record url')
    global static List<Results> getBaseUrl(List<sObject> sourceRecords) {

        List<Results> sfdcURLs = new List<Results>();
        // Move the base URL calculation outside the loop as it remains constant for all records
        String sfdcBaseURL = URL.getSalesforceBaseUrl().toExternalForm();
        
        for (sObject obj : sourceRecords) {
            Results r = new Results();

            r.sfdcBaseURL = sfdcBaseURL;
            // Combine the constant base URL with the record ID instead of repeating the entire process
            r.sfdcRecordURL = sfdcBaseURL + '/' + obj.id;

            sfdcURLs.add(r);
        }
        return sfdcURLs;
    }

    global class Results {

        @InvocableVariable
        global String sfdcBaseURL;

        @InvocableVariable
        global String sfdcRecordURL;
    }
}

<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_notifying_support_agents_of_new_case_at_large_account</fullName>
        <ccEmails>kselvara2@gmail.com</ccEmails>
        <description>Email Alert notifying support agents of new case at large account</description>
        <protected>false</protected>
        <recipients>
            <recipient>kselvara2@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notification_of_New_Case_for_Large_Account</template>
    </alerts>
    <alerts>
        <fullName>X1_hour_warning_before_milestone_expires</fullName>
        <description>1 hour warning before milestone expires</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseResponse</template>
    </alerts>
</Workflow>

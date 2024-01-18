<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Duplicate_Country_Field_Update</fullName>
        <field>Duplicate_Country__c</field>
        <literalValue>USA</literalValue>
        <name>Duplicate Country Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>DuplicateUpdateCountry</fullName>
        <actions>
            <name>Duplicate_Country_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>TEXT($User.CountryCode) == &apos;US&apos;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>

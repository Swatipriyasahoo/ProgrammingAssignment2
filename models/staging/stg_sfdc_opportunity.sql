with
 
source as (
 
    select * from {{ source('uat-sfdc', 'sfdc_opportunity') }}
 
),
 
renamed as (
 
    select
        id as opportunity_id,
        accountid as account_id,
        recordtypeid as record_type_id,
        name,
        description,
        stagename as stage_name,
        amount,
        probability,
        expectedrevenue as expected_revenue,
        closedate as closed_date,
        isclosed as is_closed,
        iswon as is_won,
        forecastcategory as forecast_category,
        currencyisocode as currency_code,
        ownerid as owner_id,
        createddate as created_date,
        createdbyid as created_by_id,
        lastactivitydate as last_activity_date,
        fiscalquarter as fiscal_quarter,
        fiscalyear as fiscal_year,
        contactid as contact_id,
        hasopenactivity as has_open_activity,
        hasoverduetask as has_overdue_task,
        dp_opportunity_source__c as opportunity_source,
        dp_assignment__c as assignment,
        dp_billing_director_vp__c as billing_director_vp,
        dp_business_unit__c as business_unit,
        dp_engagement__c as engagement,
        dp_industry__c as industry,
        dp_interfaced_to_lawson__c as interfaced_to_lawson,
        dp_lost_reason__c as lost_reason,
        dp_ownership_type__c as ownership_type,
        dp_process_stage__c as process_stage,
        dp_region__c as region,
        dp_service_line_pl__c as service_line,
        dp_service_line__c as service_line_id,
        dp_service_pl__c as service,
        dp_service__c as service_id,
        dp_sub_industry__c as sub_industry,
        dp_pe_portfolio_company__c as portfolio_company,
        dp_bu__c as business_unit,
        dp_country__c as country,
        dp_current_stage__c as current_stage,
        dp_opportunity_age__c as opportunity age,
        dp_salesforce_18_digit_id__c as sf_18_digit_id,
        dp_expected_revenue__c as expected_revenue,
        dp_business__c as business,
   
    from source
 
)
 
select * from renamed
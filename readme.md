# ZorgPortal (ZP) WP-Plugin

## Introduction

ZorgPortal is a bookkeeping sync software to correct invoices. 

Because:
1. Dutch Gov. Defines For All Possible Care Treatments (like surgery, dentist) a standard price. This price is implemented by DPE (Digital Patient Softwares) when creating invoices for patient visits. 
1. Insurers reimburse lesser amounts based on Insurer/Policy. This means money paid differs from invoice. This breaks accountancy and bookkeeping. ZP wants to solve this. 

## Documentation


### Information Architecture (IA)

There is a folder added in docs for easy to use files holding all fields of various objects. 

`docs/ia`
[GlobalIA](https://www.planttext.com/api/plantuml/txt/x5P1JiCm4Bpx5NjCfLA14492W93WWiID5xZEjhNgsC5sAV0r3Zo9Bx2sapH9MzeYSK7qqcPtFREUsOtw-VvnupotVb4eLjAt5BBaseDG4hNlXF252yzOoi3HTGh01JoOgTJW3V2oX89hFiKYb31AosVkiKPhdXFKEjAjnP3Mk0nOB8KfNrLUm1GztAQ7-piOrhyVKLZqGrZYU6RCdENOfGBwj8DLFvthlHaxBOtrNBKQMmM9V2AL0hhf7WqqJBjHe_p05tu64sMMh9MaqfnxFkOEGo5_ndsukm0EdPD6__Zy0RqsBbdCfKMIdMOYwQ_2Y6mmFCOZ5cHk8GGrErZPtk5kG9UIw6CFmkIuGw-cZWQWLrhtuCqSDS4_BT1vo29yE37ep-lclkhZhZIQUEFnB0Q759rGOZO4BmkqTBMroVpUhGecdTvnqqvjGzqcRCrYP_B3ghMVQsJ6HgCHd9qVKrl2wDn5S50ueOMY56DXuTTyuZet1P2QzdMbOE3OrCWtmoPcAEOjIdmfQG1ooAxCVB35oyWAcJPGMZDMMEnfOcFV0GRHgsYzkLvv46Y5liMCLZJ8n9BkbwU7wVwRWbUzz5MlR-T9yqJVlyfcbwhPh5RdBwzPCF842gahbQ9z_rlp2rjpWpgdFp5V0000__y30000Comment-Snippets)


### UML Sequence Diagram

`docs/uml`


#### Exact Online (EO) Auth and Limits flow.

This Sequence Diagram explains how the implementation Should be done. UML files are saved in docs as backup.

[OauthSequence](http://bit.ly/3hRCUxA)



### EO Postman Project

The Project is not yet organised and finished, but you can see the `url's`, the `pre-request-script`, `variables`, and `saved responses of the calls`. 

`/docs/postman.json` 

will be moved online later. 


### EO Important Links

Direct Links to Eo docs for info.

- [Oauth](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-oauth-eol-oauth-devstep3)
- [Webhooks](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-webhookstut)
-- [Best Practice](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-webhooksc)
- [Start](https://support.exactonline.com/community/s/knowledge-base#All-All-DNO-Content-dev-getstrtd)
- [REST-API](https://start.exactonline.nl/docs/HlpRestAPIResources.aspx?SourceAction=10)
-- [TransactionLines](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=FinancialTransactionTransactionLines)
-- [CRM Accounts](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=CRMAccounts)
-- [Contacts](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=CRMContacts)
-- [SalesEntries](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=SalesEntrySalesEntries) -> main doc used
-- [SalesInvoices](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=SalesInvoiceSalesInvoices)
-- [Documents](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=DocumentsDocuments) -> bank imports
-- [Contacts](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=CRMContacts)
-- [JournalStatus](https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=ReadFinancialJournalStatusList)


### DB Migration 

For data migration SQL scripts have been written to deploy on the database server directly. They are saved in docs. 

`docs/db`


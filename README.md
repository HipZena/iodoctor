I/O Doctor
==========

You can now use I/O Doctor as a hosted application via [iodoctor.net](http://www.iodoctor.net).

I/O Doctor is a GUI for creating and editing JSON config files that are used with [I/O Docs](https://github.com/mashery/iodocs), an interactive API documentation system from [Mashery](http://www.mashery.com).

Description
-----------
### How It Works

Select an existing I/O Docs config to upload, or create a new config and start adding Endpoints, Methods, and Parameters. When an existing config is used, it is parsed and forms for editing each Endpoint, Method, and Parameter will be created. 

Click an item from the menu on the left to begin editing. View the JSON output at any time by hitting the "output" tab. When finished, click "Save File" to download the JSON file. I/O Doctor does not store any data. Make sure you save your JSON output.

### Technology

I/O Doctor is built on [Sinatra](http://www.sinatrarb.com), Twitter Bootstrap 2.0, and jQuery, and uses [form2js](https://github.com/maxatwork/form2js) for structured, hierarchical HTML form data. 

TODO
----

* Refactor to use a Javascript MVC framework
* Highlight selected Endpoint in the menu
* Wire up the Method links in the menu
* Add validation on form fields
* Ability to reorder nodes
* Ability to edit JSON directly on output tab - GUI v Source view
* Ability to copy a node
* Add Parameter buttons both above and below the list of parameters
* Default the paramater data type to be custom: string
* 


----------




## CountriesController

#### GetCountriesAsync

> Get all countries
```csharp
Task<string> GetCountriesAsync()
```



## SMSController

##### SendSmsAsync

> TODO: Add a method description
```csharp
Task<string> SendSmsAsync(
                List<Test> messages)
```

### CalculatePriceAsync

> Calculate sms price
```csharp
Task<string> CalculatePriceAsync(
                List<string> messages)
```

### GetSmsHistoryAsync

> Get all sms history
```csharp
Task<string> GetSmsHistoryAsync(
                int? dateFrom = null,
                int? dateTo = null)
```

### ExportHistoryAsync

> Export all sms history
```csharp
Task<string> ExportHistoryAsync(
                string filename)
```

### CreateReceiptAsync

> Add a delivery receipt
```csharp
Task<string> CreateReceiptAsync(
                string url)
```

### MarkReceiptsAsReadAsync

> Marked delivery receipts as read
```csharp
Task<string> MarkReceiptsAsReadAsync(
                int? dateBefore = null)
```

### GetInboundSmsAsync

> Get all inbound sms
```csharp
Task<string> GetInboundSmsAsync()
```

### CreateInboundSmsAsync

> Create inbound sms
```csharp
Task<string> CreateInboundSmsAsync(
                string url)
```

### MarkInboundSmsAsReadAsync

> Marked all inbound sms as read
```csharp
Task<string> MarkInboundSmsAsReadAsync(
                int dateBefore)
```

### CancelScheduledSmsAsync

> Update scheduled message as cancel
```csharp
Task<string> CancelScheduledSmsAsync(
                string messageId)
```

### CancelAllScheduledSmsAsync

> Update all scheduled message as cancelled
```csharp
Task<string> CancelAllScheduledSmsAsync()
```

### CreateSmsTemplateAsync

> Create sms template
```csharp
Task<string> CreateSmsTemplateAsync(
                string templateName,
                string body)
```

### DeleteSmsTemplateAsync

> Delete sms template
```csharp
Task<string> DeleteSmsTemplateAsync(
                string templateId)
```

### UpdateSmsTemplateAsync

> Update sms template
```csharp
Task<string> UpdateSmsTemplateAsync(
                int templateId,
                string templateName,
                string body)
```

### GetDeliveryReceiptsAsync

> Get all delivery receipts
```csharp
Task<string> GetDeliveryReceiptsAsync()
```

### GetSmsTemplatesAsync

> Get lists of all sms templates
```csharp
Task<string> GetSmsTemplatesAsync()
```



## VoiceController

### SendVoiceAsync

> TODO: Add a method description
```csharp
Task<string> SendVoiceAsync(
                List<string> messages)
```

### CalculatePriceAsync

> Calculate voice price
```csharp
Task<string> CalculatePriceAsync(
                List<string> messages)
```

### GetVoiceLanguagesAsync

> Get all voice languages
```csharp
Task<string> GetVoiceLanguagesAsync()
```

### GetVoiceHistoryAsync

> Get all voice history
```csharp
Task<string> GetVoiceHistoryAsync(
                int? dateFrom = null,
                int? dateTo = null)
```

### GetVoiceReceiptsAsync

> Get all voice receipts
```csharp
Task<string> GetVoiceReceiptsAsync()
```

### CancelVoiceMessageAsync

> Update voice message status as cancelled
```csharp
Task<string> CancelVoiceMessageAsync(
                string messageId)
```

### CancelVoiceMessagesAsync

> Update all voice messages as cancelled
```csharp
Task<string> CancelVoiceMessagesAsync()
```

### ExportVoiceHistoryAsync

> Export voice history
```csharp
Task<string> ExportVoiceHistoryAsync(
                string filename)
```



## AccountController

### GetAccountAsync

> Get account details
```csharp
Task<string> GetAccountAsync()
```

### CreateAccountAsync

> Create An Account
```csharp
Task<string> CreateAccountAsync(
                string username,
                string password,
                string userPhone,
                string userEmail,
                string userFirstName,
                string userLastName,
                string accountName,
                string country)
```

### ActivationTokenAsync

> Send account activation token
```csharp
Task<string> ActivationTokenAsync(
                string userPhone,
                string type,
                string country)
```

### VerifyAccountAsync

> Verify new account
```csharp
Task<string> VerifyAccountAsync(
                string activationToken)
```

### ForgotUsernameAsync

> Forgot username
```csharp
Task<string> ForgotUsernameAsync(
                string email = null,
                string phoneNumber = null,
                string country = null)
```

### ForgotPasswordAsync

> Forgot password
```csharp
Task<string> ForgotPasswordAsync(
                string username)
```

### VerifyForgotPasswordAsync

> Verify forgot password
```csharp
Task<string> VerifyForgotPasswordAsync(
                int subaccountId,
                string activationToken,
                string password)
```



## SubaccountController

### GetSubaccountsAsync

> Get all subaccounts
```csharp
Task<string> GetSubaccountsAsync()
```

### CreateSubaccountAsync

> Create new subaccount
```csharp
Task<string> CreateSubaccountAsync(
                List<string> apiUsername,
                string password,
                string email,
                string phoneNumber,
                string firstName,
                string lastName,
                bool? accessUsers = null,
                bool? accessBilling = null,
                bool? accessReporting = null,
                bool? accessContacts = null,
                bool? accessSettings = null)
```

### GetSubaccountAsync

> Get specific subaccount
```csharp
Task<string> GetSubaccountAsync(
                int subaccountId)
```

### DeleteSubaccountAsync

> Delete a subaccount
```csharp
Task<string> DeleteSubaccountAsync(
                int subaccountId)
```

### RegenerateApiKeyAsync

> Regenerate an API Key
```csharp
Task<string> RegenerateApiKeyAsync(
                int subaccountId)
```

### UpdateSubaccountAsync

> Update subaccount
```csharp
Task<string> UpdateSubaccountAsync(
                int subaccountId,
                string password = null,
                string email = null,
                string phoneNumber = null,
                string firstName = null,
                string lastName = null,
                bool? accessUsers = null,
                bool? accessBilling = null,
                bool? accessReporting = null,
                bool? accessContacts = null,
                bool? accessSettings = null)
```



## ContactListController

### GetContactListsAsync

> Get all contact lists
```csharp
Task<string> GetContactListsAsync()
```

### CreateContactListAsync

> Create new contact list
```csharp
Task<string> CreateContactListAsync(
                string listName)
```

### GetContactListAsync

> Get specific contact list
```csharp
Task<string> GetContactListAsync(
                int listId)
```

### UpdateContactListAsync

> Update specific contact list
```csharp
Task<string> UpdateContactListAsync(
                int listId,
                string listName)
```

### DeleteContactListAsync

> Delete a specific contact list
```csharp
Task<string> DeleteContactListAsync(
                int listId)
```

### RemoveDuplicateContactsAsync

> Remove duplicate contacts
```csharp
Task<string> RemoveDuplicateContactsAsync(
                int listId)
```

### ImportContactsToListAsync

> Import contacts to list
```csharp
Task<string> ImportContactsToListAsync(
                int listId,
                FileStreamInfo file)
```



## ContactController

### GetContactsAsync

> Get all contacts in a list
```csharp
Task<string> GetContactsAsync(
                int listId)
```

### CreateContactAsync

> Create new contact
```csharp
Task<string> CreateContactAsync(
                int listId,
                string phoneNumber = null,
                string email = null,
                string faxNumber = null,
                string firstName = null,
                string lastName = null,
                string addressLine1 = null,
                string addressLine2 = null,
                string addressCity = null,
                string addressState = null,
                string addressPostalCode = null,
                string addressCountry = null,
                string organizationName = null,
                string custom1 = null,
                string custom2 = null,
                string custom3 = null,
                string custom4 = null)
```

### GetContactAsync

> Get a specific contact
```csharp
Task<string> GetContactAsync(
                int listId,
                int contactId)
```

### UpdateContactAsync

> Update contact
```csharp
Task<string> UpdateContactAsync(
                int listId,
                int contactId,
                string phoneNumber = null,
                string email = null,
                string faxNumber = null,
                string firstName = null,
                string lastName = null,
                string addressLine1 = null,
                string addressLine2 = null,
                string addressCity = null,
                string addressState = null,
                string addressPostalCode = null,
                string addressCountry = null,
                string organizationName = null,
                string custom1 = null,
                string custom2 = null,
                string custom3 = null,
                string custom4 = null)
```

### DeleteContactAsync

> Delete a contact
```csharp
Task<string> DeleteContactAsync(
                int listId,
                string contactId)
```

### RemoveOptedOutContactsAsync

> Remove all opted out contacts
```csharp
Task<string> RemoveOptedOutContactsAsync(
                int listId,
                int optOutListId)
```



## NumberController

### GetDedicatedNumbersAsync

> Get all dedicated numbers
```csharp
Task<string> GetDedicatedNumbersAsync()
```

### PurchaseDedicatedNumberAsync

> Buy dedicated number
```csharp
Task<string> PurchaseDedicatedNumberAsync(
                string dedicatedNumber)
```

### GetDedicatedNumbersByCountryAsync

> Get all dedicated numbers by country
```csharp
Task<string> GetDedicatedNumbersByCountryAsync(
                string country,
                string search = null,
                int? searchType = null)
```



## StatisticsController

### GetVoiceStatisticsAsync

> Get voice statistics
```csharp
Task<string> GetVoiceStatisticsAsync()
```

### GetSmsStatisticsAsync

> Get sms statistics
```csharp
Task<string> GetSmsStatisticsAsync()
```



## EmailToSmsController

### CreateAllowedAddressAsync

> Create email to sms allowed address
```csharp
Task<string> CreateAllowedAddressAsync(
                string emailAddress,
                string mfrom)
```

### GetAllowedAddressAsync

> Get list of email to sms allowed addresses
```csharp
Task<string> GetAllowedAddressAsync()
```



## SearchController

### SearchContactListAsync

> Get list of searched contact list
```csharp
Task<string> SearchContactListAsync(
                string q)
```



## ReferralAccountController

### GetReferralAccountsAsync

> Get all referral accounts
```csharp
Task<string> GetReferralAccountsAsync()
```



## ResellerAccountController

### GetResellerAccountsAsync

> Get list of reseller accounts
```csharp
Task<string> GetResellerAccountsAsync()
```

### CreateResellerAccountAsync

> Create reseller account
```csharp
Task<string> CreateResellerAccountAsync(
                string username,
                string password,
                string userEmail,
                string userPhone,
                string userFirstName,
                string userLastName,
                string accountName,
                string country)
```

### GetResellerAccountAsync

> Get Reseller Account
```csharp
Task<string> GetResellerAccountAsync(
                string clientUserId)
```

### UpdateResellerAccountAsync

> Reseller Account
```csharp
Task<string> UpdateResellerAccountAsync(
                string clientUserId,
                string username,
                string password,
                string userEmail,
                string userPhone,
                string userFirstName,
                string userLastName,
                string accountName,
                string country)
```



## TransferCreditController

### TransferCreditAsync

> Transfer Credit
```csharp
Task<string> TransferCreditAsync(
                string clientUserId,
                int balance,
                string currency)
```



## FaxController

### GetFaxReceiptsAsync

> Get all fax receipts
```csharp
Task<string> GetFaxReceiptsAsync()
```



## AccountRechargeController

### GetCreditCardInfoAsync

> Get Credit Card info
```csharp
Task<string> GetCreditCardInfoAsync()
```

### UpdateCreditCardInfoAsync

> Update credit card info
```csharp
Task<string> UpdateCreditCardInfoAsync(
                string number,
                int expiryMonth,
                int expiryYear,
                int cvc,
                string name)
```

### GetPackagesListAsync

> Get list of all packages
```csharp
Task<string> GetPackagesListAsync(
                string country = null)
```

### PurchasePackageAsync

> Purchase a package
```csharp
Task<string> PurchasePackageAsync(
                int packageId)
```

### GetTransactionsAsync

> Get all transactions
```csharp
Task<string> GetTransactionsAsync()
```

### GetTransactionAsync

> Get specific Transaction
```csharp
Task<string> GetTransactionAsync(
                string transactionId)
```



## SmsCampaignController

### CreateSmsCampaignAsync

> Create sms campaign
```csharp
Task<string> CreateSmsCampaignAsync(
                int listId,
                string name,
                string mfrom,
                string body,
                int? schedule = null)
```

### CalculatePriceAsync

> Calculate price for sms campaign
```csharp
Task<string> CalculatePriceAsync(
                int listId,
                string name,
                string mfrom,
                string body)
```

### UpdateSmsCampaignAsync

> Update sms campaign
```csharp
Task<string> UpdateSmsCampaignAsync(
                int smsCampaignId,
                int listId,
                string name,
                string mfrom,
                string body,
                string schedule)
```

### CancelSmsCampaignAsync

> Cancel sms campaign
```csharp
Task<string> CancelSmsCampaignAsync(
                int smsCampaignId)
```

### GetSmsCampaignsAsync

> Get list of sms campaigns
```csharp
Task<string> GetSmsCampaignsAsync()
```

### GetSmsCampaignAsync

> Get specific sms campaign
```csharp
Task<string> GetSmsCampaignAsync(
                int smsCampaignId)
```



## PostLetterController

### SendPostLetterAsync

> Send post letter
```csharp
Task<string> SendPostLetterAsync(
                List<string> attributes)
```

### CalculatePriceAsync

> Calculate post letter price
```csharp
Task<string> CalculatePriceAsync(
                List<string> attributes)
```

### GetPostLetterHistoryAsync

> Get all post letter history
```csharp
Task<string> GetPostLetterHistoryAsync()
```

### ExportPostLetterHistoryAsync

> export post letter history
```csharp
Task<string> ExportPostLetterHistoryAsync(
                string filename)
```



## PostReturnAddressController

### CreatePostReturnAddressAsync

> Create post return address
```csharp
Task<string> CreatePostReturnAddressAsync(
                string addressName,
                string addressLine1,
                string addressLine2,
                string addressCity,
                string addressState,
                string addressPostalCode,
                string addressCountry)
```

### GetPostReturnAddressesAsync

> Get list of post return addresses
```csharp
Task<string> GetPostReturnAddressesAsync()
```

### GetPostReturnAddressAsync

> Get specific post return address
```csharp
Task<string> GetPostReturnAddressAsync(
                int returnAddressId)
```

### UpdatePostReturnAddressAsync

> Update post return address
```csharp
Task<string> UpdatePostReturnAddressAsync(
                int returnAddressId,
                string addressName,
                string addressLine1,
                string addressLine2,
                string addressCity,
                string addressState,
                string addressPostalCode,
                string addressCountry)
```

### DeletePostReturnAddressAsync

> Delete specific post return address
```csharp
Task<string> DeletePostReturnAddressAsync(
                int returnAddressId)
```



## UploadController

### UploadFileAsync

> Upload a file
```csharp
Task<string> UploadFileAsync(
                FileStreamInfo filename)
```




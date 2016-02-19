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

### CountriesController

#### GetCountriesAsync

> Get all countries
> ``` Skips Authentication ```  ``` Streaming ``` 
```csharp
Task<string> GetCountriesAsync()
```




### SMSController

#### SendSmsAsync

> TODO: Add a method description
> ``` Streaming ``` 
```csharp
Task<string> SendSmsAsync(
                List<Test> messages)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### CalculatePriceAsync

> Calculate sms price
> ``` Streaming ``` 
```csharp
Task<string> CalculatePriceAsync(
                List<string> messages)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### GetSmsHistoryAsync

> Get all sms history
> ``` Streaming ``` 
```csharp
Task<string> GetSmsHistoryAsync(
                int? dateFrom = null,
                int? dateTo = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dateFrom |  ``` Optional ```  | Start date || dateTo |  ``` Optional ```  | End date |



#### ExportHistoryAsync

> Export all sms history
> ``` Streaming ``` 
```csharp
Task<string> ExportHistoryAsync(
                string filename)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |



#### CreateReceiptAsync

> Add a delivery receipt
> ``` Streaming ``` 
```csharp
Task<string> CreateReceiptAsync(
                string url)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | Your url |



#### MarkReceiptsAsReadAsync

> Marked delivery receipts as read
> ``` Streaming ``` 
```csharp
Task<string> MarkReceiptsAsReadAsync(
                int? dateBefore = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dateBefore |  ``` Optional ```  | TODO: Add a parameter description |



#### GetInboundSmsAsync

> Get all inbound sms
> ``` Streaming ``` 
```csharp
Task<string> GetInboundSmsAsync()
```


#### CreateInboundSmsAsync

> Create inbound sms
> ``` Streaming ``` 
```csharp
Task<string> CreateInboundSmsAsync(
                string url)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | Your url |



#### MarkInboundSmsAsReadAsync

> Marked all inbound sms as read
> ``` Streaming ``` 
```csharp
Task<string> MarkInboundSmsAsReadAsync(
                int dateBefore)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dateBefore |  ``` Required ```  | TODO: Add a parameter description |



#### CancelScheduledSmsAsync

> Update scheduled message as cancel
> ``` Streaming ``` 
```csharp
Task<string> CancelScheduledSmsAsync(
                string messageId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageId |  ``` Required ```  | TODO: Add a parameter description |



#### CancelAllScheduledSmsAsync

> Update all scheduled message as cancelled
> ``` Streaming ``` 
```csharp
Task<string> CancelAllScheduledSmsAsync()
```


#### CreateSmsTemplateAsync

> Create sms template
> ``` Streaming ``` 
```csharp
Task<string> CreateSmsTemplateAsync(
                string templateName,
                string body)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateName |  ``` Required ```  | Your template name || body |  ``` Required ```  | Your template body |



#### DeleteSmsTemplateAsync

> Delete sms template
> ``` Streaming ``` 
```csharp
Task<string> DeleteSmsTemplateAsync(
                string templateId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateSmsTemplateAsync

> Update sms template
> ``` Streaming ``` 
```csharp
Task<string> UpdateSmsTemplateAsync(
                int templateId,
                string templateName,
                string body)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateId |  ``` Required ```  | TODO: Add a parameter description || templateName |  ``` Required ```  | TODO: Add a parameter description || body |  ``` Required ```  | TODO: Add a parameter description |



#### GetDeliveryReceiptsAsync

> Get all delivery receipts
> ``` Streaming ``` 
```csharp
Task<string> GetDeliveryReceiptsAsync()
```


#### GetSmsTemplatesAsync

> Get lists of all sms templates
> ``` Streaming ``` 
```csharp
Task<string> GetSmsTemplatesAsync()
```




### VoiceController

#### SendVoiceAsync

> TODO: Add a method description
> ``` Streaming ``` 
```csharp
Task<string> SendVoiceAsync(
                List<string> messages)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### CalculatePriceAsync

> Calculate voice price
> ``` Streaming ``` 
```csharp
Task<string> CalculatePriceAsync(
                List<string> messages)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### GetVoiceLanguagesAsync

> Get all voice languages
> ``` Streaming ``` 
```csharp
Task<string> GetVoiceLanguagesAsync()
```


#### GetVoiceHistoryAsync

> Get all voice history
> ``` Streaming ``` 
```csharp
Task<string> GetVoiceHistoryAsync(
                int? dateFrom = null,
                int? dateTo = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dateFrom |  ``` Optional ```  | TODO: Add a parameter description || dateTo |  ``` Optional ```  | TODO: Add a parameter description |



#### GetVoiceReceiptsAsync

> Get all voice receipts
> ``` Streaming ``` 
```csharp
Task<string> GetVoiceReceiptsAsync()
```


#### CancelVoiceMessageAsync

> Update voice message status as cancelled
> ``` Streaming ``` 
```csharp
Task<string> CancelVoiceMessageAsync(
                string messageId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageId |  ``` Required ```  | TODO: Add a parameter description |



#### CancelVoiceMessagesAsync

> Update all voice messages as cancelled
> ``` Streaming ``` 
```csharp
Task<string> CancelVoiceMessagesAsync()
```


#### ExportVoiceHistoryAsync

> Export voice history
> ``` Streaming ``` 
```csharp
Task<string> ExportVoiceHistoryAsync(
                string filename)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |





### AccountController

#### GetAccountAsync

> Get account details
> ``` Streaming ``` 
```csharp
Task<string> GetAccountAsync()
```


#### CreateAccountAsync

> Create An Account
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | Your username || password |  ``` Required ```  | Your password || userPhone |  ``` Required ```  | Your phone number in E.164 format. || userEmail |  ``` Required ```  | Your email || userFirstName |  ``` Required ```  | Your firstname || userLastName |  ``` Required ```  | Your lastname || accountName |  ``` Required ```  | Your delivery to value. || country |  ``` Required ```  | Your country |



#### ActivationTokenAsync

> Send account activation token
> ``` Streaming ``` 
```csharp
Task<string> ActivationTokenAsync(
                string userPhone,
                string type,
                string country)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| userPhone |  ``` Required ```  | Your phone number || type |  ``` Required ```  | Activation type || country |  ``` Required ```  | Your country |



#### VerifyAccountAsync

> Verify new account
> ``` Streaming ``` 
```csharp
Task<string> VerifyAccountAsync(
                string activationToken)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| activationToken |  ``` Required ```  | TODO: Add a parameter description |



#### ForgotUsernameAsync

> Forgot username
> ``` Skips Authentication ```  ``` Streaming ``` 
```csharp
Task<string> ForgotUsernameAsync(
                string email = null,
                string phoneNumber = null,
                string country = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Optional ```  | TODO: Add a parameter description || phoneNumber |  ``` Optional ```  | TODO: Add a parameter description || country |  ``` Optional ```  | TODO: Add a parameter description |



#### ForgotPasswordAsync

> Forgot password
> ``` Streaming ``` 
```csharp
Task<string> ForgotPasswordAsync(
                string username)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | TODO: Add a parameter description |



#### VerifyForgotPasswordAsync

> Verify forgot password
> ``` Streaming ``` 
```csharp
Task<string> VerifyForgotPasswordAsync(
                int subaccountId,
                string activationToken,
                string password)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | Your subaccount id. || activationToken |  ``` Required ```  | Your email activation token. || password |  ``` Required ```  | Your new password. |





### SubaccountController

#### GetSubaccountsAsync

> Get all subaccounts
> ``` Streaming ``` 
```csharp
Task<string> GetSubaccountsAsync()
```


#### CreateSubaccountAsync

> Create new subaccount
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| apiUsername |  ``` Required ```  ``` Collection ```  | Your new api username. || password |  ``` Required ```  | Your new password || email |  ``` Required ```  | Your new email. || phoneNumber |  ``` Required ```  | Your phone number in E.164 format. || firstName |  ``` Required ```  | Your firstname || lastName |  ``` Required ```  | Your lastname || accessUsers |  ``` Optional ```  ``` DefaultValue ```  | Your access users flag value, must be 1 or 0. || accessBilling |  ``` Optional ```  ``` DefaultValue ```  | Your access billing flag value, must be 1 or 0. || accessReporting |  ``` Optional ```  ``` DefaultValue ```  | Your access reporting flag value, must be 1 or 0. || accessContacts |  ``` Optional ```  ``` DefaultValue ```  | Your access contacts flag value, must be 1 or 0. || accessSettings |  ``` Optional ```  ``` DefaultValue ```  | Your access settings flag value, must be 1 or 0. |



#### GetSubaccountAsync

> Get specific subaccount
> ``` Streaming ``` 
```csharp
Task<string> GetSubaccountAsync(
                int subaccountId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | TODO: Add a parameter description |



#### DeleteSubaccountAsync

> Delete a subaccount
> ``` Streaming ``` 
```csharp
Task<string> DeleteSubaccountAsync(
                int subaccountId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | TODO: Add a parameter description |



#### RegenerateApiKeyAsync

> Regenerate an API Key
> ``` Streaming ``` 
```csharp
Task<string> RegenerateApiKeyAsync(
                int subaccountId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateSubaccountAsync

> Update subaccount
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | TODO: Add a parameter description || password |  ``` Optional ```  | TODO: Add a parameter description || email |  ``` Optional ```  | TODO: Add a parameter description || phoneNumber |  ``` Optional ```  | TODO: Add a parameter description || firstName |  ``` Optional ```  | TODO: Add a parameter description || lastName |  ``` Optional ```  | TODO: Add a parameter description || accessUsers |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description || accessBilling |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description || accessReporting |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description || accessContacts |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description || accessSettings |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description |





### ContactListController

#### GetContactListsAsync

> Get all contact lists
> ``` Streaming ``` 
```csharp
Task<string> GetContactListsAsync()
```


#### CreateContactListAsync

> Create new contact list
> ``` Streaming ``` 
```csharp
Task<string> CreateContactListAsync(
                string listName)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listName |  ``` Required ```  | Your contact list name |



#### GetContactListAsync

> Get specific contact list
> ``` Streaming ``` 
```csharp
Task<string> GetContactListAsync(
                int listId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateContactListAsync

> Update specific contact list
> ``` Streaming ``` 
```csharp
Task<string> UpdateContactListAsync(
                int listId,
                string listName)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list id || listName |  ``` Required ```  | Your new list name |



#### DeleteContactListAsync

> Delete a specific contact list
> ``` Streaming ``` 
```csharp
Task<string> DeleteContactListAsync(
                int listId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description |



#### RemoveDuplicateContactsAsync

> Remove duplicate contacts
> ``` Streaming ``` 
```csharp
Task<string> RemoveDuplicateContactsAsync(
                int listId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list id |



#### ImportContactsToListAsync

> Import contacts to list
> ``` Streaming ``` 
```csharp
Task<string> ImportContactsToListAsync(
                int listId,
                FileStreamInfo file)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your contact list id you want to access. || file |  ``` Required ```  | TODO: Add a parameter description |





### ContactController

#### GetContactsAsync

> Get all contacts in a list
> ``` Streaming ``` 
```csharp
Task<string> GetContactsAsync(
                int listId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description |



#### CreateContactAsync

> Create new contact
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list_id || phoneNumber |  ``` Optional ```  | Your phone number in E.164 format. Must be provided if no fax number or email. || email |  ``` Optional ```  | Your email. Must be provided if no phone number or fax number. || faxNumber |  ``` Optional ```  | You fax number. Must be provided if no phone number or email. || firstName |  ``` Optional ```  | Your firstname. || lastName |  ``` Optional ```  | Your lastname. || addressLine1 |  ``` Optional ```  | TODO: Add a parameter description || addressLine2 |  ``` Optional ```  | TODO: Add a parameter description || addressCity |  ``` Optional ```  | TODO: Add a parameter description || addressState |  ``` Optional ```  | TODO: Add a parameter description || addressPostalCode |  ``` Optional ```  | TODO: Add a parameter description || addressCountry |  ``` Optional ```  | TODO: Add a parameter description || organizationName |  ``` Optional ```  | TODO: Add a parameter description || custom1 |  ``` Optional ```  | TODO: Add a parameter description || custom2 |  ``` Optional ```  | TODO: Add a parameter description || custom3 |  ``` Optional ```  | TODO: Add a parameter description || custom4 |  ``` Optional ```  | TODO: Add a parameter description |



#### GetContactAsync

> Get a specific contact
> ``` Streaming ``` 
```csharp
Task<string> GetContactAsync(
                int listId,
                int contactId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your contact list id you want to access. || contactId |  ``` Required ```  | Your contact id you want to access. |



#### UpdateContactAsync

> Update contact
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list id || contactId |  ``` Required ```  | Your contact id || phoneNumber |  ``` Optional ```  | Your phone number in E.164 format. || email |  ``` Optional ```  | Your email. Must be provided if no phone number or fax number. || faxNumber |  ``` Optional ```  | You fax number. Must be provided if no phone number or email. || firstName |  ``` Optional ```  | Your firstname || lastName |  ``` Optional ```  | Your lastname || addressLine1 |  ``` Optional ```  | TODO: Add a parameter description || addressLine2 |  ``` Optional ```  | TODO: Add a parameter description || addressCity |  ``` Optional ```  | TODO: Add a parameter description || addressState |  ``` Optional ```  | TODO: Add a parameter description || addressPostalCode |  ``` Optional ```  | TODO: Add a parameter description || addressCountry |  ``` Optional ```  | TODO: Add a parameter description || organizationName |  ``` Optional ```  | TODO: Add a parameter description || custom1 |  ``` Optional ```  | TODO: Add a parameter description || custom2 |  ``` Optional ```  | TODO: Add a parameter description || custom3 |  ``` Optional ```  | TODO: Add a parameter description || custom4 |  ``` Optional ```  | TODO: Add a parameter description |



#### DeleteContactAsync

> Delete a contact
> ``` Streaming ``` 
```csharp
Task<string> DeleteContactAsync(
                int listId,
                string contactId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description || contactId |  ``` Required ```  | TODO: Add a parameter description |



#### RemoveOptedOutContactsAsync

> Remove all opted out contacts
> ``` Streaming ``` 
```csharp
Task<string> RemoveOptedOutContactsAsync(
                int listId,
                int optOutListId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list id || optOutListId |  ``` Required ```  | Your opt out list id |





### NumberController

#### GetDedicatedNumbersAsync

> Get all dedicated numbers
> ``` Streaming ``` 
```csharp
Task<string> GetDedicatedNumbersAsync()
```


#### PurchaseDedicatedNumberAsync

> Buy dedicated number
> ``` Streaming ``` 
```csharp
Task<string> PurchaseDedicatedNumberAsync(
                string dedicatedNumber)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dedicatedNumber |  ``` Required ```  | TODO: Add a parameter description |



#### GetDedicatedNumbersByCountryAsync

> Get all dedicated numbers by country
> ``` Streaming ``` 
```csharp
Task<string> GetDedicatedNumbersByCountryAsync(
                string country,
                string search = null,
                int? searchType = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Required ```  | TODO: Add a parameter description || search |  ``` Optional ```  | Your search pattern or query. || searchType |  ``` Optional ```  | Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with. |





### StatisticsController

#### GetVoiceStatisticsAsync

> Get voice statistics
> ``` Streaming ``` 
```csharp
Task<string> GetVoiceStatisticsAsync()
```


#### GetSmsStatisticsAsync

> Get sms statistics
> ``` Streaming ``` 
```csharp
Task<string> GetSmsStatisticsAsync()
```




### EmailToSmsController

#### CreateAllowedAddressAsync

> Create email to sms allowed address
> ``` Streaming ``` 
```csharp
Task<string> CreateAllowedAddressAsync(
                string emailAddress,
                string mfrom)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| emailAddress |  ``` Required ```  | Your email address. || mfrom |  ``` Required ```  | Your phone number in E.164 format. |



#### GetAllowedAddressAsync

> Get list of email to sms allowed addresses
> ``` Streaming ``` 
```csharp
Task<string> GetAllowedAddressAsync()
```




### SearchController

#### SearchContactListAsync

> Get list of searched contact list
> ``` Streaming ``` 
```csharp
Task<string> SearchContactListAsync(
                string q)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| q |  ``` Required ```  |  Your keyword or query. |





### ReferralAccountController

#### GetReferralAccountsAsync

> Get all referral accounts
> ``` Streaming ``` 
```csharp
Task<string> GetReferralAccountsAsync()
```




### ResellerAccountController

#### GetResellerAccountsAsync

> Get list of reseller accounts
> ``` Streaming ``` 
```csharp
Task<string> GetResellerAccountsAsync()
```


#### CreateResellerAccountAsync

> Create reseller account
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | TODO: Add a parameter description || password |  ``` Required ```  | TODO: Add a parameter description || userEmail |  ``` Required ```  | TODO: Add a parameter description || userPhone |  ``` Required ```  | TODO: Add a parameter description || userFirstName |  ``` Required ```  | TODO: Add a parameter description || userLastName |  ``` Required ```  | TODO: Add a parameter description || accountName |  ``` Required ```  | TODO: Add a parameter description || country |  ``` Required ```  | TODO: Add a parameter description |



#### GetResellerAccountAsync

> Get Reseller Account
> ``` Streaming ``` 
```csharp
Task<string> GetResellerAccountAsync(
                string clientUserId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| clientUserId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateResellerAccountAsync

> Reseller Account
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| clientUserId |  ``` Required ```  | TODO: Add a parameter description || username |  ``` Required ```  | TODO: Add a parameter description || password |  ``` Required ```  | TODO: Add a parameter description || userEmail |  ``` Required ```  | TODO: Add a parameter description || userPhone |  ``` Required ```  | TODO: Add a parameter description || userFirstName |  ``` Required ```  | TODO: Add a parameter description || userLastName |  ``` Required ```  | TODO: Add a parameter description || accountName |  ``` Required ```  | TODO: Add a parameter description || country |  ``` Required ```  | TODO: Add a parameter description |





### TransferCreditController

#### TransferCreditAsync

> Transfer Credit
> ``` Streaming ``` 
```csharp
Task<string> TransferCreditAsync(
                string clientUserId,
                int balance,
                string currency)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| clientUserId |  ``` Required ```  | TODO: Add a parameter description || balance |  ``` Required ```  | TODO: Add a parameter description || currency |  ``` Required ```  | TODO: Add a parameter description |





### FaxController

#### GetFaxReceiptsAsync

> Get all fax receipts
> ``` Streaming ``` 
```csharp
Task<string> GetFaxReceiptsAsync()
```




### AccountRechargeController

#### GetCreditCardInfoAsync

> Get Credit Card info
> ``` Streaming ``` 
```csharp
Task<string> GetCreditCardInfoAsync()
```


#### UpdateCreditCardInfoAsync

> Update credit card info
> ``` Streaming ``` 
```csharp
Task<string> UpdateCreditCardInfoAsync(
                string number,
                int expiryMonth,
                int expiryYear,
                int cvc,
                string name)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | TODO: Add a parameter description || expiryMonth |  ``` Required ```  | TODO: Add a parameter description || expiryYear |  ``` Required ```  | TODO: Add a parameter description || cvc |  ``` Required ```  | TODO: Add a parameter description || name |  ``` Required ```  | TODO: Add a parameter description |



#### GetPackagesListAsync

> Get list of all packages
> ``` Streaming ``` 
```csharp
Task<string> GetPackagesListAsync(
                string country = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Optional ```  | TODO: Add a parameter description |



#### PurchasePackageAsync

> Purchase a package
> ``` Streaming ``` 
```csharp
Task<string> PurchasePackageAsync(
                int packageId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| packageId |  ``` Required ```  | TODO: Add a parameter description |



#### GetTransactionsAsync

> Get all transactions
> ``` Streaming ``` 
```csharp
Task<string> GetTransactionsAsync()
```


#### GetTransactionAsync

> Get specific Transaction
> ``` Streaming ``` 
```csharp
Task<string> GetTransactionAsync(
                string transactionId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| transactionId |  ``` Required ```  | TODO: Add a parameter description |





### SmsCampaignController

#### CreateSmsCampaignAsync

> Create sms campaign
> ``` Streaming ``` 
```csharp
Task<string> CreateSmsCampaignAsync(
                int listId,
                string name,
                string mfrom,
                string body,
                int? schedule = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description || name |  ``` Required ```  | TODO: Add a parameter description || mfrom |  ``` Required ```  | TODO: Add a parameter description || body |  ``` Required ```  | TODO: Add a parameter description || schedule |  ``` Optional ```  | TODO: Add a parameter description |



#### CalculatePriceAsync

> Calculate price for sms campaign
> ``` Streaming ``` 
```csharp
Task<string> CalculatePriceAsync(
                int listId,
                string name,
                string mfrom,
                string body)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description || name |  ``` Required ```  | TODO: Add a parameter description || mfrom |  ``` Required ```  | TODO: Add a parameter description || body |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateSmsCampaignAsync

> Update sms campaign
> ``` Streaming ``` 
```csharp
Task<string> UpdateSmsCampaignAsync(
                int smsCampaignId,
                int listId,
                string name,
                string mfrom,
                string body,
                string schedule)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| smsCampaignId |  ``` Required ```  | TODO: Add a parameter description || listId |  ``` Required ```  | TODO: Add a parameter description || name |  ``` Required ```  | TODO: Add a parameter description || mfrom |  ``` Required ```  | TODO: Add a parameter description || body |  ``` Required ```  | TODO: Add a parameter description || schedule |  ``` Required ```  | TODO: Add a parameter description |



#### CancelSmsCampaignAsync

> Cancel sms campaign
> ``` Streaming ``` 
```csharp
Task<string> CancelSmsCampaignAsync(
                int smsCampaignId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| smsCampaignId |  ``` Required ```  | TODO: Add a parameter description |



#### GetSmsCampaignsAsync

> Get list of sms campaigns
> ``` Streaming ``` 
```csharp
Task<string> GetSmsCampaignsAsync()
```


#### GetSmsCampaignAsync

> Get specific sms campaign
> ``` Streaming ``` 
```csharp
Task<string> GetSmsCampaignAsync(
                int smsCampaignId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| smsCampaignId |  ``` Required ```  | TODO: Add a parameter description |





### PostLetterController

#### SendPostLetterAsync

> Send post letter
> ``` Streaming ``` 
```csharp
Task<string> SendPostLetterAsync(
                List<string> attributes)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| attributes |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### CalculatePriceAsync

> Calculate post letter price
> ``` Streaming ``` 
```csharp
Task<string> CalculatePriceAsync(
                List<string> attributes)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| attributes |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### GetPostLetterHistoryAsync

> Get all post letter history
> ``` Streaming ``` 
```csharp
Task<string> GetPostLetterHistoryAsync()
```


#### ExportPostLetterHistoryAsync

> export post letter history
> ``` Streaming ``` 
```csharp
Task<string> ExportPostLetterHistoryAsync(
                string filename)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |





### PostReturnAddressController

#### CreatePostReturnAddressAsync

> Create post return address
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressName |  ``` Required ```  | TODO: Add a parameter description || addressLine1 |  ``` Required ```  | TODO: Add a parameter description || addressLine2 |  ``` Required ```  | TODO: Add a parameter description || addressCity |  ``` Required ```  | TODO: Add a parameter description || addressState |  ``` Required ```  | TODO: Add a parameter description || addressPostalCode |  ``` Required ```  | TODO: Add a parameter description || addressCountry |  ``` Required ```  | TODO: Add a parameter description |



#### GetPostReturnAddressesAsync

> Get list of post return addresses
> ``` Streaming ``` 
```csharp
Task<string> GetPostReturnAddressesAsync()
```


#### GetPostReturnAddressAsync

> Get specific post return address
> ``` Streaming ``` 
```csharp
Task<string> GetPostReturnAddressAsync(
                int returnAddressId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| returnAddressId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdatePostReturnAddressAsync

> Update post return address
> ``` Streaming ``` 
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

| Parameter | Tags | Description |
|-----------|------|-------------|
| returnAddressId |  ``` Required ```  | TODO: Add a parameter description || addressName |  ``` Required ```  | TODO: Add a parameter description || addressLine1 |  ``` Required ```  | TODO: Add a parameter description || addressLine2 |  ``` Required ```  | TODO: Add a parameter description || addressCity |  ``` Required ```  | TODO: Add a parameter description || addressState |  ``` Required ```  | TODO: Add a parameter description || addressPostalCode |  ``` Required ```  | TODO: Add a parameter description || addressCountry |  ``` Required ```  | TODO: Add a parameter description |



#### DeletePostReturnAddressAsync

> Delete specific post return address
> ``` Streaming ``` 
```csharp
Task<string> DeletePostReturnAddressAsync(
                int returnAddressId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| returnAddressId |  ``` Required ```  | TODO: Add a parameter description |





### UploadController

#### UploadFileAsync

> Upload a file
> ``` Streaming ``` 
```csharp
Task<string> UploadFileAsync(
                FileStreamInfo filename)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |






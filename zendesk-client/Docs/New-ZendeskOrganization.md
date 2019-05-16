---
external help file: zendesk-client-help.xml
Module Name: zendesk-client
online version: https://github.com/fletcherg/zendesk-client
schema: 2.0.0
---

# New-ZendeskOrganization

## SYNOPSIS
Create a Zendesk organization

## SYNTAX

```
New-ZendeskOrganization [-organization] <Object> [<CommonParameters>]
```

## DESCRIPTION
This function will create an organization in Zendesk.

## EXAMPLES

### EXAMPLE 1
```
$orgDetails = @{'name' = "Acme SomeTestOrg"
```

'organization_fields' = @{
    'ad_ou' = "OU";  
    'main_phone' = "211313";  
    'owner_id' = "Peter Pan";
    'reseller_id' = "someReseller";
    'non_account' = 10000213;
    'sf_account_id' = "aXRtERTZX"}
    }

New-ZendeskOrganization -organization $orgDetails
Will create the Zendesk organization "Acme SomeTestOrg"

## PARAMETERS

### -organization
Relevant organization details

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Date: 16/05/2019

## RELATED LINKS

[https://github.com/fletcherg/zendesk-client](https://github.com/fletcherg/zendesk-client)


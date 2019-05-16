---
external help file: zendesk-client-help.xml
Module Name: zendesk-client
online version: https://github.com/fletcherg/zendesk-client
https://developer.zendesk.com/rest_api/docs/support/users#create-or-update-user
schema: 2.0.0
---

# New-ZendeskUser

## SYNOPSIS
Create a Zendesk user

## SYNTAX

```
New-ZendeskUser [-userDetails] <Object> [<CommonParameters>]
```

## DESCRIPTION
This function will create a user in Zendesk.
If the user already exists in Zendesk, it will be updated.

## EXAMPLES

### EXAMPLE 1
```
$userDetails = @{'name' = "Tim Basket";
```

'email' = "tim@basket.org";
    'notes' = "somecoolguy"
    'organization' = @{
    'name' = "Acme SomeTestOrg2"}
    }

New-Zendeskuser -userDetails $userDetails
Will create the Zendesk user tim@basket.org in the organization "Acme SomeTestOrg"

## PARAMETERS

### -userDetails
Hash of relevant user details (refer to zendesk API docs)

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

[https://github.com/fletcherg/zendesk-client
https://developer.zendesk.com/rest_api/docs/support/users#create-or-update-user](https://github.com/fletcherg/zendesk-client
https://developer.zendesk.com/rest_api/docs/support/users#create-or-update-user)


---
external help file: zendesk-client-help.xml
Module Name: zendesk-client
online version: https://github.com/fletcherg/zendesk-client
schema: 2.0.0
---

# Get-ZendeskUser

## SYNOPSIS
Get Zendesk user

## SYNTAX

```
Get-ZendeskUser [-id] <Int64[]> [<CommonParameters>]
```

## DESCRIPTION
This function will return the specified Zendesk user.

## EXAMPLES

### EXAMPLE 1
```
Get-ZendeskUser -id 4919282
```

Will return User with id 4919282

## PARAMETERS

### -id
Id of the user to return.

```yaml
Type: Int64[]
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


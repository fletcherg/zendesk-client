---
external help file: zendesk-client-help.xml
Module Name: zendesk-client
online version: https://github.com/fletcherg/zendesk-client
schema: 2.0.0
---

# Get-ZendeskOrganization

## SYNOPSIS
Get Zendesk organizations

## SYNTAX

```
Get-ZendeskOrganization [[-id] <Int64[]>] [[-startswith] <String>] [<CommonParameters>]
```

## DESCRIPTION
This function will return either all Zendesk organizations, or just the organization as specified.

## EXAMPLES

### EXAMPLE 1
```
Get-ZendeskOrganization
```

Will return all Zendesk Organizations

### EXAMPLE 2
```
Get-ZendeskOrganization -id 4919282
```

Will return Organization with id 4919282

### EXAMPLE 3
```
Get-ZendeskOrganization -startsWith Acme
```

Will return Organizations that strat with Acme

## PARAMETERS

### -id
If specified, only return this specific organization

```yaml
Type: Int64[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -startswith
If specified, return organizations starting with this string

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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


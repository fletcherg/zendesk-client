---
external help file: zendesk-client-help.xml
Module Name: zendesk-client
online version: https://github.com/fletcherg/zendesk-client
schema: 2.0.0
---

# Connect-Zendesk

## SYNOPSIS
Get Zendesk organizations

## SYNTAX

```
Connect-Zendesk [-subdomain] <String> [-username] <String> [-token] <String> [<CommonParameters>]
```

## DESCRIPTION
This function will return either all Zendesk organizations, or just the organization as specified.

## EXAMPLES

### EXAMPLE 1
```
Connect-Zendesk -subdomain "acme" -username "ted.baskets@baskets.at" -token "fjOajsjQOnznJQJnaNZNZNjqkajsJS"
```

Connect to Zendesk API with this user

## PARAMETERS

### -subdomain
Subdomain of your Zendesk tenant

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -username
Username to login with

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -token
API token

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
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


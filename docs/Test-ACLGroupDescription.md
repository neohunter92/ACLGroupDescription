---
external help file: ACLGroupDescription-help.xml
Module Name: ACLGroupDescription
online version:
schema: 2.0.0
---

# Test-ACLGroupDescription

## SYNOPSIS
Testet die Gruppenbeschreibungen mit den angegegebenen Pattern.

## SYNTAX

```
Test-ACLGroupDescription [-Searchbase] <String> [-Pattern] <String> [-Filter] <String> [-Match]
 [<CommonParameters>]
```

## DESCRIPTION
Testet die Gruppenbeschreibungen mit den angegegebenen Pattern, wenn der Match Parameter angegeben wird, werden die Gruppen aufgelistet wo die Pattern übereinstimmen.
Wenn der Match Parameter nicht mitgegeben wird, dann werden alle Gruppen ausgegeben, welche nicht übereinstimmen.
Die Angabe von Searchbase, Pattern und Filter Parameter sind zwingend erforderlich.

## EXAMPLES

### BEISPIEL 1
```
Test-GroupDescription -Searchbase "OU=Users, DC=Contoso, DC=COM" -Pattern "([A-Z])\w+" -Filter * -Match
```

Testet die übereinstimmenden Gruppenbeschreibungen mit den angegegebenen Pattern.

### BEISPIEL 2
```
Test-GroupDescription -Searchbase "OU=Users, DC=Contoso, DC=COM" -Pattern "([A-Z])\w+" -Filter *
```

Testet die nicht übereinstimmenden Gruppenbeschreibungen mit den angegegebenen Pattern.

## PARAMETERS

### -Searchbase
Bitte Distinguished Name der OU eingeben

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

### -Pattern
Regular Expresssion eingeben

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

### -Filter
Filter eingeben (Wildcard ist unterstüzt)

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

### -Match
Falls es true ist, werden nur die Ergebnisse angezeigt, welche übereinstimmen. <br>
Falls es false ist, werden nur die Ergebnisse angezeigt, welche nicht übereinstimmen.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Wurde von Laszlo Forgo entwickelt.

## RELATED LINKS

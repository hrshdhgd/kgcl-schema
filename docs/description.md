# Slot: description
_a textual description_


URI: [https://example.org/TEMP/description](https://example.org/TEMP/description)



<!-- no inheritance hierarchy -->




## Properties

* Range: [xsd:string](xsd:string)
* Multivalued: False







## Identifier and Mapping Information





### Annotations

| property | value |
| --- | --- |
| _if_missing |  |
| special | my_val |
| special2 | my_val2 |




### Schema Source


* from schema: TEMP




## LinkML Specification

<details>
```yaml
name: description
annotations:
  special:
    tag: special
    value: my_val
  special2:
    tag: special2
    value: my_val2
description: a textual description
from_schema: TEMP
exact_mappings:
- sdo:description
- sdo:description
rank: 1000
multivalued: false
alias: description
range: string
required: false

```
</details>
# Class: SynonymPredicateChange
_A node synonym change where the predicate of a synonym is changed. Background: synonyms can be represented by a variety of predicates. For example, many OBO ontologies make use of predicates such as oio:hasExactSynonym, oio:hasRelatedSynonym, etc_





URI: [kgcl_schema:SynonymPredicateChange](https://w3id.org/kgcl-schema/SynonymPredicateChange)




```mermaid
 classDiagram
      NodeSynonymChange <|-- SynonymPredicateChange
      
      SynonymPredicateChange : about_node
      SynonymPredicateChange : about_node_representation
      SynonymPredicateChange : change_date
      SynonymPredicateChange : contributor
      SynonymPredicateChange : creator
      SynonymPredicateChange : has_textual_diff
      SynonymPredicateChange : has_undo
      SynonymPredicateChange : id
      SynonymPredicateChange : language
      SynonymPredicateChange : new_datatype
      SynonymPredicateChange : new_language
      SynonymPredicateChange : new_value
      SynonymPredicateChange : new_value_type
      SynonymPredicateChange : old_datatype
      SynonymPredicateChange : old_language
      SynonymPredicateChange : old_value
      SynonymPredicateChange : old_value_type
      SynonymPredicateChange : pull_request
      SynonymPredicateChange : see_also
      SynonymPredicateChange : type
      SynonymPredicateChange : was_generated_by
      

```





## Inheritance
* [Change](Change.md)
    * [SimpleChange](SimpleChange.md)
        * [NodeChange](NodeChange.md)
            * [NodeSynonymChange](NodeSynonymChange.md)
                * **SynonymPredicateChange**



## Slots

| Name | Cardinality and Range  | Description  |
| ---  | ---  | --- |
| [old_value](old_value.md) | 0..1 <br/> [xsd:string](xsd:string)  | The value of a property held in the old instance of the ontology  |
| [new_value](new_value.md) | 0..1 <br/> [xsd:string](xsd:string)  | The value of a property held in the new instance of the ontology  |
| [has_textual_diff](has_textual_diff.md) | 0..1 <br/> [TextualDiff](TextualDiff.md)  | A representation of character-level changes on a textual literal property  |
| [about_node](about_node.md) | 0..1 <br/> [Node](Node.md)  |   |
| [about_node_representation](about_node_representation.md) | 0..1 <br/> [xsd:string](xsd:string)  | The representation of a node (URI, CURIE, label)   |
| [language](language.md) | 0..1 <br/> [LanguageTag](LanguageTag.md)  | The language tag of a literal  |
| [old_value_type](old_value_type.md) | 0..1 <br/> [xsd:string](xsd:string)  | The type (IRI or Literal) of an old value  |
| [new_value_type](new_value_type.md) | 0..1 <br/> [xsd:string](xsd:string)  | The type (IRI or Literal) of a new value  |
| [new_language](new_language.md) | 0..1 <br/> [xsd:string](xsd:string)  | The new language tag of a literal  |
| [old_language](old_language.md) | 0..1 <br/> [xsd:string](xsd:string)  | The old language tag of a literal  |
| [new_datatype](new_datatype.md) | 0..1 <br/> [xsd:string](xsd:string)  | The new datatype of a literal  |
| [old_datatype](old_datatype.md) | 0..1 <br/> [xsd:string](xsd:string)  | The old datatype of a literal  |
| [id](id.md) | 1..1 <br/> [xsd:string](xsd:string)  |   |
| [type](type.md) | 0..1 <br/> [xsd:string](xsd:string)  |   |
| [was_generated_by](was_generated_by.md) | 0..1 <br/> [Activity](Activity.md)  |   |
| [see_also](see_also.md) | 0..1 <br/> [xsd:string](xsd:string)  |   |
| [pull_request](pull_request.md) | 0..1 <br/> [xsd:string](xsd:string)  |   |
| [creator](creator.md) | 0..1 <br/> [xsd:string](xsd:string)  |   |
| [change_date](change_date.md) | 0..1 <br/> [xsd:string](xsd:string)  |   |
| [contributor](contributor.md) | 0..1 <br/> [xsd:string](xsd:string)  |   |
| [has_undo](has_undo.md) | 0..1 <br/> [Change](Change.md)  | A change that reverses this change  |


## Usages



## Identifier and Mapping Information







### Schema Source


* from schema: https://w3id.org/hrshdhgd/kgcl-schema







## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | ['kgcl_schema:SynonymPredicateChange'] |
| native | ['kgcl_schema:SynonymPredicateChange'] |


## LinkML Specification

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: synonym predicate change
description: 'A node synonym change where the predicate of a synonym is changed. Background:
  synonyms can be represented by a variety of predicates. For example, many OBO ontologies
  make use of predicates such as oio:hasExactSynonym, oio:hasRelatedSynonym, etc'
from_schema: https://w3id.org/hrshdhgd/kgcl-schema
aliases:
- node scope change
rank: 1000
is_a: node synonym change
slots:
- old value
- new value
- has textual diff

```
</details>

### Induced

<details>
```yaml
name: synonym predicate change
description: 'A node synonym change where the predicate of a synonym is changed. Background:
  synonyms can be represented by a variety of predicates. For example, many OBO ontologies
  make use of predicates such as oio:hasExactSynonym, oio:hasRelatedSynonym, etc'
from_schema: https://w3id.org/hrshdhgd/kgcl-schema
aliases:
- node scope change
rank: 1000
is_a: node synonym change
attributes:
  old value:
    name: old value
    description: The value of a property held in the old instance of the ontology
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: old_value
    owner: synonym predicate change
    domain_of:
    - simple change
    - node rename
    - set language for name
    - remove synonym
    - synonym replacement
    - synonym predicate change
    - remove text definition
    - text definition replacement
    range: string
  new value:
    name: new value
    description: The value of a property held in the new instance of the ontology
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: new_value
    owner: synonym predicate change
    domain_of:
    - simple change
    - node rename
    - set language for name
    - new synonym
    - synonym replacement
    - synonym predicate change
    - new text definition
    - text definition replacement
    range: string
  has textual diff:
    name: has textual diff
    description: A representation of character-level changes on a textual literal
      property. For example, if a text definition may change by only a single character
      such as addition of a period, it is useful to be able to see this visually.
    comments:
    - this is NOT for representing the diff of the change as a whole.
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    domain: change
    alias: has_textual_diff
    owner: synonym predicate change
    domain_of:
    - node rename
    - synonym replacement
    - synonym predicate change
    - text definition replacement
    range: textual diff
  about node:
    name: about node
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    is_a: about
    multivalued: false
    alias: about_node
    owner: synonym predicate change
    domain_of:
    - node change
    range: node
  about node representation:
    name: about node representation
    description: 'The representation of a node (URI, CURIE, label) '
    deprecated: no longer required
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: about_node_representation
    owner: synonym predicate change
    domain_of:
    - node change
    range: string
  language:
    name: language
    description: The language tag of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: language
    owner: synonym predicate change
    domain_of:
    - edge change
    - node change
    - new synonym
    - node creation
    range: language tag
  old value type:
    name: old value type
    description: The type (IRI or Literal) of an old value
    deprecated: no longer required
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: old_value_type
    owner: synonym predicate change
    domain_of:
    - simple change
    range: string
  new value type:
    name: new value type
    description: The type (IRI or Literal) of a new value
    deprecated: no longer required
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: new_value_type
    owner: synonym predicate change
    domain_of:
    - simple change
    range: string
  new language:
    name: new language
    description: The new language tag of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: new_language
    owner: synonym predicate change
    domain_of:
    - simple change
    - node rename
    range: string
  old language:
    name: old language
    description: The old language tag of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: old_language
    owner: synonym predicate change
    domain_of:
    - simple change
    - node rename
    range: string
  new datatype:
    name: new datatype
    description: The new datatype of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: new_datatype
    owner: synonym predicate change
    domain_of:
    - simple change
    range: string
  old datatype:
    name: old datatype
    description: The old datatype of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: old_datatype
    owner: synonym predicate change
    domain_of:
    - simple change
    range: string
  id:
    name: id
    from_schema: https://w3id.org/kgcl_schema/basics
    rank: 1000
    identifier: true
    alias: id
    owner: synonym predicate change
    domain_of:
    - change
    - activity
    - agent
    - node
    range: string
  type:
    name: type
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: rdf:type
    designates_type: true
    alias: type
    owner: synonym predicate change
    domain_of:
    - change
    range: string
  was generated by:
    name: was generated by
    from_schema: https://w3id.org/kgcl_schema/prov
    rank: 1000
    slot_uri: prov:wasGeneratedBy
    alias: was_generated_by
    owner: synonym predicate change
    domain_of:
    - change
    range: activity
  see also:
    name: see also
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: rdfs:seeAlso
    alias: see_also
    owner: synonym predicate change
    domain_of:
    - change
    range: string
  pull request:
    name: pull request
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: pull_request
    owner: synonym predicate change
    domain_of:
    - change
    range: string
  creator:
    name: creator
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: dcterms:creator
    alias: creator
    owner: synonym predicate change
    domain_of:
    - change
    range: string
  change date:
    name: change date
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: dcterms:date
    alias: change_date
    owner: synonym predicate change
    domain_of:
    - change
    range: string
  contributor:
    name: contributor
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: dcterms:creator
    alias: contributor
    owner: synonym predicate change
    domain_of:
    - change
    range: string
  has undo:
    name: has undo
    description: A change that reverses this change
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    domain: change
    multivalued: false
    alias: has_undo
    owner: synonym predicate change
    domain_of:
    - change
    range: change

```
</details>
# Class: RemoveUnder
_An edge deletion where the predicate is owl:subClassOf
  _





URI: [kgcl_schema:RemoveUnder](https://w3id.org/kgcl-schema/RemoveUnder)




```mermaid
 classDiagram
      EdgeDeletion <|-- RemoveUnder
      
      RemoveUnder : about_edge
      RemoveUnder : annotation_set
      RemoveUnder : change_date
      RemoveUnder : contributor
      RemoveUnder : creator
      RemoveUnder : datatype
      RemoveUnder : has_undo
      RemoveUnder : id
      RemoveUnder : language
      RemoveUnder : new_datatype
      RemoveUnder : new_language
      RemoveUnder : new_value
      RemoveUnder : new_value_type
      RemoveUnder : object
      RemoveUnder : object_type
      RemoveUnder : old_datatype
      RemoveUnder : old_language
      RemoveUnder : old_value
      RemoveUnder : old_value_type
      RemoveUnder : predicate
      RemoveUnder : predicate_type
      RemoveUnder : pull_request
      RemoveUnder : see_also
      RemoveUnder : subject
      RemoveUnder : subject_type
      RemoveUnder : type
      RemoveUnder : was_generated_by
      

```





## Inheritance
* [Change](Change.md)
    * [SimpleChange](SimpleChange.md)
        * [EdgeChange](EdgeChange.md)
            * [EdgeDeletion](EdgeDeletion.md) [ deletion]
                * **RemoveUnder**



## Slots

| Name | Cardinality and Range  | Description  |
| ---  | ---  | --- |
| [subject](subject.md) | 0..1 <br/> [Node](Node.md)  |   |
| [predicate](predicate.md) | 0..1 <br/> [Node](Node.md)  |   |
| [object](object.md) | 0..1 <br/> [Node](Node.md)  |   |
| [subject_type](subject_type.md) | 0..1 <br/> [xsd:string](xsd:string)  | The type (IRI or Literal) of an edge's subject  |
| [predicate_type](predicate_type.md) | 0..1 <br/> [xsd:string](xsd:string)  | The type (IRI or Literal) of an edge's subject  |
| [object_type](object_type.md) | 0..1 <br/> [xsd:string](xsd:string)  | The type (IRI or Literal) of an object  |
| [annotation_set](annotation_set.md) | 0..1 <br/> [Annotation](Annotation.md)  |   |
| [about_edge](about_edge.md) | 0..1 <br/> [Edge](Edge.md)  |   |
| [language](language.md) | 0..1 <br/> [LanguageTag](LanguageTag.md)  | The language tag of a literal  |
| [datatype](datatype.md) | 0..1 <br/> [xsd:string](xsd:string)  | The datatype of a literal  |
| [old_value](old_value.md) | 0..1 <br/> [xsd:string](xsd:string)  | The value of a property held in the old instance of the ontology  |
| [new_value](new_value.md) | 0..1 <br/> [xsd:string](xsd:string)  | The value of a property held in the new instance of the ontology  |
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
| self | ['kgcl_schema:RemoveUnder'] |
| native | ['kgcl_schema:RemoveUnder'] |


## LinkML Specification

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: remove under
description: "An edge deletion where the predicate is owl:subClassOf\n  "
from_schema: https://w3id.org/hrshdhgd/kgcl-schema
rank: 1000
is_a: edge deletion

```
</details>

### Induced

<details>
```yaml
name: remove under
description: "An edge deletion where the predicate is owl:subClassOf\n  "
from_schema: https://w3id.org/hrshdhgd/kgcl-schema
rank: 1000
is_a: edge deletion
attributes:
  subject:
    name: subject
    from_schema: https://w3id.org/kgcl_schema/ontology
    rank: 1000
    alias: subject
    owner: remove under
    domain_of:
    - edge creation
    - edge deletion
    - edge obsoletion
    - mapping creation
    - edge
    range: node
  predicate:
    name: predicate
    from_schema: https://w3id.org/kgcl_schema/ontology
    rank: 1000
    alias: predicate
    owner: remove under
    domain_of:
    - edge creation
    - edge deletion
    - edge obsoletion
    - mapping creation
    - edge
    range: node
  object:
    name: object
    from_schema: https://w3id.org/kgcl_schema/ontology
    rank: 1000
    alias: object
    owner: remove under
    domain_of:
    - edge creation
    - edge deletion
    - edge obsoletion
    - mapping creation
    - edge
    range: node
  subject type:
    name: subject type
    description: The type (IRI or Literal) of an edge's subject
    deprecated: no longer required
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: subject_type
    owner: remove under
    domain_of:
    - edge creation
    - edge deletion
    range: string
  predicate type:
    name: predicate type
    description: The type (IRI or Literal) of an edge's subject
    deprecated: no longer required
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: predicate_type
    owner: remove under
    domain_of:
    - edge creation
    - edge deletion
    range: string
  object type:
    name: object type
    description: The type (IRI or Literal) of an object
    deprecated: no longer required
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: object_type
    owner: remove under
    domain_of:
    - edge change
    - edge creation
    - edge deletion
    range: string
  annotation set:
    name: annotation set
    from_schema: https://w3id.org/kgcl_schema/ontology
    rank: 1000
    alias: annotation_set
    owner: remove under
    domain_of:
    - edge creation
    - edge deletion
    - edge obsoletion
    - mapping creation
    - node creation
    - annotation
    - node
    - edge
    range: annotation
  about edge:
    name: about edge
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    is_a: about
    multivalued: false
    alias: about_edge
    owner: remove under
    domain_of:
    - edge change
    range: edge
  language:
    name: language
    description: The language tag of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: language
    owner: remove under
    domain_of:
    - edge change
    - node change
    - new synonym
    - node creation
    range: language tag
  datatype:
    name: datatype
    description: The datatype of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: datatype
    owner: remove under
    domain_of:
    - edge change
    range: string
  old value:
    name: old value
    description: The value of a property held in the old instance of the ontology
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: old_value
    owner: remove under
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
    owner: remove under
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
  old value type:
    name: old value type
    description: The type (IRI or Literal) of an old value
    deprecated: no longer required
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: old_value_type
    owner: remove under
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
    owner: remove under
    domain_of:
    - simple change
    range: string
  new language:
    name: new language
    description: The new language tag of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: new_language
    owner: remove under
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
    owner: remove under
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
    owner: remove under
    domain_of:
    - simple change
    range: string
  old datatype:
    name: old datatype
    description: The old datatype of a literal
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: old_datatype
    owner: remove under
    domain_of:
    - simple change
    range: string
  id:
    name: id
    from_schema: https://w3id.org/kgcl_schema/basics
    rank: 1000
    identifier: true
    alias: id
    owner: remove under
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
    owner: remove under
    domain_of:
    - change
    range: string
  was generated by:
    name: was generated by
    from_schema: https://w3id.org/kgcl_schema/prov
    rank: 1000
    slot_uri: prov:wasGeneratedBy
    alias: was_generated_by
    owner: remove under
    domain_of:
    - change
    range: activity
  see also:
    name: see also
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: rdfs:seeAlso
    alias: see_also
    owner: remove under
    domain_of:
    - change
    range: string
  pull request:
    name: pull request
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    alias: pull_request
    owner: remove under
    domain_of:
    - change
    range: string
  creator:
    name: creator
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: dcterms:creator
    alias: creator
    owner: remove under
    domain_of:
    - change
    range: string
  change date:
    name: change date
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: dcterms:date
    alias: change_date
    owner: remove under
    domain_of:
    - change
    range: string
  contributor:
    name: contributor
    from_schema: https://w3id.org/hrshdhgd/kgcl-schema
    rank: 1000
    slot_uri: dcterms:creator
    alias: contributor
    owner: remove under
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
    owner: remove under
    domain_of:
    - change
    range: change

```
</details>
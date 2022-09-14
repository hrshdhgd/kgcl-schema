
# Slot: change description


A string serialization of the change. This should be both human-readable, and parseable.

URI: [kgcl_schema:class_creation_change_description](https://w3id.org/kgcl-schema/class_creation_change_description)


## Domain and Range

[ClassCreation](ClassCreation.md) &#8594;  <sub>0..1</sub> [String](types/String.md)

## Parents

 *  is_a: [node creation➞change description](node_creation_change_description.md)

## Children


## Used by

 * [ClassCreation](ClassCreation.md)

## Other properties

|  |  |  |
| --- | --- | --- |
| **Comments:** | | {'Form 1': 'IRIs are denoted by CURIEs, optionally followed by label in parenthesis'} |
|  | | {'Form 2': "IRIs are denoted by the rdfs:label in single quotes, e.g. 'nervous system'"} |
| **Examples:** | | Example(value="rename UBERON:0002398 from 'manus' to 'hand'", description=None) |
|  | | Example(value="move 'hand' from 'part of' 'hindlimb' to 'part of' 'forelimb'", description=None) |
|  | | Example(value="merge 'cellular metabolic process' into 'metabolic process'", description=None) |
|  | | Example(value="search and replace 'metabolic process' with 'metabolism' in all labels under 'biological process'", description=None) |
|  | | Example(value="search and replace 'metabolic process' with 'metabolism' in all labels under 'biological process' retaining as 'exact synonym'", description=None) |

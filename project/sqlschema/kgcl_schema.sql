

CREATE TABLE activity (
	id TEXT NOT NULL, 
	started_at_time TEXT, 
	ended_at_time TEXT, 
	was_informed_by TEXT, 
	was_associated_with TEXT, 
	used TEXT, 
	description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_informed_by) REFERENCES activity (id), 
	FOREIGN KEY(was_associated_with) REFERENCES agent (id)
);

CREATE TABLE agent (
	id TEXT NOT NULL, 
	acted_on_behalf_of TEXT, 
	was_informed_by TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(acted_on_behalf_of) REFERENCES agent (id), 
	FOREIGN KEY(was_informed_by) REFERENCES activity (id)
);

CREATE TABLE change_set_summary_statistic (
	change_type TEXT, 
	count INTEGER, 
	property_value_set TEXT, 
	PRIMARY KEY (change_type, count, property_value_set)
);

CREATE TABLE class_node (
	id TEXT NOT NULL, 
	name TEXT, 
	annotation_set TEXT, 
	owl_type VARCHAR(16), 
	PRIMARY KEY (id)
);

CREATE TABLE configuration (
	name_predicate TEXT, 
	definition_predicate TEXT, 
	main_synonym_predicate TEXT, 
	synonym_predicates TEXT, 
	creator_predicate TEXT, 
	contributor_predicate TEXT, 
	obsoletion_workflow TEXT, 
	obsoletion_policy TEXT, 
	PRIMARY KEY (name_predicate, definition_predicate, main_synonym_predicate, synonym_predicates, creator_predicate, contributor_predicate, obsoletion_workflow, obsoletion_policy)
);

CREATE TABLE instance_node (
	id TEXT NOT NULL, 
	name TEXT, 
	annotation_set TEXT, 
	owl_type VARCHAR(16), 
	PRIMARY KEY (id)
);

CREATE TABLE language_tag_change (
	old_value TEXT, 
	new_value TEXT, 
	PRIMARY KEY (old_value, new_value)
);

CREATE TABLE node (
	id TEXT NOT NULL, 
	name TEXT, 
	annotation_set TEXT, 
	owl_type VARCHAR(16), 
	PRIMARY KEY (id)
);

CREATE TABLE session (
	change_set TEXT, 
	activity_set TEXT, 
	PRIMARY KEY (change_set, activity_set)
);

CREATE TABLE add_node_to_subset (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	in_subset TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE annotation (
	property TEXT, 
	filler TEXT, 
	annotation_set TEXT, 
	property_type TEXT, 
	filler_type TEXT, 
	PRIMARY KEY (property, filler, annotation_set, property_type, filler_type), 
	FOREIGN KEY(property) REFERENCES node (id)
);

CREATE TABLE class_creation (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	node_id TEXT, 
	name TEXT, 
	owl_type VARCHAR(16), 
	annotation_set TEXT, 
	language TEXT, 
	superclass TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id), 
	FOREIGN KEY(node_id) REFERENCES node (id), 
	FOREIGN KEY(superclass) REFERENCES node (id)
);

CREATE TABLE edge (
	subject TEXT, 
	predicate TEXT, 
	object TEXT, 
	subject_representation TEXT, 
	predicate_representation TEXT, 
	object_representation TEXT, 
	annotation_set TEXT, 
	PRIMARY KEY (subject, predicate, object, subject_representation, predicate_representation, object_representation, annotation_set), 
	FOREIGN KEY(subject) REFERENCES node (id), 
	FOREIGN KEY(predicate) REFERENCES node (id), 
	FOREIGN KEY(object) REFERENCES node (id)
);

CREATE TABLE edge_creation (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	predicate TEXT, 
	object TEXT, 
	subject_type TEXT, 
	predicate_type TEXT, 
	object_type TEXT, 
	annotation_set TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id), 
	FOREIGN KEY(predicate) REFERENCES node (id), 
	FOREIGN KEY(object) REFERENCES node (id)
);

CREATE TABLE edge_deletion (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	predicate TEXT, 
	object TEXT, 
	subject_type TEXT, 
	predicate_type TEXT, 
	object_type TEXT, 
	annotation_set TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id), 
	FOREIGN KEY(predicate) REFERENCES node (id), 
	FOREIGN KEY(object) REFERENCES node (id)
);

CREATE TABLE edge_logical_interpretation_change (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	object_type TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id)
);

CREATE TABLE edge_obsoletion (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	object_type TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	predicate TEXT, 
	object TEXT, 
	annotation_set TEXT, 
	change_description TEXT, 
	about TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id), 
	FOREIGN KEY(predicate) REFERENCES node (id), 
	FOREIGN KEY(object) REFERENCES node (id)
);

CREATE TABLE edge_rewiring (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	object_type TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id)
);

CREATE TABLE logical_axiom_change (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id)
);

CREATE TABLE mapping_creation (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject_type TEXT, 
	predicate_type TEXT, 
	object_type TEXT, 
	subject TEXT, 
	predicate TEXT, 
	object TEXT, 
	annotation_set TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id), 
	FOREIGN KEY(predicate) REFERENCES node (id), 
	FOREIGN KEY(object) REFERENCES node (id)
);

CREATE TABLE multi_node_obsoletion (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id)
);

CREATE TABLE new_synonym (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	new_value TEXT, 
	language TEXT, 
	qualifier TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE new_text_definition (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	new_value TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE node_annotation_change (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	annotation_property TEXT, 
	annotation_property_type TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE node_annotation_replacement (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	annotation_property TEXT, 
	annotation_property_type TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE node_creation (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	node_id TEXT, 
	name TEXT, 
	owl_type VARCHAR(16), 
	annotation_set TEXT, 
	language TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id), 
	FOREIGN KEY(node_id) REFERENCES node (id)
);

CREATE TABLE node_deepening (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	object_type TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	old_object_type TEXT, 
	new_object_type TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id)
);

CREATE TABLE node_deletion (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE node_direct_merge (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	has_nondirect_replacement TEXT, 
	about TEXT, 
	has_direct_replacement TEXT NOT NULL, 
	about_node TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(has_direct_replacement) REFERENCES node (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE node_move (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	object_type TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	old_object_type TEXT, 
	new_object_type TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id)
);

CREATE TABLE node_obsoletion_with_direct_replacement (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	has_nondirect_replacement TEXT, 
	about TEXT, 
	has_direct_replacement TEXT NOT NULL, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id), 
	FOREIGN KEY(has_direct_replacement) REFERENCES node (id)
);

CREATE TABLE node_obsoletion_with_no_direct_replacement (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	has_direct_replacement TEXT, 
	about TEXT, 
	has_nondirect_replacement TEXT NOT NULL, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id), 
	FOREIGN KEY(has_direct_replacement) REFERENCES node (id)
);

CREATE TABLE node_rename (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	has_textual_diff TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE node_shallowing (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	object_type TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	old_object_type TEXT, 
	new_object_type TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id)
);

CREATE TABLE node_synonym_change (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE node_unobsoletion (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	change_description TEXT, 
	replaced_by TEXT, 
	consider TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id), 
	FOREIGN KEY(replaced_by) REFERENCES node (id), 
	FOREIGN KEY(consider) REFERENCES node (id)
);

CREATE TABLE place_under (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	predicate TEXT, 
	object TEXT, 
	subject_type TEXT, 
	predicate_type TEXT, 
	object_type TEXT, 
	annotation_set TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id), 
	FOREIGN KEY(predicate) REFERENCES node (id), 
	FOREIGN KEY(object) REFERENCES node (id)
);

CREATE TABLE predicate_change (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	object_type TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id)
);

CREATE TABLE property_value (
	property TEXT, 
	filler TEXT, 
	PRIMARY KEY (property, filler), 
	FOREIGN KEY(property) REFERENCES node (id)
);

CREATE TABLE remove_synonym (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	old_value TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE remove_text_definition (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	old_value TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE remove_under (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_edge TEXT, 
	language TEXT, 
	datatype TEXT, 
	subject TEXT, 
	predicate TEXT, 
	object TEXT, 
	subject_type TEXT, 
	predicate_type TEXT, 
	object_type TEXT, 
	annotation_set TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(subject) REFERENCES node (id), 
	FOREIGN KEY(predicate) REFERENCES node (id), 
	FOREIGN KEY(object) REFERENCES node (id)
);

CREATE TABLE removed_node_from_subset (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	change_description TEXT, 
	about_node TEXT, 
	subset TEXT, 
	in_subset TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE set_language_for_name (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE synonym_predicate_change (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	has_textual_diff TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE synonym_replacement (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	has_textual_diff TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE text_definition_replacement (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	has_textual_diff TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id)
);

CREATE TABLE "transaction" (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id)
);

CREATE TABLE name_becomes_synonym (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	change_1 TEXT, 
	change_2 TEXT, 
	change_description TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id), 
	FOREIGN KEY(change_1) REFERENCES node_rename (id), 
	FOREIGN KEY(change_2) REFERENCES new_synonym (id)
);

CREATE TABLE node_obsoletion (
	id TEXT NOT NULL, 
	type TEXT, 
	was_generated_by TEXT, 
	see_also TEXT, 
	pull_request TEXT, 
	creator TEXT, 
	change_date TEXT, 
	contributor TEXT, 
	has_undo TEXT, 
	old_value TEXT, 
	new_value TEXT, 
	old_value_type TEXT, 
	new_value_type TEXT, 
	new_language TEXT, 
	old_language TEXT, 
	new_datatype TEXT, 
	old_datatype TEXT, 
	about_node TEXT, 
	about_node_representation TEXT, 
	language TEXT, 
	has_direct_replacement TEXT, 
	has_nondirect_replacement TEXT, 
	change_description TEXT, 
	about TEXT, 
	multi_node_obsoletion_id TEXT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(was_generated_by) REFERENCES activity (id), 
	FOREIGN KEY(about_node) REFERENCES node (id), 
	FOREIGN KEY(has_direct_replacement) REFERENCES node (id), 
	FOREIGN KEY(multi_node_obsoletion_id) REFERENCES multi_node_obsoletion (id)
);

CREATE TABLE multi_node_obsoletion_associated_change_set (
	backref_id TEXT, 
	associated_change_set TEXT, 
	PRIMARY KEY (backref_id, associated_change_set), 
	FOREIGN KEY(backref_id) REFERENCES multi_node_obsoletion (id)
);

CREATE TABLE node_direct_merge_associated_change_set (
	backref_id TEXT, 
	associated_change_set TEXT, 
	PRIMARY KEY (backref_id, associated_change_set), 
	FOREIGN KEY(backref_id) REFERENCES node_direct_merge (id)
);

CREATE TABLE node_obsoletion_with_direct_replacement_associated_change_set (
	backref_id TEXT, 
	associated_change_set TEXT, 
	PRIMARY KEY (backref_id, associated_change_set), 
	FOREIGN KEY(backref_id) REFERENCES node_obsoletion_with_direct_replacement (id)
);

CREATE TABLE node_obsoletion_with_no_direct_replacement_associated_change_set (
	backref_id TEXT, 
	associated_change_set TEXT, 
	PRIMARY KEY (backref_id, associated_change_set), 
	FOREIGN KEY(backref_id) REFERENCES node_obsoletion_with_no_direct_replacement (id)
);

CREATE TABLE transaction_change_set (
	backref_id TEXT, 
	change_set TEXT, 
	PRIMARY KEY (backref_id, change_set), 
	FOREIGN KEY(backref_id) REFERENCES "transaction" (id)
);

CREATE TABLE node_obsoletion_associated_change_set (
	backref_id TEXT, 
	associated_change_set TEXT, 
	PRIMARY KEY (backref_id, associated_change_set), 
	FOREIGN KEY(backref_id) REFERENCES node_obsoletion (id)
);
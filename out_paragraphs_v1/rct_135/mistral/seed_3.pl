:- module(ai_content_transparency, [
    may_encourage_codes_of_practice/1,
    codes_of_practice_purpose/2,
    codes_of_practice_facilitate_implementation/2,
    codes_of_practice_support_arrangements/2,
    practical_arrangements_purpose/2,
    detection_mechanisms_accessible/1,
    cooperation_with_actors/2,
    disseminate_content/2,
    check_authenticity_and_provenance/2,
    enable_public_distinguish/2,
    transparency_obligations_mandatory/0,
    transparency_obligations_fully_applicable/0,
    without_prejudice_to_transparency_obligations/1
]).

% The transparency obligations are mandatory and fully applicable
transparency_obligations_mandatory.
transparency_obligations_fully_applicable.

% The Commission's action is without prejudice to those obligations
without_prejudice_to_transparency_obligations(Action) :-
    transparency_obligations_mandatory,
    transparency_obligations_fully_applicable,
    Action = encourage_and_facilitate_codes_of_practice.

% The Commission may encourage and facilitate codes of practice at Union level
may_encourage_codes_of_practice(Commission) :-
    commission(Commission),
    without_prejudice_to_transparency_obligations(encourage_and_facilitate_codes_of_practice).

% Codes of practice are drawn up at Union level
codes_of_practice_purpose(codes_of_practice, union_level).

% Codes of practice facilitate effective implementation of obligations
codes_of_practice_facilitate_implementation(codes_of_practice, Obligations) :-
    obligations_regarding(detection_and_labelling, artificially_generated_or_manenerated_content),
    Obligations = obligations(detection_and_labelling, artificially_generated_or_manipulated_content).

% Codes of practice support practical arrangements
codes_of_practice_support_arrangements(codes_of_practice, practical_arrangements).

% Practical arrangements make detection mechanisms accessible
practical_arrangements_purpose(practical_arrangements, accessible(detection_mechanisms)).

% Detection mechanisms are made accessible as appropriate
detection_mechanisms_accessible(detection_mechanisms).

% Practical arrangements facilitate cooperation with other actors along the value chain
cooperation_with_actors(practical_arrangements, other_actors(along_value_chain)).

% Practical arrangements involve disseminating content
disseminate_content(practical_arrangements, content).

% Practical arrangements involve checking authenticity and provenance
check_authenticity_and_provenance(practical_arrangements, authenticity_and_provenance(content)).

% These arrangements enable the public to effectively distinguish AI-generated content
enable_public_distinguish(practical_arrangements, public) :-
    distinguish(ai_generated_content).

% Input predicates
:- dynamic commission/1.
:- dynamic obligations_regarding/2.
:- dynamic distinguish/1.

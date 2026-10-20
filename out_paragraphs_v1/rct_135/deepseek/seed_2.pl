:- module(artificial_intelligence_content_codes, [
    must_comply_with/1,
    transparency_obligations_mandatory/0,
    may_encourage_and_facilitate/2,
    code_of_practice_purpose/1,
    detection_mechanism_accessibility/0,
    cooperation_facilitated/1,
    content_dissemination/1,
    authenticity_and_provenance_checking/1,
    public_distinction_enabled/0
]).

:- dynamic places_on_market/2.

transparency_obligations_mandatory.

may_encourage_and_facilitate(Commission, drawing_up_of_code(Code)) :-
    commission(Commission),
    code_of_practice(Code),
    code_of_practice_purpose(Code).

code_of_practice_purpose(Code) :-
    code_of_practice(Code),
    purpose_facilitate(Code, effective_implementation(detection_and_labelling_obligations)).

code_of_practice_purpose(Code) :-
    code_of_practice(Code),
    purpose_support(Code, detection_mechanism_accessibility).

code_of_practice_purpose(Code) :-
    code_of_practice(Code),
    purpose_facilitate(Code, cooperation(actor_along_value_chain)).

code_of_practice_purpose(Code) :-
    code_of_practice(Code),
    purpose_facilitate(Code, content_dissemination).

code_of_practice_purpose(Code) :-
    code_of_practice(Code),
    purpose_facilitate(Code, authenticity_and_provenance_checking).

code_of_practice_purpose(Code) :-
    code_of_practice(Code),
    purpose_enable(Code, public_distinction_enabled).

must_comply_with(Party) :-
    places_on_market(Party, _),
    transparency_obligations_mandatory.

commission(commission).

code_of_practice(Code) :-
    atom(Code).

detection_mechanism_accessibility.

cooperation_facilitated(actor_along_value_chain).

content_dissemination(Content) :-
    artificially_generated_or_manipulated(Content).

authenticity_and_provenance_checking(Content) :-
    artificially_generated_or_manipulated(Content).

public_distinction_enabled.

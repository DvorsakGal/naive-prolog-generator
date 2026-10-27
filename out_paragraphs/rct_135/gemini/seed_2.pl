:- module(codes_of_practice_transparency, [
    transparency_obligation_applies/1,
    mandatory_transparency_obligation/1,
    permitted_encourage/2,
    permitted_facilitate/2,
    objective_drawing_up_codes_of_practice/1
]).

:- dynamic commission/1.
:- dynamic transparency_obligation/1.
:- dynamic union_level_code_of_practice/1.

% Without prejudice to the mandatory nature and full applicability of the transparency obligations
transparency_obligation_applies(Obligation) :-
    transparency_obligation(Obligation).

mandatory_transparency_obligation(Obligation) :-
    transparency_obligation(Obligation).

% The Commission may also encourage and facilitate the drawing up of codes of practice at Union level
permitted_encourage(Commission, drawing_up(Code)) :-
    commission(Commission),
    union_level_code_of_practice(Code),
    objective_drawing_up_codes_of_practice(Code).

permitted_facilitate(Commission, drawing_up(Code)) :-
    commission(Commission),
    union_level_code_of_practice(Code),
    objective_drawing_up_codes_of_practice(Code).

% To facilitate the effective implementation of the obligations regarding detection and labelling
% of artificially generated or manipulated content, including supporting practical arrangements
objective_drawing_up_codes_of_practice(Code) :-
    union_level_code_of_practice(Code).

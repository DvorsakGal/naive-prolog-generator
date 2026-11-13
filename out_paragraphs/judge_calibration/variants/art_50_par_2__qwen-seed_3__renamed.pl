:- module(ai_material_marking, [
    supplier/1,
    ai_system/1,
    general_purpose_ai_system/1,
    generates_synthetic_material/2,
    must_mark_generated_output/2,
    machine_readable_format/1,
    recognisable_as_artificially_generated/1,
    must_guarantee_technical_solution_properties/2,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    technically_feasible/1,
    takes_into_account_material_specificities/1,
    takes_into_account_implementation_costs/1,
    takes_into_account_state_of_the_art/1,
    reflected_in_relevant_technical_standards/1,
    exempt_marking_duty/1,
    performs_assistive_function_for_standard_editing/1,
    does_not_substantially_alter_input_data/1,
    does_not_substantially_alter_semantics/1,
    authorised_by_law_for_criminal_offences/1
]).
:- dynamic supplier/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_material/2.
:- dynamic machine_readable_format/1.
:- dynamic recognisable_as_artificially_generated/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic technically_feasible/1.
:- dynamic takes_into_account_material_specificities/1.
:- dynamic takes_into_account_implementation_costs/1.
:- dynamic takes_into_account_state_of_the_art/1.
:- dynamic reflected_in_relevant_technical_standards/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic does_not_substantially_alter_semantics/1.
:- dynamic authorised_by_law_for_criminal_offences/1.

must_mark_generated_output(XProvider, XSystem) :-
    supplier(XProvider),
    ai_system(XSystem),
    generates_synthetic_material(XSystem, _Content),
    \+ exempt_marking_duty(XSystem).

robust(solution(XSystem)) :-
    ai_system(XSystem),
    generates_synthetic_material(XSystem, _Content),
    technically_feasible(XSystem).

must_mark_generated_output(_Provider, generated_output(XSystem, XFormat)) :-
    ai_system(XSystem),
    generates_synthetic_material(XSystem, _Content),
    machine_readable_format(XFormat),
    recognisable_as_artificially_generated(generated_output(XSystem, XFormat)).

reliable(solution(XSystem)) :-
    ai_system(XSystem),
    generates_synthetic_material(XSystem, _Content),
    technically_feasible(XSystem).

exempt_marking_duty(XSystem) :-
    authorised_by_law_for_criminal_offences(XSystem).

must_guarantee_technical_solution_properties(XProvider, XSystem) :-
    supplier(XProvider),
    ai_system(XSystem),
    generates_synthetic_material(XSystem, _Content),
    technically_feasible(XSystem),
    takes_into_account_material_specificities(XSystem),
    takes_into_account_implementation_costs(XSystem),
    takes_into_account_state_of_the_art(XSystem).

exempt_marking_duty(XSystem) :-
    does_not_substantially_alter_input_data(XSystem).

must_mark_generated_output(XProvider, XSystem) :-
    supplier(XProvider),
    general_purpose_ai_system(XSystem),
    generates_synthetic_material(XSystem, _Content),
    \+ exempt_marking_duty(XSystem).

interoperable(solution(XSystem)) :-
    ai_system(XSystem),
    generates_synthetic_material(XSystem, _Content),
    technically_feasible(XSystem).

reflected_in_relevant_technical_standards(state_of_the_art) :-
    takes_into_account_state_of_the_art(_System).

exempt_marking_duty(XSystem) :-
    performs_assistive_function_for_standard_editing(XSystem).

effective(solution(XSystem)) :-
    ai_system(XSystem),
    generates_synthetic_material(XSystem, _Content),
    technically_feasible(XSystem).

exempt_marking_duty(XSystem) :-
    does_not_substantially_alter_semantics(XSystem).

:- module(union_ai_framework, [
    required_harmonised_rules/1,
    required_regulation/1,
    objective_foster_ai/1,
    objective_protect_public_interest/1,
    objective_protect_fundamental_rights/1,
    objective_smooth_functioning_internal_market/1,
    objective_free_movement/1,
    objective_support_innovation/1,
    objective_enable_ecosystem/1,
    objective_unlock_digital_transformation/1,
    objective_promote_human_centric_approach/1,
    objective_global_leadership/1,
    clear_and_robust/1,
    supportive_of_innovation/1,
    focus_on_smes/1
]).

:- dynamic ai_system/1.
:- dynamic legal_framework/1.
:- dynamic rule/1.
:- dynamic measure/1.
:- dynamic union_value_aligned/1.

% A Union legal framework laying down harmonised rules on AI is needed
required_harmonised_rules(Framework) :-
    legal_framework(Framework),
    objective_foster_ai(Framework),
    objective_protect_public_interest(Framework).

% Objectives of the framework
objective_foster_ai(Framework) :-
    legal_framework(Framework).

objective_protect_public_interest(Framework) :-
    legal_framework(Framework),
    objective_protect_fundamental_rights(Framework).

objective_protect_fundamental_rights(Framework) :-
    legal_framework(Framework).

% Rules regulating the placing on the market, putting into service, and use of certain AI systems
required_regulation(Rule) :-
    rule(Rule),
    regulates_aspect(Rule, placing_on_market),
    regulates_aspect(Rule, putting_into_service),
    regulates_aspect(Rule, use).

regulates_aspect(Rule, placing_on_market) :- rule(Rule).
regulates_aspect(Rule, putting_into_service) :- rule(Rule).
regulates_aspect(Rule, use) :- rule(Rule).

% Objectives achieved by laying down those rules
objective_smooth_functioning_internal_market(Rule) :-
    required_regulation(Rule).

objective_free_movement(System) :-
    ai_system(System),
    required_regulation(_Rule).

% Characteristics and aims of those rules
clear_and_robust(Rule) :-
    required_regulation(Rule),
    objective_protect_fundamental_rights(Rule).

supportive_of_innovation(Rule) :-
    required_regulation(Rule).

objective_enable_ecosystem(Rule) :-
    required_regulation(Rule),
    union_value_aligned(Rule).

objective_unlock_digital_transformation(Rule) :-
    required_regulation(Rule).

% Support for innovation, SMEs and European Council goals
focus_on_smes(Measure) :-
    measure(Measure),
    objective_support_innovation(Measure).

objective_support_innovation(Measure) :-
    measure(Measure).

objective_promote_human_centric_approach(Measure) :-
    objective_support_innovation(Measure),
    focus_on_smes(Measure).

objective_global_leadership(Measure) :-
    objective_support_innovation(Measure),
    focus_on_smes(Measure).

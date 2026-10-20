:- module(harmonised_ai_framework, [
    required_harmonised_rules/1,
    objective_foster_ai/1,
    objective_protect_public_interests/1,
    required_market_regulation/1,
    objective_internal_market_functioning/1,
    permitted_free_movement/1,
    required_protection_of_fundamental_rights/1,
    supportive_innovation/1,
    objective_human_centric_ai/1,
    objective_global_leadership/1
]).

:- dynamic union_legal_framework/1.
:- dynamic ai_system/1.
:- dynamic artificial_intelligence/1.
:- dynamic internal_market/1.
:- dynamic public_interest/1.
:- dynamic fundamental_right/1.
:- dynamic innovative_solution/1.
:- dynamic small_and_medium_enterprise/1.
:- dynamic startup/1.
:- dynamic regulation/1.

% A Union legal framework laying down harmonised rules on AI is needed to foster
% development, use and uptake of AI in the internal market while protecting public interests.
required_harmonised_rules(Framework) :-
    union_legal_framework(Framework),
    objective_foster_ai(Framework),
    objective_protect_public_interests(Framework).

objective_foster_ai(Framework) :-
    union_legal_framework(Framework),
    internal_market(Market),
    artificial_intelligence(AI),
    fosters_development(Framework, AI),
    fosters_use(Framework, AI),
    fosters_uptake(Framework, in(AI, Market)).

:- dynamic fosters_development/2.
:- dynamic fosters_use/2.
:- dynamic fosters_uptake/2.

objective_protect_public_interests(Framework) :-
    union_legal_framework(Framework),
    protects_interest(Framework, high_level(health)),
    protects_interest(Framework, high_level(safety)),
    protects_interest(Framework, high_level(fundamental_rights)),
    protects_interest(Framework, high_level(democracy)),
    protects_interest(Framework, high_level(rule_of_law)),
    protects_interest(Framework, high_level(environmental_protection)).

:- dynamic protects_interest/2.

% Rules regulating placing on the market, putting into service and use of certain AI systems.
required_market_regulation(Framework) :-
    union_legal_framework(Framework),
    objective_internal_market_functioning(Framework).

objective_internal_market_functioning(Framework) :-
    union_legal_framework(Framework),
    regulates_placing_on_market(Framework, System),
    regulates_putting_into_service(Framework, System),
    regulates_use(Framework, System),
    ai_system(System).

:- dynamic regulates_placing_on_market/2.
:- dynamic regulates_putting_into_service/2.
:- dynamic regulates_use/2.

% Allowing those systems to benefit from the principle of free movement of goods and services.
permitted_free_movement(System) :-
    ai_system(System),
    required_market_regulation(Framework),
    regulates_placing_on_market(Framework, System).

% Rules should be clear and robust in protecting fundamental rights.
required_protection_of_fundamental_rights(Framework) :-
    union_legal_framework(Framework),
    clear_and_robust_protection(Framework, fundamental_rights),
    enables_ecosystem(Framework, union_values),
    unlocks_potential(Framework, digital_transformation).

:- dynamic clear_and_robust_protection/2.
:- dynamic enables_ecosystem/2.
:- dynamic unlocks_potential/2.

% Supportive of new innovative solutions and measures in support of innovation focusing on SMEs.
supportive_innovation(Framework) :-
    union_legal_framework(Framework),
    supports_solutions(Framework, innovative_solutions),
    focuses_on_smes(Framework),
    focuses_on_startups(Framework).

:- dynamic supports_solutions/2.
:- dynamic focuses_on_smes/1.
:- dynamic focuses_on_startups/1.

% Regulation supports promoting human-centric AI and global leadership in secure, trustworthy and ethical AI.
objective_human_centric_ai(Reg) :-
    regulation(Reg),
    required_market_regulation(Reg),
    supportive_innovation(Reg),
    promotes_approach(Reg, european_human_centric).

:- dynamic promotes_approach/2.

objective_global_leadership(Reg) :-
    regulation(Reg),
    required_market_regulation(Reg),
    supportive_innovation(Reg),
    pursues_leadership(Reg, development(secure_trustworthy_ethical_ai)).

:- dynamic pursues_leadership/2.

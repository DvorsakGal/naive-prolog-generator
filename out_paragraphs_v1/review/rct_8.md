# rct_8

## Text

A Union legal framework laying down harmonised rules on AI is therefore needed to foster the development, use and uptake of AI in the internal market that at the same time meets a high level of protection of public interests, such as health and safety and the protection of fundamental rights, including democracy, the rule of law and environmental protection as recognised and protected by Union law. To achieve that objective, rules regulating the placing on the market, the putting into service and the use of certain AI systems should be laid down, thus ensuring the smooth functioning of the internal market and allowing those systems to benefit from the principle of free movement of goods and services. Those rules should be clear and robust in protecting fundamental rights, supportive of new innovative solutions, enabling a European ecosystem of public and private actors creating AI systems in line with Union values and unlocking the potential of the digital transformation across all regions of the Union. By laying down those rules as well as measures in support of innovation with a particular focus on small and medium enterprises (SMEs), including startups, this Regulation supports the objective of promoting the European human-centric approach to AI and being a global leader in the development of secure, trustworthy and ethical AI as stated by the European Council

## Numbers

| output | loads | module | clauses | preds | inputs | coverage | violations |
|---|---|---|---|---|---|---|---|
| deepseek/seed_1 | yes | ai_legal_framework | 22 | 16 | 0 | 0.538 | 5 |
| deepseek/seed_2 | yes | ai_regulatory_framework | 23 | 17 | 16 | 0.806 | 7 |
| deepseek/seed_3 | NO | ai_legal_framework | 30 | 20 | 13 | 0.817 | 7 |
| gemini/seed_1 | yes | union_ai_framework | 18 | 16 | 5 | 0.484 | 1 |
| gemini/seed_2 | yes | harmonised_ai_framework | 10 | 10 | 20 | 0.624 | 0 |
| gemini/seed_3 | yes | union_ai_framework | 24 | 18 | 11 | 0.613 | 2 |
| kimi/seed_1 | NO | ai_act_recital | 50 | 43 | 16 | 0.86 | 30 |
| kimi/seed_2 | NO | ai_act_preamble | 34 | 26 | 0 | 0.774 | 35 |
| kimi/seed_3 | NO | ai_act_preamble | 48 | 26 | 16 | 0.785 | 38 |
| mistral/seed_1 | yes | ai_regulation_framework | 31 | 19 | 0 | 0.688 | 0 |
| mistral/seed_2 | NO | ai_regulation_framework | 36 | 19 | 24 | 0.753 | 3 |
| mistral/seed_3 | NO | ai_regulation_framework | 44 | 37 | 29 | 0.699 | 5 |
| qwen/seed_1 | yes | ai_act_objectives | 32 | 25 | 7 | 0.763 | 2 |
| qwen/seed_2 | yes | ai_act_objectives | 31 | 26 | 2 | 0.699 | 0 |
| qwen/seed_3 | yes | ai_regulation_objectives | 38 | 32 | 3 | 0.72 | 3 |

Within-model (3 seeds): deepseek: J_preds 0.368, J_clauses 0.0, consensus 0.0; gemini: J_preds 0.208, J_clauses 0.0, consensus 0.027; kimi: J_preds 0.169, J_clauses 0.004, consensus 0.0; mistral: J_preds 0.176, J_clauses 0.033, consensus 0.018; qwen: J_preds 0.307, J_clauses 0.07, consensus 0.025

## deepseek seed 1

```prolog
:- module(ai_legal_framework, [
    required_legal_framework/1,
    objective_foster_ai/1,
    objective_meet_protection/1,
    must_protect/2,
    recognised_protected/2,
    must_lay_down_rules/1,
    objective_smooth_functioning/1,
    objective_benefit_free_movement/1,
    must_be_clear/1,
    must_be_robust/1,
    must_be_supportive/1,
    must_enable/1,
    objective_unlock_potential/1,
    must_support/2,
    objective_promote_approach/1,
    objective_global_leader/1
]).

% A Union legal framework laying down harmonised rules on AI is needed
required_legal_framework(framework(harmonised_rules(ai))).

% to foster the development, use and uptake of AI in the internal market
objective_foster_ai(framework(harmonised_rules(ai))) :-
    required_legal_framework(framework(harmonised_rules(ai))).

% that at the same time meets a high level of protection of public interests
objective_meet_protection(framework(harmonised_rules(ai))) :-
    required_legal_framework(framework(harmonised_rules(ai))).

% such as health and safety and the protection of fundamental rights
must_protect(framework(harmonised_rules(ai)), health_and_safety).
must_protect(framework(harmonised_rules(ai)), fundamental_rights).

% including democracy, the rule of law and environmental protection
must_protect(framework(harmonised_rules(ai)), democracy).
must_protect(framework(harmonised_rules(ai)), rule_of_law).
must_protect(framework(harmonised_rules(ai)), environmental_protection).

% as recognised and protected by Union law
recognised_protected(union_law, Interest) :-
    must_protect(framework(harmonised_rules(ai)), Interest).

% To achieve that objective, rules regulating the placing on the market,
% the putting into service and the use of certain AI systems should be laid down
must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    required_legal_framework(framework(harmonised_rules(ai))).

% thus ensuring the smooth functioning of the internal market
objective_smooth_functioning(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% and allowing those systems to benefit from the principle of free movement of goods and services
objective_benefit_free_movement(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% Those rules should be clear and robust in protecting fundamental rights
must_be_clear(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).
must_be_robust(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_protect(framework(harmonised_rules(ai)), fundamental_rights).

% supportive of new innovative solutions
must_be_supportive(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% enabling a European ecosystem of public and private actors creating AI systems
% in line with Union values
must_enable(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% and unlocking the potential of the digital transformation across all regions of the Union
objective_unlock_potential(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% By laying down those rules as well as measures in support of innovation
% with a particular focus on small and medium enterprises (SMEs), including startups
must_support(rules(regulating(placing_on_market, putting_into_service, use(ai_systems))), innovation).
must_support(measures, small_and_medium_enterprises).
must_support(measures, startups).

% this Regulation supports the objective of promoting the European human-centric approach to AI
objective_promote_approach(regulation) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))),
    must_support(measures, small_and_medium_enterprises).

% and being a global leader in the development of secure, trustworthy and ethical AI
% as stated by the European Council
objective_global_leader(regulation) :-
    objective_promote_approach(regulation).
```

## deepseek seed 2

```prolog
:- module(ai_regulatory_framework, [
    required_legal_framework/1,
    objective_foster_ai/1,
    objective_meet_protection/1,
    must_protect/2,
    recognised_by_union_law/1,
    required_rules/1,
    must_regulate/2,
    must_ensure/2,
    must_allow/2,
    must_be_clear/1,
    must_be_robust/1,
    must_be_supportive/1,
    must_enable/1,
    must_unlock/1,
    supports_objective/2,
    must_promote/1,
    must_be_global_leader/1
]).

% A Union legal framework laying down harmonised rules on AI is needed
required_legal_framework(Framework) :-
    legal_framework(Framework),
    union(Framework),
    lays_down(Framework, harmonised_rules(ai)).

% to foster the development, use and uptake of AI in the internal market
objective_foster_ai(Framework) :-
    required_legal_framework(Framework),
    fosters(Framework, development(ai)),
    fosters(Framework, use(ai)),
    fosters(Framework, uptake(ai)),
    in_market(Framework, internal_market).

% that at the same time meets a high level of protection of public interests
objective_meet_protection(Framework) :-
    required_legal_framework(Framework),
    meets(Framework, high_level(protection(public_interests))).

% such as health and safety and the protection of fundamental rights
must_protect(Framework, health_and_safety) :-
    objective_meet_protection(Framework).
must_protect(Framework, protection(fundamental_rights)) :-
    objective_meet_protection(Framework).

% including democracy, the rule of law and environmental protection
must_protect(Framework, democracy) :-
    objective_meet_protection(Framework).
must_protect(Framework, rule_of_law) :-
    objective_meet_protection(Framework).
must_protect(Framework, environmental_protection) :-
    objective_meet_protection(Framework).

% as recognised and protected by Union law
recognised_by_union_law(Interest) :-
    must_protect(_, Interest).

% To achieve that objective, rules regulating the placing on the market,
% the putting into service and the use of certain AI systems should be laid down
required_rules(Rules) :-
    rules(Rules),
    achieves(Rules, objective_meet_protection(_)).

must_regulate(Rules, placing_on_market(AiSystem)) :-
    required_rules(Rules),
    ai_system(AiSystem).
must_regulate(Rules, putting_into_service(AiSystem)) :-
    required_rules(Rules),
    ai_system(AiSystem).
must_regulate(Rules, use(AiSystem)) :-
    required_rules(Rules),
    ai_system(AiSystem).

% thus ensuring the smooth functioning of the internal market
must_ensure(Rules, smooth_functioning(internal_market)) :-
    required_rules(Rules).

% and allowing those systems to benefit from the principle of free movement of goods and services
must_allow(Rules, benefit(AiSystem, principle(free_movement(goods_and_services)))) :-
    required_rules(Rules),
    ai_system(AiSystem).

% Those rules should be clear and robust in protecting fundamental rights
must_be_clear(Rules) :-
    required_rules(Rules).
must_be_robust(Rules) :-
    required_rules(Rules),
    protects(Rules, fundamental_rights).

% supportive of new innovative solutions
must_be_supportive(Rules) :-
    required_rules(Rules),
    supportive_of(Rules, new_innovative_solutions).

% enabling a European ecosystem of public and private actors creating AI systems
% in line with Union values
must_enable(Rules) :-
    required_rules(Rules),
    enables(Rules, ecosystem(european, public_and_private_actors, creating(ai_systems, union_values))).

% and unlocking the potential of the digital transformation across all regions of the Union
must_unlock(Rules) :-
    required_rules(Rules),
    unlocks(Rules, potential(digital_transformation, all_regions(union))).

% By laying down those rules as well as measures in support of innovation
% with a particular focus on small and medium enterprises (SMEs), including startups,
% this Regulation supports the objective of promoting the European human-centric approach to AI
supports_objective(Regulation, promote(european_human_centric_approach(ai))) :-
    regulation(Regulation),
    lays_down(Regulation, Rules),
    required_rules(Rules),
    lays_down(Regulation, measures(support(innovation, focus(smes_including_startups)))).

% and being a global leader in the development of secure, trustworthy and ethical AI
% as stated by the European Council
must_promote(Regulation) :-
    supports_objective(Regulation, _).

must_be_global_leader(Regulation) :-
    regulation(Regulation),
    leader_in(Regulation, development(secure_trustworthy_ethical_ai)),
    stated_by(european_council).

% Declare predicates that are inputs (not defined by this text)
:- dynamic legal_framework/1.
:- dynamic union/1.
:- dynamic lays_down/2.
:- dynamic fosters/2.
:- dynamic in_market/2.
:- dynamic meets/2.
:- dynamic rules/1.
:- dynamic achieves/2.
:- dynamic ai_system/1.
:- dynamic protects/2.
:- dynamic supportive_of/2.
:- dynamic enables/2.
:- dynamic unlocks/2.
:- dynamic regulation/1.
:- dynamic leader_in/2.
:- dynamic stated_by/1.
```

## deepseek seed 3

```prolog
:- module(ai_legal_framework, [
    required_legal_framework/1,
    objective_foster_ai/1,
    objective_meet_protection/1,
    must_protect/2,
    recognised_by_union_law/1,
    required_rules/1,
    must_regulate/2,
    must_ensure/2,
    must_allow/2,
    must_be_clear/1,
    must_be_robust/1,
    must_be_supportive/1,
    must_enable/1,
    must_unlock/1,
    supports_objective/2,
    must_focus_on/2,
    small_and_medium_enterprise/1,
    startup/1,
    european_human_centric_approach/1,
    global_leader/1,
    stated_by_european_council/1
]).

% A Union legal framework laying down harmonised rules on AI is needed
required_legal_framework(union_legal_framework(ai)) :-
    must_lay_down(union_legal_framework(ai), harmonised_rules(ai)).

% to foster the development, use and uptake of AI in the internal market
objective_foster_ai(framework(union_legal_framework(ai))) :-
    must_foster(union_legal_framework(ai), development(ai)),
    must_foster(union_legal_framework(ai), use(ai)),
    must_foster(union_legal_framework(ai), uptake(ai)),
    in_market(ai, internal_market).

% that at the same time meets a high level of protection of public interests
objective_meet_protection(framework(union_legal_framework(ai))) :-
    must_meet(union_legal_framework(ai), high_level(protection(public_interests))).

% such as health and safety and the protection of fundamental rights
must_protect(union_legal_framework(ai), health_and_safety).
must_protect(union_legal_framework(ai), fundamental_rights).

% including democracy, the rule of law and environmental protection
must_protect(union_legal_framework(ai), democracy).
must_protect(union_legal_framework(ai), rule_of_law).
must_protect(union_legal_framework(ai), environmental_protection).

% as recognised and protected by Union law
recognised_by_union_law(health_and_safety).
recognised_by_union_law(fundamental_rights).
recognised_by_union_law(democracy).
recognised_by_union_law(rule_of_law).
recognised_by_union_law(environmental_protection).

% rules regulating the placing on the market, the putting into service and the use of certain AI systems should be laid down
required_rules(rules(ai_systems)) :-
    must_regulate(rules(ai_systems), placing_on_market(ai_systems)),
    must_regulate(rules(ai_systems), putting_into_service(ai_systems)),
    must_regulate(rules(ai_systems), use(ai_systems)).

% thus ensuring the smooth functioning of the internal market
must_ensure(rules(ai_systems), smooth_functioning(internal_market)).

% and allowing those systems to benefit from the principle of free movement of goods and services
must_allow(rules(ai_systems), benefit(ai_systems, principle(free_movement(goods_and_services)))).

% Those rules should be clear and robust in protecting fundamental rights
must_be_clear(rules(ai_systems)).
must_be_robust(rules(ai_systems)) :-
    must_protect(rules(ai_systems), fundamental_rights).

% supportive of new innovative solutions
must_be_supportive(rules(ai_systems), new_innovative_solutions).

% enabling a European ecosystem of public and private actors creating AI systems in line with Union values
must_enable(rules(ai_systems)) :-
    ecosystem(european_ecosystem(public_and_private_actors)),
    must_create(european_ecosystem(public_and_private_actors), ai_systems),
    in_line_with(ai_systems, union_values).

% and unlocking the potential of the digital transformation across all regions of the Union
must_unlock(rules(ai_systems)) :-
    potential(digital_transformation),
    across_all_regions(digital_transformation, union).

% By laying down those rules as well as measures in support of innovation
supports_objective(regulation, promote(european_human_centric_approach(ai))) :-
    lays_down(regulation, rules(ai_systems)),
    lays_down(regulation, measures(support(innovation))).

% with a particular focus on small and medium enterprises (SMEs), including startups
must_focus_on(measures(support(innovation)), small_and_medium_enterprises).
must_focus_on(measures(support(innovation)), startups).

small_and_medium_enterprise(X) :- small_and_medium_enterprises(X).
startup(X) :- startups(X).

% this Regulation supports the objective of promoting the European human-centric approach to AI
european_human_centric_approach(ai).

% and being a global leader in the development of secure, trustworthy and ethical AI
global_leader(development(secure_trustworthy_ethical_ai)).

% as stated by the European Council
stated_by_european_council(european_human_centric_approach(ai)).
stated_by_european_council(global_leader(development(secure_trustworthy_ethical_ai))).

% Input predicates
:- dynamic must_lay_down/2.
:- dynamic must_foster/2.
:- dynamic in_market/2.
:- dynamic must_meet/2.
:- dynamic must_regulate/2.
:- dynamic must_create/2.
:- dynamic in_line_with/2.
:- dynamic across_all_regions/2.
:- dynamic lays_down/2.
:- dynamic small_and_medium_enterprises/1.
:- dynamic startups/1.
```

## gemini seed 1

```prolog
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
```

## gemini seed 2

```prolog
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
```

## gemini seed 3

```prolog
:- module(union_ai_framework, [
    harmonised_rule/1,
    ai_system/1,
    small_medium_enterprise/1,
    startup/1,
    required_framework/1,
    objective_foster_uptake/1,
    objective_high_level_protection/1,
    objective_protect_fundamental_rights/1,
    objective_smooth_functioning_internal_market/1,
    objective_free_movement/1,
    objective_support_innovation/1,
    objective_enable_ecosystem/1,
    objective_unlock_digital_transformation/1,
    objective_human_centric_approach/1,
    objective_global_leadership/1,
    clear_and_robust/1,
    supportive_of_innovation/1,
    aligned_with_union_values/1,
    focus_on_smes/1,
    permitted_free_movement/1
]).

:- dynamic ai_system/1.
:- dynamic harmonised_rule/1.
:- dynamic small_medium_enterprise/1.
:- dynamic startup/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic used_system/1.
:- dynamic protects_public_interest/2.
:- dynamic protects_fundamental_right/2.
:- dynamic in_line_with_union_values/1.
:- dynamic created_by/2.
:- dynamic support_measure/1.
:- dynamic focuses_on/2.

% A Union legal framework laying down harmonised rules on AI is needed
required_framework(union_legal_framework(ai)) :-
    harmonised_rule(_Rule).

% Fostering development, use and uptake of AI in the internal market
objective_foster_uptake(union_legal_framework(ai)).

% Meeting a high level of protection of public interests (health, safety)
objective_high_level_protection(union_legal_framework(ai)) :-
    protects_public_interest(union_legal_framework(ai), health),
    protects_public_interest(union_legal_framework(ai), safety).

% Protection of fundamental rights, including democracy, rule of law, and environmental protection
objective_protect_fundamental_rights(union_legal_framework(ai)) :-
    protects_fundamental_right(union_legal_framework(ai), democracy),
    protects_fundamental_right(union_legal_framework(ai), rule_of_law),
    protects_fundamental_right(union_legal_framework(ai), environmental_protection).

% Rules regulating the placing on the market, putting into service, and use of certain AI systems
harmonised_rule(regulates(placing_on_market(S))) :-
    ai_system(S),
    placed_on_market(S).

harmonised_rule(regulates(putting_into_service(S))) :-
    ai_system(S),
    put_into_service(S).

harmonised_rule(regulates(use(S))) :-
    ai_system(S),
    used_system(S).

% Ensuring the smooth functioning of the internal market
objective_smooth_functioning_internal_market(union_legal_framework(ai)) :-
    harmonised_rule(_).

% Allowing those systems to benefit from the principle of free movement of goods and services
permitted_free_movement(S) :-
    ai_system(S),
    harmonised_rule(regulates(placing_on_market(S))).

permitted_free_movement(S) :-
    ai_system(S),
    harmonised_rule(regulates(putting_into_service(S))).

permitted_free_movement(S) :-
    ai_system(S),
    harmonised_rule(regulates(use(S))).

objective_free_movement(union_legal_framework(ai)) :-
    permitted_free_movement(_S).

% Rules should be clear and robust in protecting fundamental rights
clear_and_robust(Rule) :-
    harmonised_rule(Rule),
    objective_protect_fundamental_rights(Rule).

% Rules supportive of new innovative solutions
supportive_of_innovation(Rule) :-
    harmonised_rule(Rule).

objective_support_innovation(union_legal_framework(ai)).

% Enabling a European ecosystem of public and private actors creating AI systems in line with Union values
aligned_with_union_values(S) :-
    ai_system(S),
    in_line_with_union_values(S).

objective_enable_ecosystem(union_legal_framework(ai)) :-
    ai_system(S),
    created_by(S, actor(public)),
    in_line_with_union_values(S).

objective_enable_ecosystem(union_legal_framework(ai)) :-
    ai_system(S),
    created_by(S, actor(private)),
    in_line_with_union_values(S).

% Unlocking the potential of the digital transformation across all regions of the Union
objective_unlock_digital_transformation(union_legal_framework(ai)).

% Measures in support of innovation with a particular focus on SMEs, including startups
focus_on_smes(Measure) :-
    support_measure(Measure),
    focuses_on(Measure, target(sme)).

focus_on_smes(Measure) :-
    support_measure(Measure),
    focuses_on(Measure, target(startup)).

small_medium_enterprise(SME) :-
    startup(SME).

% Supports the objective of promoting the European human-centric approach to AI
objective_human_centric_approach(regulation(ai)) :-
    harmonised_rule(_),
    support_measure(M),
    focus_on_smes(M).

% Objective of being a global leader in secure, trustworthy and ethical AI
objective_global_leadership(regulation(ai)) :-
    harmonised_rule(_),
    support_measure(M),
    focus_on_smes(M).
```

## kimi seed 1

```prolog
:- module(ai_act_recital, [
    needed/1,
    fosters/2,
    meets/1,
    objective_promoting_european_human_centric_approach/1,
    required_regulation/1,
    should_be_laid_down/1,
    ensures/2,
    allows/2,
    should_be_clear/1,
    should_be_robust/1,
    should_be_supportive/1,
    should_be_enabling/1,
    should_be_unlocking/1,
    supports/2,
    stated_by/2
]).

% Dynamic declarations for external input predicates
:- dynamic union_legal_framework/1.
:- dynamic ai/1.
:- dynamic internal_market/1.
:- dynamic public_interest/1.
:- dynamic health_and_safety/1.
:- dynamic fundamental_right/1.
:- dynamic democracy/1.
:- dynamic rule_of_law/1.
:- dynamic environmental_protection/1.
:- dynamic union_law/1.
:- dynamic ai_system/1.
:- dynamic small_medium_enterprise/1.
:- dynamic startup/1.
:- dynamic european_council/1.
:- dynamic secure/1.
:- dynamic trustworthy/1.
:- dynamic ethical/1.

% Core framework need
needed(Framework) :-
    union_legal_framework(Framework),
    harmonised_rules(Framework, ai),
    fosters(Framework, development_use_uptake(ai, internal_market)),
    meets(high_level_protection(public_interests)).

% What the framework fosters
fosters(Framework, development_use_uptake(ai, internal_market)) :-
    union_legal_framework(Framework),
    ai(ai),
    internal_market(internal_market).

% What the framework meets - public interests protection
meets(high_level_protection(public_interests)) :-
    public_interest(health_and_safety),
    public_interest(fundamental_rights),
    recognised_by(health_and_safety, union_law),
    recognised_by(fundamental_rights, union_law),
    includes(fundamental_rights, democracy),
    includes(fundamental_rights, rule_of_law),
    includes(fundamental_rights, environmental_protection),
    democracy(democracy),
    rule_of_law(rule_of_law),
    environmental_protection(environmental_protection),
    union_law(union_law).

% Rules that should be laid down
should_be_laid_down(Rules) :-
    required_regulation(Rules),
    regulates(Rules, placing_on_market(ai_system)),
    regulates(Rules, putting_into_service(ai_system)),
    regulates(Rules, use(ai_system)).

% Effects of laying down rules
ensures(Rules, smooth_functioning(internal_market)) :-
    should_be_laid_down(Rules),
    internal_market(internal_market).

allows(Rules, benefit_from(ai_system, free_movement_goods_services)) :-
    should_be_laid_down(Rules),
    ai_system(ai_system).

% Qualities the rules should have
should_be_clear(Rules) :-
    required_regulation(Rules).

should_be_robust(Rules) :-
    required_regulation(Rules),
    protects(Rules, fundamental_rights).

should_be_supportive(Rules) :-
    required_regulation(Rules),
    supportive_of(Rules, new_innovative_solutions).

should_be_enabling(Rules) :-
    required_regulation(Rules),
    enables(Rules, european_ecosystem(public_private_actors)),
    creating_in_line_with(public_private_actors, ai_system, union_values).

should_be_unlocking(Rules) :-
    required_regulation(Rules),
    unlocking_potential(Rules, digital_transformation),
    across_all_regions(digital_transformation, union).

% Innovation measures focus
supports(Regulation, innovation_measures) :-
    required_regulation(Regulation),
    particular_focus(innovation_measures, smes_including_startups).

smes_including_startups(SMEs) :-
    small_medium_enterprise(SMEs).
smes_including_startups(Startups) :-
    startup(Startups).

% Overall objective support
supports(Regulation, objective_promoting_european_human_centric_approach(ai)) :-
    required_regulation(Regulation),
    supports(Regulation, innovation_measures).

% Global leadership objective
supports(Regulation, global_leader(development(secure_trustworthy_ethical_ai))) :-
    required_regulation(Regulation),
    secure(secure),
    trustworthy(trustworthy),
    ethical(ethical).

stated_by(objective_promoting_european_human_centric_approach(ai), european_council) :-
    european_council(european_council).

% Helper predicates
harmonised_rules(Framework, ai) :-
    union_legal_framework(Framework).

required_regulation(Rules) :-
    should_be_laid_down(Rules).

regulates(Rules, placing_on_market(ai_system)) :-
    should_be_laid_down(Rules),
    ai_system(ai_system).

regulates(Rules, putting_into_service(ai_system)) :-
    should_be_laid_down(Rules),
    ai_system(ai_system).

regulates(Rules, use(ai_system)) :-
    should_be_laid_down(Rules),
    ai_system(ai_system).

recognised_by(Interest, union_law) :-
    public_interest(Interest),
    union_law(union_law).

includes(fundamental_rights, democracy) :-
    fundamental_right(fundamental_rights),
    democracy(democracy).

includes(fundamental_rights, rule_of_law) :-
    fundamental_right(fundamental_rights),
    rule_of_law(rule_of_law).

includes(fundamental_rights, environmental_protection) :-
    fundamental_right(fundamental_rights),
    environmental_protection(environmental_protection).

protects(Rules, fundamental_rights) :-
    should_be_laid_down(Rules),
    fundamental_right(fundamental_rights).

supportive_of(Rules, new_innovative_solutions) :-
    required_regulation(Rules).

enables(Rules, european_ecosystem(public_private_actors)) :-
    required_regulation(Rules).

creating_in_line_with(public_private_actors, ai_system, union_values) :-
    ai_system(ai_system).

unlocking_potential(Rules, digital_transformation) :-
    required_regulation(Rules).

across_all_regions(digital_transformation, union) :-
    required_regulation(_).

particular_focus(innovation_measures, smes_including_startups) :-
    small_medium_enterprise(_);
    startup(_).

development_use_uptake(ai, internal_market) :-
    ai(ai),
    internal_market(internal_market).

high_level_protection(public_interests) :-
    public_interest(_).

smooth_functioning(internal_market) :-
    internal_market(internal_market).

free_movement_goods_services :-
    true.

new_innovative_solutions :-
    true.

european_ecosystem(public_private_actors) :-
    true.

union_values :-
    true.

digital_transformation :-
    true.

union :-
    true.

public_interests :-
    public_interest(_).

secure_trustworthy_ethical_ai :-
    secure(_),
    trustworthy(_),
    ethical(_).

development(secure_trustworthy_ethical_ai) :-
    secure_trustworthy_ethical_ai.

global_leader(development(secure_trustworthy_ethical_ai)) :-
    development(secure_trustworthy_ethical_ai).

placing_on_market(ai_system) :-
    ai_system(_).

putting_into_service(ai_system) :-
    ai_system(_).

use(ai_system) :-
    ai_system(_).

benefit_from(ai_system, free_movement_goods_services) :-
    ai_system(_),
    free_movement_goods_services.
```

## kimi seed 2

```prolog
:- module(ai_act_preamble, [
    needed/1,
    fosters/2,
    meets/2,
    protects/2,
    objective/1,
    regulates/2,
    ensures/2,
    allows/2,
    clear/1,
    robust/1,
    supportive/1,
    enabling/2,
    unlocking/2,
    supports/2,
    promotes/2,
    global_leader/2,
    places_on_market/2,
    puts_into_service/2,
    uses/2,
    ai_system/1,
    union_legal_framework/1,
    harmonised_rule/1,
    internal_market/1,
    public_interest/1,
    health_and_safety/1,
    fundamental_right/1,
    democracy/1,
    rule_of_law/1,
    environmental_protection/1,
    union_law/1,
    smooth_functioning/1,
    free_movement/1,
    goods/1,
    service/1,
    innovative_solution/1,
    european_ecosystem/1,
    public_actor/1,
    private_actor/1,
    union_value/1,
    digital_transformation/1,
    region/1,
    measure/1,
    support_innovation/1,
    small_medium_enterprise/1,
    startup/1,
    regulation/1,
    european_human_centric_approach/1,
    secure_ai/1,
    trustworthy_ai/1,
    ethical_ai/1,
    european_council/1
]).

:- dynamic ai_system/1, union_legal_framework/1, harmonised_rule/1, internal_market/1,
    public_interest/1, health_and_safety/1, fundamental_right/1, democracy/1,
    rule_of_law/1, environmental_protection/1, union_law/1, smooth_functioning/1,
    free_movement/1, goods/1, service/1, innovative_solution/1, european_ecosystem/1,
    public_actor/1, private_actor/1, union_value/1, digital_transformation/1,
    region/1, measure/1, support_innovation/1, small_medium_enterprise/1, startup/1,
    regulation/1, european_human_centric_approach/1, secure_ai/1, trustworthy_ai/1,
    ethical_ai/1, european_council/1.

% The Union legal framework with harmonised rules on AI is needed
needed(union_legal_framework(harmonised_rules_on_ai)).

% It fosters development, use and uptake of AI in the internal market
fosters(union_legal_framework(harmonised_rules_on_ai), development(ai_system(_S))).
fosters(union_legal_framework(harmonised_rules_on_ai), use(ai_system(_S))).
fosters(union_legal_framework(harmonised_rules_on_ai), uptake(ai_system(_S), internal_market(_M))).

% It meets a high level of protection of public interests
meets(union_legal_framework(harmonised_rules_on_ai), protection(public_interest(_P))).

% Public interests include health and safety
public_interest(health_and_safety).
public_interest(fundamental_right).

% Fundamental rights include democracy, rule of law, environmental protection
fundamental_right(democracy).
fundamental_right(rule_of_law).
fundamental_right(environmental_protection).

% These are recognised and protected by Union law
recognised_and_protected_by(health_and_safety, union_law).
recognised_and_protected_by(fundamental_right, union_law).

% Objective: rules regulating placing on market, putting into service, use of certain AI systems
objective(regulation(placing_on_market_putting_into_service_use(ai_system(_S)))).

% This ensures smooth functioning of internal market
ensures(regulation(placing_on_market_putting_into_service_use(ai_system(_S))), smooth_functioning(internal_market(_M))).

% This allows systems to benefit from free movement of goods and services
allows(regulation(placing_on_market_putting_into_service_use(ai_system(_S))), benefit_from(free_movement(goods_and_services))).

% Rules should be clear and robust in protecting fundamental rights
clear(rule(_R)) :- rule_protects_fundamental_rights(_R).
robust(rule(_R)) :- rule_protects_fundamental_rights(_R).

% Rules should be supportive of new innovative solutions
supportive(rule(_R)) :- rule_supports_innovation(_R).

% Rules should enable European ecosystem of public and private actors creating AI systems in line with Union values
enabling(rule(_R), european_ecosystem(public_and_private_actors_creating_ai_systems(union_values))).

% Rules should unlock potential of digital transformation across all regions
unlocking(rule(_R), potential(digital_transformation, all_regions)).

% Regulation supports objective of promoting European human-centric approach to AI
supports(regulation(_R), objective(promoting(european_human_centric_approach(ai)))).

% Regulation supports being global leader in secure, trustworthy and ethical AI
supports(regulation(_R), global_leader(development(secure_trustworthy_ethical_ai), european_council_statement)).

% Measures in support of innovation with particular focus on SMEs including startups
measure(support_innovation(small_medium_enterprise(_Sme))).
measure(support_innovation(startup(_Su))).

% European Council stated objective of being global leader
stated_by(european_council, objective(global_leader(development(secure_trustworthy_ethical_ai)))).

% Helper predicates for compound concepts
rule_protects_fundamental_rights(_R).
rule_supports_innovation(_R).

% Core activities regulated
places_on_market(_Actor, ai_system(_S)).
puts_into_service(_Actor, ai_system(_S)).
uses(_Actor, ai_system(_S)).

% Derived: secure, trustworthy, ethical AI are properties
secure_ai(ai_system(_S)).
trustworthy_ai(ai_system(_S)).
ethical_ai(ai_system(_S)).

% Union values guide creation
in_line_with(creation(ai_system(_S)), union_value(_V)).
```

## kimi seed 3

```prolog
:- module(ai_act_preamble, [
    needed/1,
    fosters/2,
    meets/1,
    required_protection_level/1,
    public_interest/1,
    protected_by_union_law/1,
    objective/1,
    must_regulate/2,
    ensures/2,
    allows/2,
    principle/1,
    clear/1,
    robust/1,
    supportive/1,
    enabling/1,
    unlocks/2,
    supports/2,
    stated_objective/1,
    european_council/1,
    union_legal_framework/1,
    ai_system/1,
    internal_market/1,
    health_and_safety/1,
    fundamental_rights/1,
    democracy/1,
    rule_of_law/1,
    environmental_protection/1,
    placing_on_market/1,
    putting_into_service/1,
    use/1,
    smooth_functioning/1,
    free_movement_of_goods_and_services/1,
    innovative_solution/1,
    european_ecosystem/1,
    public_actor/1,
    private_actor/1,
    union_value/1,
    digital_transformation/1,
    region/1,
    measure/1,
    support_innovation/1,
    small_medium_enterprise/1,
    startup/1,
    european_human_centric_approach/1,
    global_leader/1,
    secure_ai/1,
    trustworthy_ai/1,
    ethical_ai/1
]).

:- dynamic union_legal_framework/1, ai_system/1, internal_market/1, health_and_safety/1, 
    fundamental_rights/1, democracy/1, rule_of_law/1, environmental_protection/1,
    placing_on_market/1, putting_into_service/1, use/1, smooth_functioning/1,
    free_movement_of_goods_and_services/1, innovative_solution/1, european_ecosystem/1,
    public_actor/1, private_actor/1, union_value/1, digital_transformation/1,
    region/1, measure/1, support_innovation/1, small_medium_enterprise/1, startup/1,
    european_human_centric_approach/1, global_leader/1, secure_ai/1, trustworthy_ai/1,
    ethical_ai/1, european_council/1.

% The Union legal framework is needed
needed(union_legal_framework(ai)).

% The framework fosters development, use and uptake of AI in the internal market
fosters(union_legal_framework(ai), development(ai_system(_S), internal_market(_M))).
fosters(union_legal_framework(ai), use(ai_system(_S), internal_market(_M))).
fosters(union_legal_framework(ai), uptake(ai_system(_S), internal_market(_M))).

% The framework meets a high level of protection
meets(union_legal_framework(ai)) :-
    required_protection_level(high).

% Public interests that must be protected
public_interest(health_and_safety).
public_interest(fundamental_rights).
public_interest(democracy).
public_interest(rule_of_law).
public_interest(environmental_protection).

% These are recognised and protected by Union law
protected_by_union_law(health_and_safety).
protected_by_union_law(fundamental_rights).
protected_by_union_law(democracy).
protected_by_union_law(rule_of_law).
protected_by_union_law(environmental_protection).

% The objective to be achieved
objective(ensure_protection_and_foster_ai).

% Rules should be laid down regulating placing on market, putting into service, and use
must_regulate(_Regulator, placing_on_market(ai_system(_S))).
must_regulate(_Regulator, putting_into_service(ai_system(_S))).
must_regulate(_Regulator, use(ai_system(_S))).

% These rules ensure smooth functioning of internal market
ensures(regulation(ai_system(_S)), smooth_functioning(internal_market(_M))).

% These rules allow systems to benefit from free movement of goods and services
allows(regulation(ai_system(_S)), benefit_from(principle(free_movement_of_goods_and_services))).

% The rules should be clear and robust in protecting fundamental rights
clear(regulation(ai_system(_S))).
robust(regulation(ai_system(_S))) :-
    protects_fundamental_rights(regulation(ai_system(_S))).

% The rules should be supportive of new innovative solutions
supportive(regulation(ai_system(_S))) :-
    innovative_solution(_Solution).

% The rules should enable a European ecosystem of public and private actors
enabling(regulation(ai_system(_S))) :-
    european_ecosystem(_E),
    creates_ai_system(public_actor(_A), ai_system(_S)),
    creates_ai_system(private_actor(_B), ai_system(_S)),
    in_line_with(creation(ai_system(_S)), union_value(_V)).

% The rules should unlock potential of digital transformation across all regions
unlocks(regulation(ai_system(_S)), potential(digital_transformation(_T))) :-
    region(_R).

% Measures in support of innovation with particular focus on SMEs including startups
measure(support_innovation(_M)) :-
    focus_on(_M, small_medium_enterprise(_Sme)),
    focus_on(_M, startup(_Start)).

% The regulation supports promoting European human-centric approach to AI
supports(regulation(ai_act), promote(european_human_centric_approach(_A))).

% The regulation supports being a global leader in secure, trustworthy and ethical AI
supports(regulation(ai_act), global_leader(development(secure_ai(_S)))).
supports(regulation(ai_act), global_leader(development(trustworthy_ai(_T)))).
supports(regulation(ai_act), global_leader(development(ethical_ai(_E)))).

% This is stated by the European Council
stated_objective(promote(european_human_centric_approach(_A))) :-
    european_council(_Council).
stated_objective(global_leader(development(secure_ai(_S)))) :-
    european_council(_Council).
stated_objective(global_leader(development(trustworthy_ai(_T)))) :-
    european_council(_Council).
stated_objective(global_leader(development(ethical_ai(_E)))) :-
    european_council(_Council).

% Helper predicates
required_protection_level(high).
protects_fundamental_rights(regulation(ai_system(_S))).
focus_on(_M, small_medium_enterprise(_Sme)) :- small_medium_enterprise(_Sme).
focus_on(_M, startup(_Start)) :- startup(_Start).
creates_ai_system(public_actor(_A), ai_system(_S)) :- public_actor(_A), ai_system(_S).
creates_ai_system(private_actor(_B), ai_system(_S)) :- private_actor(_B), ai_system(_S).
in_line_with(_Action, union_value(_V)) :- union_value(_V).
benefit_from(principle(free_movement_of_goods_and_services)) :- free_movement_of_goods_and_services(_).
potential(digital_transformation(_T)) :- digital_transformation(_T).
promote(european_human_centric_approach(_A)) :- european_human_centric_approach(_A).
development(secure_ai(_S)) :- secure_ai(_S).
development(trustworthy_ai(_T)) :- trustworthy_ai(_T).
development(ethical_ai(_E)) :- ethical_ai(_E).
```

## mistral seed 1

```prolog
:- module(ai_regulation_framework, [
    objective_regulation/1,
    required_union_legal_framework/1,
    objective_ai_development/1,
    objective_ai_use/1,
    objective_ai_uptake/1,
    objective_internal_market/1,
    objective_high_protection/1,
    protected_interest/1,
    required_rules_ai_systems/1,
    objective_smooth_internal_market/1,
    objective_free_movement/1,
    quality_rule/1,
    objective_support_innovation/1,
    objective_european_ecosystem/1,
    objective_digital_transformation/1,
    objective_support_sme/1,
    objective_human_centric_ai/1,
    objective_global_leader/1,
    quality_ai/1
  ]).

% The regulation itself is the objective
objective_regulation(regulation(ai)).

% A Union legal framework is required
required_union_legal_framework(framework(union, legal, harmonised_rules(ai))).

% The framework fosters development, use and uptake of AI
objective_ai_development(development(ai)).
objective_ai_use(use(ai)).
objective_ai_uptake(uptake(ai)).

% The context is the internal market
objective_internal_market(internal_market).

% High level of protection of public interests is required
objective_high_protection(protection(high, public_interests)).

% Public interests that must be protected
protected_interest(health).
protected_interest(safety).
protected_interest(fundamental_rights).
protected_interest(democracy).
protected_interest(rule_of_law).
protected_interest(environmental_protection).

% Rules regulating placing on market, putting into service, and use of certain AI systems are required
required_rules_ai_systems(rules(regulating(placing_on_market(ai_systems)))).
required_rules_ai_systems(rules(regulating(putting_into_service(ai_systems)))).
required_rules_ai_systems(rules(regulating(use(ai_systems)))).

% These rules ensure smooth functioning of internal market
objective_smooth_internal_market(functioning(smooth, internal_market)).

% These rules allow free movement of goods and services
objective_free_movement(free_movement(goods)).
objective_free_movement(free_movement(services)).

% The rules should be clear and robust in protecting fundamental rights
quality_rule(clear).
quality_rule(robust(protecting(fundamental_rights))).

% The rules are supportive of new innovative solutions
objective_support_innovation(supportive(innovative_solutions)).

% The rules enable a European ecosystem of public and private actors creating AI systems in line with Union values
objective_european_ecosystem(ecosystem(european, actors(public_private, creating(ai_systems, in_line_with(union_values))))).

% The rules unlock the potential of digital transformation across all regions of the Union
objective_digital_transformation(transformation(digital, across(regions(union)))).

% The regulation supports SMEs including startups
objective_support_sme(small_and_medium_enterprises).
objective_support_sme(startups).

% The regulation promotes the European human-centric approach to AI
objective_human_centric_ai(approach(human_centric, european, ai)).

% The regulation aims to be a global leader in development of secure, trustworthy and ethical AI
objective_global_leader(leader(global, development(ai))).

% The AI must be secure, trustworthy and ethical
quality_ai(secure).
quality_ai(trustworthy).
quality_ai(ethical).
```

## mistral seed 2

```prolog
:- module(ai_regulation_framework, [
    objective_regulation/1,
    objective_foster_ai_development/1,
    objective_high_protection/1,
    objective_smooth_internal_market/1,
    objective_clear_robust_rules/1,
    objective_support_innovation/1,
    objective_european_ecosystem/1,
    objective_unlock_digital_transformation/1,
    objective_support_smes/1,
    objective_human_centric_ai/1,
    objective_global_leader/1,
    required_regulation/1,
    required_rules_ai_systems/1,
    required_measures_innovation/1,
    protected_interest/1,
    regulated_activity/1,
    supported_actor/1,
    focused_innovation_actor/1
]).

% The regulation is needed (required)
required_regulation(union_legal_framework).

% Objective: to foster development, use and uptake of AI in the internal market
objective_regulation(union_legal_framework) :-
    objective_foster_ai_development(union_legal_framework).

objective_foster_ai_development(framework) :-
    fosters_development(framework, ai),
    fosters_use(framework, ai),
    fosters_uptake(framework, ai),
    applies_to_market(framework, internal_market).

% Objective: to meet a high level of protection of public interests
objective_regulation(union_legal_framework) :-
    objective_high_protection(union_legal_framework).

objective_high_protection(framework) :-
    meets_level(framework, high),
    protects_interests(framework, public_interests).

% Protected public interests
protected_interest(health).
protected_interest(safety).
protected_interest(fundamental_rights).
protected_interest(democracy).
protected_interest(rule_of_law).
protected_interest(environmental_protection).

% These interests are recognised and protected by Union law
recognised_by_union_law(health).
recognised_by_union_law(safety).
recognised_by_union_law(fundamental_rights).
recognised_by_union_law(democracy).
recognised_by_union_law(rule_of_law).
recognised_by_union_law(environmental_protection).

% To achieve that objective, rules regulating certain AI systems should be laid down
required_rules_ai_systems(framework) :-
    objective_regulation(framework),
    regulates_activity(framework, placing_on_market),
    regulates_activity(framework, putting_into_service),
    regulates_activity(framework, use),
    applies_to_systems(framework, certain_ai_systems).

regulated_activity(placing_on_market).
regulated_activity(putting_into_service).
regulated_activity(use).

% Purpose: ensuring smooth functioning of internal market
objective_smooth_internal_market(rules) :-
    ensures_functioning(rules, smooth, internal_market).

% Purpose: allowing free movement of goods and services
objective_smooth_internal_market(rules) :-
    allows_movement(rules, free, goods),
    allows_movement(rules, free, services).

% Rules should be clear and robust in protecting fundamental rights
objective_clear_robust_rules(rules) :-
    property_of_rules(rules, clear),
    property_of_rules(rules, robust),
    protects_with_rules(rules, fundamental_rights).

% Rules should be supportive of new innovative solutions
objective_support_innovation(rules) :-
    supports_solutions(rules, new_innovative).

% Rules enable a European ecosystem of public and private actors creating AI systems in line with Union values
objective_european_ecosystem(rules) :-
    enables_ecosystem(rules, european),
    ecosystem_has_actors(rules, public),
    ecosystem_has_actors(rules, private),
    actors_create_systems(actors, ai_systems),
    in_line_with(ai_systems, union_values).

% Unlocking the potential of digital transformation across all regions of the Union
objective_unlock_digital_transformation(regulation) :-
    unlocks_potential(regulation, digital_transformation),
    applies_to_regions(regulation, all_regions(union)).

% Measures in support of innovation with particular focus on SMEs, including startups
required_measures_innovation(regulation) :-
    objective_regulation(regulation),
    supports_measures(regulation, innovation),
    focused_on(regulation, smes),
    focused_on(regulation, startups).

focused_innovation_actor(sme).
focused_innovation_actor(startup).

supported_actor(sme).
supported_actor(startup).

% This Regulation supports the objective of promoting the European human-centric approach to AI
objective_human_centric_ai(regulation) :-
    promotes_approach(regulation, european_human_centric, ai).

% And being a global leader in the development of secure, trustworthy and ethical AI
objective_global_leader(regulation) :-
    objective_regulation(regulation),
    leader_in(regulation, global, development(ai)),
    property_of_ai(ai, secure),
    property_of_ai(ai, trustworthy),
    property_of_ai(ai, ethical),
    stated_by(european_council, objective(regulation)).

% The European Council stated this objective
stated_by(european_council, objective_human_centric_ai).
stated_by(european_council, objective_global_leader).
```

## mistral seed 3

```prolog
:- module(ai_regulation_framework, [
    objective_regulation/1,
    objective_foster_ai/1,
    objective_high_protection/1,
    objective_smooth_market/1,
    objective_protect_rights/1,
    objective_support_innovation/1,
    objective_european_ecosystem/1,
    objective_unlock_digital_transformation/1,
    objective_support_innovation_sme/1,
    objective_promote_human_centric_ai/1,
    objective_global_leader/1,
    required_rule/1,
    required_rule_market/1,
    required_rule_service/1,
    required_rule_use/1,
    required_measure/1,
    required_measure_innovation/1,
    required_measure_sme/1,
    clear_rule/1,
    robust_rule/1,
    supportive_rule/1,
    enabling_ecosystem/1,
    public_interest/1,
    public_interest_health_safety/1,
    public_interest_fundamental_rights/1,
    fundamental_right/1,
    fundamental_right_democracy/1,
    fundamental_right_rule_of_law/1,
    fundamental_right_environmental_protection/1,
    union_value/1,
    free_movement/1,
    free_movement_goods/1,
    free_movement_services/1,
    ai_system/1,
    actor/1,
    actor_public/1,
    actor_private/1,
    sme/1,
    startup/1,
    european_council_statement/1
]).

% The regulation is needed to foster development, use and uptake of AI in the internal market
objective_regulation(Regulation) :-
    objective_foster_ai(Regulation),
    objective_high_protection(Regulation).

objective_foster_ai(Regulation) :-
    fosters_development(Regulation, ai),
    fosters_use(Regulation, ai),
    fosters_uptake(Regulation, ai),
    internal_market(Regulation).

objective_high_protection(Regulation) :-
    high_level_protection(Regulation, Interest),
    public_interest(Interest).

% Public interests protected
public_interest(health_safety).
public_interest(fundamental_rights).

public_interest_health_safety(Interest) :-
    public_interest(Interest),
    health_safety(Interest).

public_interest_fundamental_rights(Interest) :-
    public_interest(Interest),
    fundamental_rights(Interest).

fundamental_right(democracy).
fundamental_right(rule_of_law).
fundamental_right(environmental_protection).

% To achieve that objective, rules regulating placing on market, putting into service and use of certain AI systems
objective_smooth_market(Regulation) :-
    required_rule(Regulation),
    ensures_smooth_functioning(Regulation, internal_market),
    allows_free_movement(Regulation).

required_rule(Regulation) :-
    required_rule_market(Regulation),
    required_rule_service(Regulation),
    required_rule_use(Regulation).

required_rule_market(Regulation) :-
    regulates(Regulation, placing_on_market, ai_system).

required_rule_service(Regulation) :-
    regulates(Regulation, putting_into_service, ai_system).

required_rule_use(Regulation) :-
    regulates(Regulation, use, ai_system).

% Those rules should be clear and robust in protecting fundamental rights
objective_protect_rights(Regulation) :-
    clear_rule(Regulation),
    robust_rule(Regulation),
    protects(Regulation, fundamental_rights).

clear_rule(Regulation) :-
    required_rule(Regulation),
    clear(Regulation).

robust_rule(Regulation) :-
    required_rule(Regulation),
    robust(Regulation).

% Supportive of new innovative solutions
objective_support_innovation(Regulation) :-
    supportive_rule(Regulation),
    supports(Regulation, innovative_solutions).

supportive_rule(Regulation) :-
    required_rule(Regulation),
    supportive(Regulation, innovative_solutions).

% Enabling a European ecosystem of public and private actors creating AI systems in line with Union values
objective_european_ecosystem(Regulation) :-
    enabling_ecosystem(Regulation),
    ecosystem_european(Regulation),
    actor(Regulation, Actor),
    creates_ai_system(Actor),
    in_line_with(Actor, union_value).

enabling_ecosystem(Regulation) :-
    required_rule(Regulation),
    enables(Regulation, ecosystem).

actor(Regulation, public_actor) :-
    objective_european_ecosystem(Regulation).
actor(Regulation, private_actor) :-
    objective_european_ecosystem(Regulation).

actor_public(public_actor).
actor_private(private_actor).

% Unlocking the potential of the digital transformation across all regions of the Union
objective_unlock_digital_transformation(Regulation) :-
    unlocks(Regulation, potential(digital_transformation)),
    across_all_regions(Regulation, union).

% Measures in support of innovation with particular focus on SMEs, including startups
objective_support_innovation_sme(Regulation) :-
    required_measure(Regulation),
    required_measure_innovation(Regulation),
    required_measure_sme(Regulation).

required_measure(Regulation) :-
    measure(Regulation),
    supports(Regulation, innovation).

required_measure_innovation(Regulation) :-
    required_measure(Regulation),
    focus(Regulation, innovation).

required_measure_sme(Regulation) :-
    required_measure(Regulation),
    particular_focus(Regulation, sme),
    includes(sme, startup).

sme(sme).
startup(startup).

% This Regulation supports the objective of promoting the European human-centric approach to AI
objective_promote_human_centric_ai(Regulation) :-
    supports(Regulation, objective(promote(human_centric_approach(ai)))),
    european(human_centric_approach(ai)).

% And being a global leader in the development of secure, trustworthy and ethical AI as stated by the European Council
objective_global_leader(Regulation) :-
    supports(Regulation, objective(be(global_leader))),
    development(ai, secure_trustworthy_ethical),
    european_council_statement(statement).

european_council_statement(statement) :-
    objective_global_leader(_Regulation).

% Free movement principles
free_movement(Regulation) :-
    allows_free_movement(Regulation),
    free_movement_goods(Regulation),
    free_movement_services(Regulation).

free_movement_goods(Regulation) :-
    free_movement(Regulation),
    principle(free_movement, goods).

free_movement_services(Regulation) :-
    free_movement(Regulation),
    principle(free_movement, services).

% AI systems benefit from free movement
ai_system(System) :-
    benefits_from(System, free_movement).

% Union values
union_value(human_centric).
union_value(secure).
union_value(trustworthy).
union_value(ethical).

% Input predicates about the world the text does not settle
:- dynamic fosters_development/2.
:- dynamic fosters_use/2.
:- dynamic fosters_uptake/2.
:- dynamic internal_market/1.
:- dynamic high_level_protection/2.
:- dynamic health_safety/1.
:- dynamic fundamental_rights/1.
:- dynamic regulates/3.
:- dynamic ensures_smooth_functioning/2.
:- dynamic allows_free_movement/1.
:- dynamic clear/1.
:- dynamic robust/1.
:- dynamic protects/2.
:- dynamic supports/2.
:- dynamic supportive/2.
:- dynamic enables/2.
:- dynamic ecosystem_european/1.
:- dynamic creates_ai_system/1.
:- dynamic in_line_with/2.
:- dynamic unlocks/2.
:- dynamic across_all_regions/2.
:- dynamic measure/1.
:- dynamic focus/2.
:- dynamic particular_focus/2.
:- dynamic includes/2.
:- dynamic european/1.
:- dynamic development/2.
:- dynamic principle/2.
:- dynamic benefits_from/2.
```

## qwen seed 1

```prolog
:- module(ai_act_objectives, [
    union_legal_framework_needed/1,
    fosters_development_of_ai/1,
    fosters_use_of_ai/1,
    fosters_uptake_of_ai/1,
    meets_high_level_protection/2,
    public_interest/1,
    regulates_placing_on_market/1,
    regulates_putting_into_service/1,
    regulates_use/1,
    ensures_smooth_functioning_of_internal_market/1,
    allows_free_movement_of_goods_and_services/1,
    clear_in_protecting_fundamental_rights/1,
    robust_in_protecting_fundamental_rights/1,
    supportive_of_new_innovative_solutions/1,
    enables_european_ecosystem/1,
    creates_ai_systems_in_line_with_union_values/2,
    unlocks_potential_of_digital_transformation/2,
    lays_down_measures_in_support_of_innovation/1,
    focuses_on_small_and_medium_enterprises/1,
    includes_startups/1,
    supports_promoting_human_centric_approach/1,
    supports_being_global_leader/3,
    stated_by_european_council/1
]).

% Input predicates for entities not defined in this text
:- dynamic ai_system/1.
:- dynamic internal_market/1.
:- dynamic region/1.
:- dynamic actor/1.
:- dynamic ecosystem/1.

% Core need and objectives
union_legal_framework_needed(framework).

fosters_development_of_ai(framework) :-
    internal_market(Market),
    union_legal_framework_needed(framework).

fosters_use_of_ai(framework) :-
    internal_market(Market),
    union_legal_framework_needed(framework).

fosters_uptake_of_ai(framework) :-
    internal_market(Market),
    union_legal_framework_needed(framework).

% High level protection of public interests
meets_high_level_protection(framework, Interest) :-
    public_interest(Interest).

public_interest(health).
public_interest(safety).
public_interest(protection_of_fundamental_rights).
public_interest(democracy).
public_interest(rule_of_law).
public_interest(environmental_protection).

% Regulatory scope
regulates_placing_on_market(rules) :-
    ai_system(_System).

regulates_putting_into_service(rules) :-
    ai_system(_System).

regulates_use(rules) :-
    ai_system(_System).

% Market functioning and free movement
ensures_smooth_functioning_of_internal_market(rules) :-
    regulates_placing_on_market(rules),
    regulates_putting_into_service(rules),
    regulates_use(rules).

allows_free_movement_of_goods_and_services(rules) :-
    regulates_placing_on_market(rules),
    regulates_putting_into_service(rules),
    regulates_use(rules).

% Characteristics of the rules
clear_in_protecting_fundamental_rights(rules).
robust_in_protecting_fundamental_rights(rules).
supportive_of_new_innovative_solutions(rules).

% Ecosystem and values
enables_european_ecosystem(rules) :-
    ecosystem(E),
    actor(A),
    creates_ai_systems_in_line_with_union_values(A, E).

creates_ai_systems_in_line_with_union_values(Actor, Ecosystem) :-
    actor(Actor),
    ecosystem(Ecosystem),
    (public_actor(Actor) ; private_actor(Actor)).

% Digital transformation across regions
unlocks_potential_of_digital_transformation(rules, Region) :-
    region(Region).

% Innovation support measures
lays_down_measures_in_support_of_innovation(regulation).

focuses_on_small_and_medium_enterprises(regulation).

includes_startups(regulation) :-
    focuses_on_small_and_medium_enterprises(regulation).

% Human-centric approach and global leadership
supports_promoting_human_centric_approach(regulation) :-
    lays_down_measures_in_support_of_innovation(regulation),
    focuses_on_small_and_medium_enterprises(regulation).

supports_being_global_leader(regulation, Development, Attribute) :-
    supports_promoting_human_centric_approach(regulation),
    development_type(Development),
    ai_attribute(Attribute).

development_type(development).
ai_attribute(secure).
ai_attribute(trustworthy).
ai_attribute(ethical).

stated_by_european_council(objective(global_leadership)) :-
    supports_being_global_leader(regulation, _Dev, _Attr).
```

## qwen seed 2

```prolog
:- module(ai_act_objectives, [
    union_legal_framework_needed/1,
    fosters_development_of_ai/1,
    fosters_use_of_ai/1,
    fosters_uptake_of_ai/1,
    meets_high_level_protection/2,
    public_interest/1,
    regulates_placing_on_market/1,
    regulates_putting_into_service/1,
    regulates_use/1,
    ensures_smooth_functioning_of_internal_market/1,
    allows_free_movement_of_goods_and_services/1,
    clear_in_protecting_fundamental_rights/1,
    robust_in_protecting_fundamental_rights/1,
    supportive_of_new_innovative_solutions/1,
    enables_european_ecosystem/1,
    creates_ai_systems_in_line_with_union_values/2,
    unlocks_potential_of_digital_transformation/2,
    supports_innovation_measures/1,
    focuses_on_smes/1,
    includes_startups/1,
    promotes_human_centric_approach_to_ai/1,
    aims_at_global_leadership/1,
    secure_ai/1,
    trustworthy_ai/1,
    ethical_ai/1,
    stated_by_european_council/1
]).

% Union legal framework necessity and scope
union_legal_framework_needed(harmonised_rules_on_ai).

fosters_development_of_ai(harmonised_rules_on_ai).
fosters_use_of_ai(harmonised_rules_on_ai).
fosters_uptake_of_ai(harmonised_rules_on_ai).

meets_high_level_protection(harmonised_rules_on_ai, PublicInterest) :-
    public_interest(PublicInterest).

public_interest(health).
public_interest(safety).
public_interest(protection_of_fundamental_rights).
public_interest(democracy).
public_interest(rule_of_law).
public_interest(environmental_protection).

% Regulatory measures for AI systems
regulates_placing_on_market(rules_for_ai_systems).
regulates_putting_into_service(rules_for_ai_systems).
regulates_use(rules_for_ai_systems).

ensures_smooth_functioning_of_internal_market(rules_for_ai_systems).
allows_free_movement_of_goods_and_services(rules_for_ai_systems).

% Characteristics of the rules
clear_in_protecting_fundamental_rights(rules_for_ai_systems).
robust_in_protecting_fundamental_rights(rules_for_ai_systems).
supportive_of_new_innovative_solutions(rules_for_ai_systems).

enables_european_ecosystem(european_ecosystem).

creates_ai_systems_in_line_with_union_values(Actor, european_ecosystem) :-
    ecosystem_actor(Actor).

:- dynamic ecosystem_actor/1.

unlocks_potential_of_digital_transformation(rules_for_ai_systems, Region) :-
    union_region(Region).

:- dynamic union_region/1.

% Innovation support and SME focus
supports_innovation_measures(this_regulation).
focuses_on_smes(this_regulation).
includes_startups(this_regulation).

% Strategic objectives
promotes_human_centric_approach_to_ai(this_regulation).

aims_at_global_leadership(this_regulation).

secure_ai(global_leadership_target).
trustworthy_ai(global_leadership_target).
ethical_ai(global_leadership_target).

stated_by_european_council(global_leadership_target).
```

## qwen seed 3

```prolog
:- module(ai_regulation_objectives, [
    union_legal_framework_needed/1,
    fosters_development_use_uptake/2,
    meets_high_level_protection/2,
    public_interest/1,
    fundamental_right/1,
    recognised_by_union_law/1,
    protected_by_union_law/1,
    regulates_placing_on_market/2,
    regulates_putting_into_service/2,
    regulates_use/2,
    ensures_smooth_functioning/2,
    allows_free_movement/2,
    clear_rules/1,
    robust_in_protecting_fundamental_rights/1,
    supportive_of_innovative_solutions/1,
    enables_european_ecosystem/1,
    european_ecosystem_actor/1,
    creates_ai_systems_in_line_with_union_values/1,
    unlocks_digital_transformation_potential/2,
    includes_measures_supporting_innovation/1,
    focuses_on_smes/1,
    sme/1,
    startup/1,
    supports_human_centric_approach/1,
    supports_global_leadership/1,
    secure_ai/1,
    trustworthy_ai/1,
    ethical_ai/1,
    stated_by_european_council/1
]).

% Input predicates for entities not defined in this text
:- dynamic ai_system/1.
:- dynamic internal_market/1.
:- dynamic region/1.
:- dynamic union_value/1.

% Core necessity and objectives
union_legal_framework_needed(framework).

fosters_development_use_uptake(Framework, InternalMarket) :-
    union_legal_framework_needed(Framework),
    internal_market(InternalMarket).

meets_high_level_protection(Framework, PublicInterest) :-
    union_legal_framework_needed(Framework),
    public_interest(PublicInterest).

% Public interests and fundamental rights
public_interest(health).
public_interest(safety).
public_interest(protection_of_fundamental_rights).

fundamental_right(democracy).
fundamental_right(rule_of_law).
fundamental_right(environmental_protection).

recognised_by_union_law(X) :- fundamental_right(X).
protected_by_union_law(X) :- fundamental_right(X).

% Regulatory scope
regulates_placing_on_market(Rules, AISystem) :-
    ai_system(AISystem),
    certain_ai_system(AISystem).

regulates_putting_into_service(Rules, AISystem) :-
    ai_system(AISystem),
    certain_ai_system(AISystem).

regulates_use(Rules, AISystem) :-
    ai_system(AISystem),
    certain_ai_system(AISystem).

% Market functioning and free movement
ensures_smooth_functioning(Rules, InternalMarket) :-
    internal_market(InternalMarket).

allows_free_movement(Rules, GoodsAndServices) :-
    goods_and_services(GoodsAndServices).

% Rule characteristics
clear_rules(Rules).
robust_in_protecting_fundamental_rights(Rules).
supportive_of_innovative_solutions(Rules).

% Ecosystem and values
enables_european_ecosystem(Rules).

european_ecosystem_actor(public_actor).
european_ecosystem_actor(private_actor).

creates_ai_systems_in_line_with_union_values(Actor) :-
    european_ecosystem_actor(Actor).

unlocks_digital_transformation_potential(Rules, Region) :-
    region(Region).

% Innovation support and SMEs
includes_measures_supporting_innovation(Regulation).

focuses_on_smes(Measures) :-
    includes_measures_supporting_innovation(Measures).

sme(X) :- startup(X).
startup(_X). % Startups are a subset of SMEs per text

% Human-centric approach and global leadership
supports_human_centric_approach(Regulation).

supports_global_leadership(Regulation).

secure_ai(AI).
trustworthy_ai(AI).
ethical_ai(AI).

stated_by_european_council(Objective) :-
    supports_global_leadership(_Regulation),
    objective_global_leadership(Objective).

% Auxiliary predicates implied by text structure
certain_ai_system(_AISystem).
goods_and_services(goods).
goods_and_services(services).
objective_global_leadership(development_of_secure_trustworthy_ethical_ai).
```

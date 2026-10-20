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

% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 58f9a81a710483950c7825583604a2ae2c8d1535746db37269542680e8049457
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_69').
:- pred scientific_panel_expert/1, gloss('expert belonging to the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred enforcement_activity/1, gloss('activity carried out to enforce this Regulation'), source('celex:32024R1689/oj#art_69').
:- pred union_ai_testing_support/1, gloss('AI testing support provided at Union level pursuant to Article 84'), source('celex:32024R1689/oj#art_69').

permitted_call_upon_scientific_panel_expert(MS, E) :-
    member_state(MS),
    scientific_panel_expert(E),
    enforcement_activity(A),
    supports_enforcement_activity(E, A).

must_facilitate_access_to_experts(commission, MS) :-
    member_state(MS).

must_ensure_efficient_organisation_of_support(commission, combination(union_ai_testing_support, scientific_panel_expert)).

supports_enforcement_activity(E, A) :-
    scientific_panel_expert(E),
    enforcement_activity(A).

provenance(permitted_call_upon_scientific_panel_expert/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access_to_experts/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation_of_support/2, 'celex:32024R1689/oj#art_69').
provenance(supports_enforcement_activity/2, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 887e9a73b0274e47a301a23cf686dc3405edfdbbae9a9961fae4b2fff91e8176
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred voluntary_code_of_conduct/1, gloss('code of conduct for voluntary application of specific requirements'), source('celex:32024R1689/oj#art_95').
:- pred encourages_codes_of_conduct/2, gloss('entity encourages and facilitates drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred facilitates_codes_of_conduct/2, gloss('entity facilitates drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred code_objective/2, gloss('objective of a code of conduct'), source('celex:32024R1689/oj#art_95').
:- pred code_key_performance_indicator/2, gloss('key performance indicator for measuring achievement of code objective'), source('celex:32024R1689/oj#art_95').
:- pred drawn_up_by/2, gloss('entity that draws up a code of conduct'), source('celex:32024R1689/oj#art_95').
:- pred covers_ai_systems/2, gloss('code of conduct covers particular AI systems'), source('celex:32024R1689/oj#art_95').
:- pred takes_into_account_sme_needs/2, gloss('entity takes into account specific interests and needs of SMEs'), source('celex:32024R1689/oj#art_95').

voluntary_code_of_conduct(C) :-
    drawn_up_by(C, _).

encourages_codes_of_conduct(ai_office(A), C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_non_high_risk(C).

encourages_codes_of_conduct(member_state(M), C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_non_high_risk(C).

encourages_codes_of_conduct(ai_office(A), C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

encourages_codes_of_conduct(member_state(M), C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

facilitates_codes_of_conduct(ai_office(A), C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

facilitates_codes_of_conduct(member_state(M), C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

applies_to_non_high_risk(C) :-
    voluntary_code_of_conduct(C),
    covers_ai_systems(C, S),
    ai_system(S),
    \+ high_risk_ai_system(S).

applies_to_all_ai_systems(C) :-
    voluntary_code_of_conduct(C),
    covers_ai_systems(C, S),
    ai_system(S).

code_objective(C, trustworthy_ai_elements) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

code_objective(C, environmental_sustainability) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

code_objective(C, ai_literacy) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

code_objective(C, inclusive_and_diverse_design) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

code_objective(C, protection_of_vulnerable_persons) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

code_key_performance_indicator(C, K) :-
    code_objective(C, _),
    clear_objective(C, O),
    measurable_indicator(K, O).

drawn_up_by(C, provider(P)) :-
    voluntary_code_of_conduct(C),
    provider(P).

drawn_up_by(C, deployer(D)) :-
    voluntary_code_of_conduct(C),
    deployer(D).

drawn_up_by(C, organisation(O)) :-
    voluntary_code_of_conduct(C),
    represents_providers_or_deployers(O).

drawn_up_by(C, both(P, O)) :-
    voluntary_code_of_conduct(C),
    provider(P),
    organisation(O),
    represents_providers_or_deployers(O).

drawn_up_by(C, stakeholders(S)) :-
    voluntary_code_of_conduct(C),
    interested_stakeholder(S).

covers_ai_systems(C, S) :-
    voluntary_code_of_conduct(C),
    ai_system(S),
    similar_intended_purpose(S, _Other).

takes_into_account_sme_needs(ai_office(A), C) :-
    ai_office(A),
    voluntary_code_of_conduct(C).

takes_into_account_sme_needs(member_state(M), C) :-
    member_state(M),
    voluntary_code_of_conduct(C).

must_encourage_and_facilitate_codes(A, C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_non_high_risk(C).

must_encourage_and_facilitate_codes(M, C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_non_high_risk(C).

must_facilitate_codes(A, C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

must_facilitate_codes(M, C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).

must_take_into_account_sme_needs(A, C) :-
    ai_office(A),
    voluntary_code_of_conduct(C).

must_take_into_account_sme_needs(M, C) :-
    member_state(M),
    voluntary_code_of_conduct(C).

provenance(voluntary_code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(encourages_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(facilitates_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(code_objective/2, 'celex:32024R1689/oj#art_95').
provenance(code_key_performance_indicator/2, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(covers_ai_systems/2, 'celex:32024R1689/oj#art_95').
provenance(takes_into_account_sme_needs/2, 'celex:32024R1689/oj#art_95').
provenance(applies_to_non_high_risk/1, 'celex:32024R1689/oj#art_95').
provenance(applies_to_all_ai_systems/1, 'celex:32024R1689/oj#art_95').
provenance(must_encourage_and_facilitate_codes/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_codes/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_needs/2, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

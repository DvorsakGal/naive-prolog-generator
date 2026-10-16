% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 7b47bffab1cb5a29e7d978d910b57b7514335964dc652148f46c7c325e2fe6ad
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred ai_office_has_market_surveillance_powers/1, gloss('AI Office has all powers of a market surveillance authority for monitoring and supervision'), source('celex:32024R1689/oj#art_75').
:- pred same_provider_developed_model_and_system/2, gloss('same provider developed both the general-purpose AI model and the AI system based on it'), source('celex:32024R1689/oj#art_75').
:- pred general_purpose_ai_system_usable_by_deployers/1, gloss('general-purpose AI system that can be used directly by deployers'), source('celex:32024R1689/oj#art_75').
:- pred general_purpose_ai_system_high_risk_purpose/1, gloss('general-purpose AI system usable by deployers for at least one purpose classified as high-risk'), source('celex:32024R1689/oj#art_75').
:- pred sufficient_reason_to_consider_non_compliant/2, gloss('market surveillance authority has sufficient reason to consider system non-compliant with requirements'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_conclude_investigation/2, gloss('market surveillance authority unable to conclude investigation due to inability to access information related to general-purpose AI model'), source('celex:32024R1689/oj#art_75').
:- pred made_all_appropriate_efforts/1, gloss('authority made all appropriate efforts to obtain information'), source('celex:32024R1689/oj#art_75').
:- pred reasoned_request_to_ai_office/2, gloss('market surveillance authority submits reasoned request to AI Office for access to information'), source('celex:32024R1689/oj#art_75').
:- pred ai_office_supplies_information/2, gloss('AI Office supplies relevant information to applicant authority'), source('celex:32024R1689/oj#art_75').
:- pred within_days/2, gloss('action taken within specified number of days'), source('celex:32024R1689/oj#art_75').
:- pred information_relevant_to_establish_non_compliance/1, gloss('information relevant to establish whether high-risk AI system is non-compliant'), source('celex:32024R1689/oj#art_75').
:- pred safeguard_confidentiality_of_information/2, gloss('market surveillance authority safeguards confidentiality of information obtained'), source('celex:32024R1689/oj#art_75').
:- pred procedure_applies_mutatis_mutandis/2, gloss('procedure from another act applies mutatis mutandis'), source('celex:32024R1689/oj#art_75').

% Article 75(1): AI Office powers where same provider developed model and system
ai_office_has_market_surveillance_powers(S) :-
    ai_system(S),
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    same_provider_developed_model_and_system(P, S),
    provider(P),
    ai_system_based_on_model(S, M).

ai_system_based_on_model(S, M) :-
    ai_system(S),
    general_purpose_ai_model(M),
    based_on_model(S, M).

based_on_model(S, M) :-
    general_purpose_ai_system(S),
    general_purpose_ai_model(M).

same_provider_developed_model_and_system(P, S) :-
    provider(P),
    general_purpose_ai_model(M),
    general_purpose_ai_system(S),
    developed_by(P, M),
    developed_by(P, S).

developed_by(P, X) :-
    provider(P),
    (general_purpose_ai_model(X) ; ai_system(X)).

% Article 75(2): Cooperation when market surveillance authorities have sufficient reason
must_cooperate_with_ai_office(A, S) :-
    market_surveillance_authority(A),
    general_purpose_ai_system_usable_by_deployers(S),
    general_purpose_ai_system_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(A, S).

must_inform_board_and_other_authorities(A, S) :-
    market_surveillance_authority(A),
    general_purpose_ai_system_usable_by_deployers(S),
    general_purpose_ai_system_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(A, S).

sufficient_reason_to_consider_non_compliant(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    non_compliant_with_requirements(S).

non_compliant_with_requirements(S) :-
    high_risk_ai_system(S),
    \+ meets_requirements(S).

meets_requirements(S) :-
    high_risk_ai_system(S),
    conforms_to_requirements(S).

conforms_to_requirements(S) :-
    high_risk_ai_system(S),
    compliant(S).

% Article 75(3): Reasoned request for information access
reasoned_request_to_ai_office(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    unable_to_conclude_investigation(A, S),
    made_all_appropriate_efforts(A).

unable_to_conclude_investigation(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    general_purpose_ai_model(M),
    ai_system_based_on_model(S, M),
    cannot_access_information(A, M).

cannot_access_information(A, M) :-
    market_surveillance_authority(A),
    general_purpose_ai_model(M),
    information_related_to_model(M),
    \+ has_access_to(A, M).

has_access_to(A, M) :-
    market_surveillance_authority(A),
    general_purpose_ai_model(M),
    access_granted(A, M).

information_related_to_model(M) :-
    general_purpose_ai_model(M).

made_all_appropriate_efforts(A) :-
    market_surveillance_authority(A),
    attempted_all_means(A).

attempted_all_means(A) :-
    market_surveillance_authority(A),
    exhausted_efforts(A).

% AI Office must supply information within 30 days
must_supply_information_within(A, I) :-
    ai_office(Office),
    market_surveillance_authority(A),
    reasoned_request_to_ai_office(A, S),
    high_risk_ai_system(S),
    information_relevant_to_establish_non_compliance(I),
    within_days(30, supply(Office, A, I)).

ai_office_supplies_information(Office, A) :-
    ai_office(Office),
    market_surveillance_authority(A),
    reasoned_request_to_ai_office(A, _S),
    without_delay(0).

% Confidentiality safeguard
safeguard_confidentiality_of_information(A, I) :-
    market_surveillance_authority(A),
    information_obtained(A, I),
    must_treat_information_confidentially(A, I).

information_obtained(A, I) :-
    market_surveillance_authority(A),
    ai_office(Office),
    reasoned_request_to_ai_office(A, _S),
    supplied_by(Office, A, I).

supplied_by(Office, A, I) :-
    ai_office(Office),
    market_surveillance_authority(A),
    information_relevant_to_establish_non_compliance(I).

% Mutatis mutandis application
procedure_applies_mutatis_mutandis(chp_6_of_regulation_2019_1020, art_75_3) :-
    true.

% Helper: general-purpose AI system usable by deployers
general_purpose_ai_system_usable_by_deployers(S) :-
    general_purpose_ai_system(S),
    usable_by_deployers(S).

usable_by_deployers(S) :-
    general_purpose_ai_system(S),
    direct_use_by_deployers(S).

direct_use_by_deployers(S) :-
    general_purpose_ai_system(S),
    deployer_can_use_directly(S).

deployer_can_use_directly(S) :-
    general_purpose_ai_system(S).

% Helper: high-risk purpose classification
general_purpose_ai_system_high_risk_purpose(S) :-
    general_purpose_ai_system_usable_by_deployers(S),
    high_risk_purpose(P),
    usable_for_purpose(S, P).

usable_for_purpose(S, P) :-
    general_purpose_ai_system(S),
    purpose(P),
    can_be_used_for(S, P).

can_be_used_for(S, P) :-
    general_purpose_ai_system(S),
    high_risk_purpose(P).

purpose(P) :-
    high_risk_purpose(P).

% Provenance
provenance(ai_office_has_market_surveillance_powers/1, 'celex:32024R1689/oj#art_75').
provenance(same_provider_developed_model_and_system/2, 'celex:32024R1689/oj#art_75').
provenance(general_purpose_ai_system_usable_by_deployers/1, 'celex:32024R1689/oj#art_75').
provenance(general_purpose_ai_system_high_risk_purpose/1, 'celex:32024R1689/oj#art_75').
provenance(sufficient_reason_to_consider_non_compliant/2, 'celex:32024R1689/oj#art_75').
provenance(unable_to_conclude_investigation/2, 'celex:32024R1689/oj#art_75').
provenance(made_all_appropriate_efforts/1, 'celex:32024R1689/oj#art_75').
provenance(reasoned_request_to_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(ai_office_supplies_information/2, 'celex:32024R1689/oj#art_75').
provenance(within_days/2, 'celex:32024R1689/oj#art_75').
provenance(information_relevant_to_establish_non_compliance/1, 'celex:32024R1689/oj#art_75').
provenance(safeguard_confidentiality_of_information/2, 'celex:32024R1689/oj#art_75').
provenance(procedure_applies_mutatis_mutandis/2, 'celex:32024R1689/oj#art_75').
provenance(ai_system_based_on_model/2, 'celex:32024R1689/oj#art_75').
provenance(based_on_model/2, 'celex:32024R1689/oj#art_75').
provenance(developed_by/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_other_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(non_compliant_with_requirements/1, 'celex:32024R1689/oj#art_75').
provenance(meets_requirements/1, 'celex:32024R1689/oj#art_75').
provenance(conforms_to_requirements/1, 'celex:32024R1689/oj#art_75').
provenance(compliant/1, 'celex:32024R1689/oj#art_75').
provenance(cannot_access_information/2, 'celex:32024R1689/oj#art_75').
provenance(has_access_to/2, 'celex:32024R1689/oj#art_75').
provenance(access_granted/2, 'celex:32024R1689/oj#art_75').
provenance(information_related_to_model/1, 'celex:32024R1689/oj#art_75').
provenance(attempted_all_means/1, 'celex:32024R1689/oj#art_75').
provenance(exhausted_efforts/1, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information_within/2, 'celex:32024R1689/oj#art_75').
provenance(information_obtained/2, 'celex:32024R1689/oj#art_75').
provenance(supplied_by/3, 'celex:32024R1689/oj#art_75').
provenance(usable_by_deployers/1, 'celex:32024R1689/oj#art_75').
provenance(direct_use_by_deployers/1, 'celex:32024R1689/oj#art_75').
provenance(deployer_can_use_directly/1, 'celex:32024R1689/oj#art_75').
provenance(usable_for_purpose/2, 'celex:32024R1689/oj#art_75').
provenance(can_be_used_for/2, 'celex:32024R1689/oj#art_75').
provenance(purpose/1, 'celex:32024R1689/oj#art_75').

% References
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

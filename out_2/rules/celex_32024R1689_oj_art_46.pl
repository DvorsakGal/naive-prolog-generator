% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dcac39447ac800b3f2b610e065e7c17eab23138d1314767e3da626ab113fa12b
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason/1, gloss('exceptional reason for derogation'), source('celex:32024R1689/oj#art_46').
:- pred urgent_exception/1, gloss('urgent exceptional reason'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_issued/1, gloss('authorisation issued for system'), source('celex:32024R1689/oj#art_46').
:- pred receipt_within_15_days/1, gloss('receipt of information within 15 calendar days'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised/1, gloss('objection raised against authorisation'), source('celex:32024R1689/oj#art_46').
:- pred commission_considers_unjustified/1, gloss('commission considers authorisation unjustified'), source('celex:32024R1689/oj#art_46').
:- pred complies_with_requirements/1, gloss('system complies with Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_46').
:- pred covered_by_union_harmonisation_legislation/1, gloss('system related to product covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_46').

permitted_authorisation_high_risk_ai_system(S) :-
    market_surveillance_authority(_A),
    high_risk_ai_system(S),
    exceptional_reason(_R).

permitted_put_into_service_without_authorisation(S) :-
    law_enforcement_authority(_L),
    high_risk_ai_system(S),
    urgent_exception(_U).

must_issue_authorisation(_A, S) :-
    market_surveillance_authority(_A),
    high_risk_ai_system(S),
    complies_with_requirements(S).

must_inform(_A, information(commission_and_member_states, authorisation(S))) :-
    market_surveillance_authority(_A),
    high_risk_ai_system(S),
    \+ sensitive_operational_data(_).

justified_authorisation(S) :-
    authorisation_issued(S),
    receipt_within_15_days(S),
    \+ objection_raised(S).

must_withdraw_authorisation(_A, S) :-
    market_surveillance_authority(_A),
    commission_considers_unjustified(S),
    high_risk_ai_system(S).

exempt_other_derogations(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).

provenance(permitted_authorisation_high_risk_ai_system/1, 'celex:32024R1689/oj#art_46').
provenance(permitted_put_into_service_without_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_issue_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46').
provenance(justified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(exempt_other_derogations/1, 'celex:32024R1689/oj#art_46').

references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

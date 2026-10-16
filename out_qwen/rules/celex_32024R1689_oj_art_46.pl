% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 923de1df30239a1c6dec2f20c22b4eed49ec7f86c645bcdc7546fd1db2c80919
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred derogation_authorisation/1, gloss('authorisation to place on market or put into service without full conformity assessment'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason_applies/1, gloss('public security, life/health protection, environmental protection or key asset protection'), source('celex:32024R1689/oj#art_46').
:- pred urgency_situation_applies/1, gloss('duly justified situation of urgency for public security or imminent threat to life/safety'), source('celex:32024R1689/oj#art_46').
:- pred must_request_derogation_authorisation/2, gloss('authority must request authorisation during or after urgent use'), source('celex:32024R1689/oj#art_46').
:- pred must_stop_use/2, gloss('authority must stop use if authorisation refused'), source('celex:32024R1689/oj#art_46').
:- pred must_discard_results/2, gloss('authority must discard results if authorisation refused'), source('celex:32024R1689/oj#art_46').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority must inform Commission and Member States of authorisation'), source('celex:32024R1689/oj#art_46').
:- pred deemed_justified_authorisation/1, gloss('authorisation deemed justified if no objection within 15 days'), source('celex:32024R1689/oj#art_46').
:- pred must_withdraw_authorisation/2, gloss('market surveillance authority must withdraw unjustified authorisation'), source('celex:32024R1689/oj#art_46').

derogation_authorisation(A) :-
    market_surveillance_authority(_MSA),
    exceptional_reason_applies(A).

exceptional_reason_applies(public_security).
exceptional_reason_applies(protection_of_life_and_health).
exceptional_reason_applies(environmental_protection).
exceptional_reason_applies(protection_of_key_industrial_and_infrastructural_assets).

urgency_situation_applies(S) :-
    exceptional_reason_applies(public_security),
    duly_justified_urgency(S).

urgency_situation_applies(S) :-
    substantial_imminent_threat_to_life_or_safety(S).

must_request_derogation_authorisation(Authority, S) :-
    law_enforcement_authority(Authority),
    urgency_situation_applies(S),
    putting_into_service(Authority, S).

must_request_derogation_authorisation(Authority, S) :-
    civil_protection_authority(Authority),
    urgency_situation_applies(S),
    putting_into_service(Authority, S).

must_stop_use(Authority, S) :-
    putting_into_service(Authority, S),
    derogation_authorisation_refused(S).

must_discard_results(Authority, S) :-
    putting_into_service(Authority, S),
    derogation_authorisation_refused(S).

must_inform_commission_and_member_states(MSA, A) :-
    market_surveillance_authority(MSA),
    derogation_authorisation(A),
    \+ sensitive_law_enforcement_data(A).

deemed_justified_authorisation(A) :-
    derogation_authorisation(A),
    \+ objection_raised_within_days(15, A).

must_withdraw_authorisation(MSA, A) :-
    market_surveillance_authority(MSA),
    derogation_authorisation(A),
    commission_considers_unjustified(A).

provenance(derogation_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason_applies/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation_applies/1, 'celex:32024R1689/oj#art_46').
provenance(must_request_derogation_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_46').
provenance(must_discard_results/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').

references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

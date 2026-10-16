% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : e37a6980b2c3c7db3552b02345bf7f3b37c96c85ebf03ee2a2adc41e3a2817f0
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_46').
:- pred civil_protection_authority/1, gloss('civil protection authority'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_derogation_reason/1, gloss('exceptional reason justifying derogation from conformity assessment'), source('celex:32024R1689/oj#art_46').
:- pred urgency_reason/1, gloss('exceptional urgency reason for putting high-risk AI system into service'), source('celex:32024R1689/oj#art_46').
:- pred requested_authorisation_without_undue_delay/2, gloss('entity requested derogation authorisation during or after use without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred permitted_authorisation/2, gloss('market surveillance authority may authorise derogation for placing on market or putting into service'), source('celex:32024R1689/oj#art_46').
:- pred permitted_put_into_service_urgency/2, gloss('authority may put high-risk AI system into service without prior authorisation in urgency'), source('celex:32024R1689/oj#art_46').
:- pred must_stop_use_and_discard_outputs/2, gloss('authority must stop use immediately and discard all outputs if derogation refused'), source('celex:32024R1689/oj#art_46').
:- pred must_inform/2, gloss('market surveillance authority must inform recipient of authorisation'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised/2, gloss('Member State or Commission raised objection to authorisation within 15 calendar days'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised_or_considered_unfounded/2, gloss('objection raised or Commission considers authorisation contrary to law or conclusion unfounded'), source('celex:32024R1689/oj#art_46').
:- pred must_consult/2, gloss('Commission must enter into consultations with relevant Member State and operators'), source('celex:32024R1689/oj#art_46').
:- pred must_withdraw_authorisation/2, gloss('market surveillance authority must withdraw authorisation if considered unjustified'), source('celex:32024R1689/oj#art_46').
:- pred commission_considers_unjustified/2, gloss('Commission considers derogation authorisation unjustified'), source('celex:32024R1689/oj#art_46').
:- pred annex_1_section_a_system/1, gloss('high-risk AI system related to products covered by Union harmonisation legislation in Annex I Section A'), source('celex:32024R1689/oj#art_46').
:- pred exempt_from_article_46_derogation/1, gloss('AI system exempt from Article 46 derogation mechanism'), source('celex:32024R1689/oj#art_46').

% Paragraph 1: Authorisation of derogation by market surveillance authority
permitted_authorisation(MSA, derogation(System, MemberState)) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(System),
    \+ exempt_from_article_46_derogation(System),
    complies_with_chapter_3_section_2(System),
    exceptional_derogation_reason(derogation(System, MemberState)).

% Paragraph 2: Urgency use by law-enforcement or civil protection authorities
permitted_put_into_service_urgency(Authority, System) :-
    high_risk_ai_system(System),
    ( law_enforcement_authority(Authority) ; civil_protection_authority(Authority) ),
    urgency_reason(System),
    requested_authorisation_without_undue_delay(Authority, System).

must_stop_use_and_discard_outputs(Authority, System) :-
    high_risk_ai_system(System),
    ( law_enforcement_authority(Authority) ; civil_protection_authority(Authority) ),
    \+ permitted_authorisation(_MSA, derogation(System, _MemberState)).

% Paragraph 3: Information requirement (excluding sensitive operational data)
must_inform(MSA, commission(authorisation(System))) :-
    market_surveillance_authority(MSA),
    permitted_authorisation(MSA, derogation(System, _MemberState)).

must_inform(MSA, member_states(authorisation(System))) :-
    market_surveillance_authority(MSA),
    permitted_authorisation(MSA, derogation(System, _MemberState)).

% Paragraph 4: Deemed justified if no objection within 15 calendar days
deemed_justified(authorisation(System, MemberState)) :-
    market_surveillance_authority(MSA),
    permitted_authorisation(MSA, derogation(System, MemberState)),
    \+ objection_raised(within(days(15)), authorisation(System, MemberState)).

% Paragraph 5: Consultation and Commission decision if objections raised
must_consult(Commission, consultation(MemberState, operators(System))) :-
    commission(Commission),
    objection_raised_or_considered_unfounded(within(days(15)), authorisation(System, MemberState)).

must_decide(Commission, justification(authorisation(System, MemberState))) :-
    commission(Commission),
    objection_raised_or_considered_unfounded(within(days(15)), authorisation(System, MemberState)).

% Paragraph 6: Withdrawal if considered unjustified
must_withdraw_authorisation(MSA, authorisation(System, MemberState)) :-
    market_surveillance_authority(MSA),
    commission(Commission),
    commission_considers_unjustified(Commission, authorisation(System, MemberState)).

% Paragraph 7: Annex I Section A products follow sector-specific derogations
exempt_from_article_46_derogation(System) :-
    annex_1_section_a_system(System).

% Provenance
provenance(permitted_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_put_into_service_urgency/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard_outputs/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(must_consult/2, 'celex:32024R1689/oj#art_46').
provenance(must_decide/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(exempt_from_article_46_derogation/1, 'celex:32024R1689/oj#art_46').

% References
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

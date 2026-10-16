% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 44630eb92e2b8a5040b484b132c9ab6284641255592ac01bf03ce952955023f8
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason/1, gloss('exceptional ground justifying derogation'), source('celex:32024R1689/oj#art_46').
:- pred civil_protection_authority/1, gloss('civil protection authority'), source('celex:32024R1689/oj#art_46').
:- pred urgency_applies/1, gloss('situation of urgency applies'), source('celex:32024R1689/oj#art_46').
:- pred permitted_derogation_putting_into_service/2, gloss('putting into service under urgency derogation without prior authorisation'), source('celex:32024R1689/oj#art_46').
:- pred permitted_derogation_authorisation/2, gloss('market surveillance authority may authorise derogation for system'), source('celex:32024R1689/oj#art_46').
:- pred must_inform/2, gloss('actor must provide information to recipient or about an action'), source('celex:32024R1689/oj#art_46').
:- pred must_withdraw/2, gloss('market surveillance authority must withdraw authorisation'), source('celex:32024R1689/oj#art_46').
:- pred must_stop/2, gloss('deployer or authority must stop use of AI system'), source('celex:32024R1689/oj#art_46').
:- pred must_discard/2, gloss('deployer or authority must discard outputs of AI system'), source('celex:32024R1689/oj#art_46').
:- pred complies_with_chapter_3_section_2/1, gloss('system complies with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_46').
:- pred covered_by_annex_1_legislation/1, gloss('system related to products covered by Annex I Section A legislation'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised/2, gloss('objection raised against derogation authorisation'), source('celex:32024R1689/oj#art_46').
:- pred deemed_justified_derogation/1, gloss('derogation authorisation deemed justified after objection deadline'), source('celex:32024R1689/oj#art_46').
:- pred commission_considers_unjustified/1, gloss('Commission determines authorisation is unjustified'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_refused/2, gloss('authorisation request for derogation was refused'), source('celex:32024R1689/oj#art_46').
:- pred requested_derogation_authorisation/2, gloss('authority requested derogation authorisation without undue delay'), source('celex:32024R1689/oj#art_46').

% Paragraph 1: Derogation authorisation by Market Surveillance Authority
permitted_derogation_authorisation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    \+ covered_by_annex_1_legislation(System),
    complies_with_chapter_3_section_2(System),
    exceptional_reason(System).

% Paragraph 2: Putting into service under urgency without prior authorisation
permitted_derogation_putting_into_service(Authority, System) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(System),
    \+ covered_by_annex_1_legislation(System),
    urgency_applies(System),
    requested_derogation_authorisation(Authority, System).

permitted_derogation_putting_into_service(Authority, System) :-
    civil_protection_authority(Authority),
    high_risk_ai_system(System),
    \+ covered_by_annex_1_legislation(System),
    urgency_applies(System),
    requested_derogation_authorisation(Authority, System).

% Paragraph 2: If authorisation refused, stop use and discard results
must_stop(Authority, System) :-
    authorisation_refused(Authority, System).

must_discard(Authority, outputs_of(System)) :-
    authorisation_refused(Authority, System).

% Paragraph 3: Inform Commission and other Member States
must_inform(Authority, derogation_authorisation(System)) :-
    market_surveillance_authority(Authority),
    permitted_derogation_authorisation(Authority, System).

% Paragraph 4: Authorisation deemed justified if no objection within 15 days
deemed_justified_derogation(System) :-
    permitted_derogation_authorisation(_Authority, System),
    \+ objection_raised(within(days(15)), derogation_authorisation(System)).

% Paragraph 6: Withdrawal if Commission considers authorisation unjustified
must_withdraw(Authority, derogation_authorisation(System)) :-
    market_surveillance_authority(Authority),
    commission_considers_unjustified(derogation_authorisation(System)).

% Provenance
provenance(permitted_derogation_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_derogation_putting_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop/2, 'celex:32024R1689/oj#art_46').
provenance(must_discard/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified_derogation/1, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_46').

% References
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

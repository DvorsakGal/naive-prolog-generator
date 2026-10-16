% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6306045a8687ff7e32e690b9de9b5825f157c15c386498c8441dfbb113c5e3c5
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred fundamental_rights_authority/1, gloss('national public authority or body supervising or enforcing fundamental rights obligations'), source('celex:32024R1689/oj#art_77').
:- pred high_risk_ai_system/1, gloss('high-risk AI system as referred to in Annex III or related provisions'), source('celex:32024R1689/oj#art_77').
:- pred documentation_under_regulation/1, gloss('documentation created or maintained under the AI Act'), source('celex:32024R1689/oj#art_77').
:- pred necessary_for_mandate/2, gloss('access to documentation is necessary for an authority to fulfill its mandate'), source('celex:32024R1689/oj#art_77').
:- pred within_jurisdiction/2, gloss('matter or documentation is within the limits of jurisdiction of the authority'), source('celex:32024R1689/oj#art_77').
:- pred permitted_access/2, gloss('authority is empowered to request and access documentation'), source('celex:32024R1689/oj#art_77').
:- pred must_inform/2, gloss('party has a duty to inform another party of an event or action'), source('celex:32024R1689/oj#art_77').
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_77').
:- pred must_identify/2, gloss('Member State must identify fundamental rights authorities by deadline'), source('celex:32024R1689/oj#art_77').
:- pred must_publish/2, gloss('Member State must make publicly available a list'), source('celex:32024R1689/oj#art_77').
:- pred must_notify/2, gloss('Member State must notify list to Commission and other Member States'), source('celex:32024R1689/oj#art_77').
:- pred must_maintain/2, gloss('Member State must keep list up to date'), source('celex:32024R1689/oj#art_77').
:- pred documentation_insufficient/2, gloss('documentation is insufficient to ascertain whether an infringement occurred'), source('celex:32024R1689/oj#art_77').
:- pred permitted_request_testing/2, gloss('authority may request market surveillance authority to organise testing'), source('celex:32024R1689/oj#art_77').
:- pred must_organise_testing/2, gloss('market surveillance authority must organise testing with involvement of authority'), source('celex:32024R1689/oj#art_77').
:- pred confidential_treatment_applies/1, gloss('information or documentation obtained under Article 77 must be treated confidentially'), source('celex:32024R1689/oj#art_77').

% Paragraph 1: Power to request and access documentation
permitted_access(Auth, Doc) :-
    fundamental_rights_authority(Auth),
    documentation_under_regulation(Doc),
    necessary_for_mandate(Auth, Doc),
    within_jurisdiction(Auth, Doc).

must_inform(Auth, request(Doc, MarketSurveillanceAuthority)) :-
    fundamental_rights_authority(Auth),
    documentation_under_regulation(Doc),
    market_surveillance_authority(MarketSurveillanceAuthority),
    permitted_access(Auth, Doc).

% Paragraph 2: Member State obligations regarding the list of authorities
must_identify(MS, list(fundamental_rights_authorities, deadline(date(2024, 11, 2)))) :-
    member_state(MS).

must_publish(MS, list(fundamental_rights_authorities)) :-
    member_state(MS).

must_notify(MS, list(fundamental_rights_authorities, recipients(commission, member_states))) :-
    member_state(MS).

must_maintain(MS, list(fundamental_rights_authorities, up_to_date)) :-
    member_state(MS).

% Paragraph 3: Requesting and organising testing
permitted_request_testing(Auth, testing(System, market_surveillance_authority(MSA))) :-
    fundamental_rights_authority(Auth),
    market_surveillance_authority(MSA),
    high_risk_ai_system(System),
    documentation_under_regulation(Doc),
    documentation_insufficient(Doc, System).

must_organise_testing(MSA, testing(System, involvement(Auth), within(reasonable_time))) :-
    market_surveillance_authority(MSA),
    fundamental_rights_authority(Auth),
    high_risk_ai_system(System),
    permitted_request_testing(Auth, testing(System, market_surveillance_authority(MSA))).

% Paragraph 4: Confidentiality treatment
confidential_treatment_applies(obtained(Auth, InfoOrDoc)) :-
    fundamental_rights_authority(Auth),
    (   documentation_under_regulation(InfoOrDoc)
    ;   permitted_access(Auth, InfoOrDoc)
    ).

% Provenance
provenance(permitted_access/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify/2, 'celex:32024R1689/oj#art_77').
provenance(must_publish/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify/2, 'celex:32024R1689/oj#art_77').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_77').
provenance(permitted_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(confidential_treatment_applies/1, 'celex:32024R1689/oj#art_77').

% References
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

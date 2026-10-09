% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : ba3c980d3082f43cb888965cf52451818d14ae9e290b129f5256d2a61a238164
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred national_public_authority/1, gloss('national public authority or body supervising or enforcing fundamental rights'), source('celex:32024R1689/oj#art_77').
:- pred supervises_fundamental_rights/1, gloss('authority supervises or enforces respect of obligations under Union law protecting fundamental rights'), source('celex:32024R1689/oj#art_77').
:- pred related_to_high_risk_ai_system/1, gloss('authority is related to the use of high‑risk AI systems referred to in annex 3'), source('celex:32024R1689/oj#art_77').
:- pred documentation_insufficient/1, gloss('documentation is insufficient to ascertain whether an infringement has occurred'), source('celex:32024R1689/oj#art_77').
:- pred other_member_state/1, gloss('any other Member State'), source('celex:32024R1689/oj#art_77').

:- pred permitted_request_and_access_documentation/1, gloss('authority may request and access documentation in accessible language and format when necessary for its mandate'), source('celex:32024R1689/oj#art_77').
:- pred must_inform/2, gloss('authority must inform the market surveillance authority of the Member State concerned of any request'), source('celex:32024R1689/oj#art_77').
:- pred must_identify_public_authorities/2, gloss('Member State must identify the public authorities referred to in paragraph 1 by a given deadline'), source('celex:32024R1689/oj#art_77').
:- pred must_notify/2, gloss('Member State must notify the list to the Commission and to other Member States'), source('celex:32024R1689/oj#art_77').
:- pred permitted_reasoned_request_testing/1, gloss('authority may make a reasoned request to organise testing of the high‑risk AI system'), source('celex:32024R1689/oj#art_77').
:- pred must_organise_testing/2, gloss('market surveillance authority shall organise testing with close involvement of the requesting authority within a reasonable time'), source('celex:32024R1689/oj#art_77').
:- pred must_treat_confidentially/2, gloss('authority must treat obtained information in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_77').

permitted_request_and_access_documentation(Authority) :-
    national_public_authority(Authority),
    supervises_fundamental_rights(Authority),
    related_to_high_risk_ai_system(Authority).

must_inform(Authority, market_surveillance_authority_of(MemberState)) :-
    national_public_authority(Authority),
    member_state(MemberState).

must_identify_public_authorities(MemberState, by(date(2024,11,2))) :-
    member_state(MemberState).

must_make_publicly_available(MemberState, list_of_authorities(MemberState)) :-
    member_state(MemberState).

must_notify(MemberState, commission) :-
    member_state(MemberState).

must_notify(MemberState, other_member_state) :-
    member_state(MemberState).

permitted_reasoned_request_testing(Authority) :-
    national_public_authority(Authority),
    documentation_insufficient(Authority).

must_organise_testing(MarketSurveillanceAuthority, testing_request(Authority, within(reasonable_time))) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    national_public_authority(Authority).

must_treat_confidentially(Authority, confidentiality_obligations(art_78)) :-
    national_public_authority(Authority).

provenance(permitted_request_and_access_documentation/1, 'celex:32024R1689/oj#art_77').
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_public_authorities/2, 'celex:32024R1689/oj#art_77').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify/2, 'celex:32024R1689/oj#art_77').
provenance(permitted_reasoned_request_testing/1, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77').

references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

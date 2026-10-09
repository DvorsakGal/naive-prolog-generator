% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7ddd9846f84ad3abdafa718de7e871369ef125f2aec3d5ef934250cdcffbf83e
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred public_authority_or_body/1, gloss('national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights'), source('celex:32024R1689/oj#art_77').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_77').

% Permission to request and access documentation
request_and_access(Authority, Documentation) :-
    public_authority_or_body(Authority).

provenance(request_and_access/2, 'celex:32024R1689/oj#art_77').

% Obligation to inform the market surveillance authority of any request
must_inform(Authority, MSA) :-
    public_authority_or_body(Authority),
    market_surveillance_authority(MSA).

provenance(must_inform/2, 'celex:32024R1689/oj#art_77').

% Obligations of Member States (identification, publication, notification, upkeep)
must_identify_public_authorities(MemberState, identification(deadline(date(2024,11,2)))) :-
    member_state(MemberState).

provenance(must_identify_public_authorities/2, 'celex:32024R1689/oj#art_77').

must_make_list_publicly_available(MemberState, list_publication) :-
    member_state(MemberState).

provenance(must_make_list_publicly_available/2, 'celex:32024R1689/oj#art_77').

must_notify_list(MemberState, commission) :-
    member_state(MemberState).

provenance(must_notify_list/2, 'celex:32024R1689/oj#art_77').

must_notify_list(MemberState, other_member_states) :-
    member_state(MemberState).

provenance(must_notify_list/2, 'celex:32024R1689/oj#art_77').

must_keep_list_up_to_date(MemberState, list) :-
    member_state(MemberState).

provenance(must_keep_list_up_to_date/2, 'celex:32024R1689/oj#art_77').

% Permission for public authority to request testing when documentation insufficient
reasoned_request_testing(Authority, MSA) :-
    public_authority_or_body(Authority),
    market_surveillance_authority(MSA).

provenance(reasoned_request_testing/2, 'celex:32024R1689/oj#art_77').

% Obligation of market surveillance authority to organise testing
must_organise_testing(MSA, testing(high_risk_ai_system, involvement(Authority), within_reasonable_time)) :-
    market_surveillance_authority(MSA),
    public_authority_or_body(Authority).

provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').

% Obligation to treat obtained information confidentially
must_treat_confidentially(Authority, Information) :-
    public_authority_or_body(Authority).

provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77').

% References
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

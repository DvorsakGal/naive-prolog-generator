% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2b5a997a27412dbe371f30f527a1557e8468392d488c1ffeac34b8db14356526
% cached     : False
% title      : EU declaration of conformity
:- pred eu_declaration_of_conformity/1, gloss('written machine readable physical or electronically signed declaration drawn up by provider for a high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this regulation'), source('celex:32024R1689/oj#art_47').
:- pred keep_at_disposal/2, gloss('entity keeps document at disposal of authority for a period'), source('celex:32024R1689/oj#art_47').
:- pred submit_copy_upon_request/2, gloss('entity submits copy of document to authority upon request'), source('celex:32024R1689/oj#art_47').
:- pred declaration_identifies/2, gloss('declaration identifies the AI system it was drawn up for'), source('celex:32024R1689/oj#art_47').
:- pred declaration_states_compliance/2, gloss('declaration states that AI system meets requirements of Section 2'), source('celex:32024R1689/oj#art_47').
:- pred declaration_contains_information/2, gloss('declaration contains information set out in Annex V'), source('celex:32024R1689/oj#art_47').
:- pred declaration_translated/2, gloss('declaration translated into language easily understood by national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred single_declaration_for_multiple_legislation/1, gloss('single EU declaration of conformity drawn up for all applicable Union harmonisation legislation'), source('celex:32024R1689/oj#art_47').
:- pred declaration_identifies_legislation/2, gloss('declaration contains information to identify Union harmonisation legislation it relates to'), source('celex:32024R1689/oj#art_47').
:- pred provider_assumes_responsibility/2, gloss('provider assumes responsibility for compliance by drawing up declaration'), source('celex:32024R1689/oj#art_47').
:- pred keep_declaration_up_to_date/2, gloss('provider keeps EU declaration of conformity up-to-date'), source('celex:32024R1689/oj#art_47').
:- pred commission_empowered_to_amend_annex_v/0, gloss('Commission empowered to adopt delegated acts to amend Annex V'), source('celex:32024R1689/oj#art_47').

must_draw_up_eu_declaration_of_conformity(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).

must_keep_declaration_at_disposal(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    declaration_identifies(D, S),
    keep_at_disposal(Provider, D),
    national_competent_authority(A),
    period(years(10), after(placing_on_market_or_putting_into_service(S))).

must_submit_copy_upon_request(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    declaration_identifies(D, S),
    national_competent_authority(A),
    submit_copy_upon_request(Provider, copy(D, A)).

declaration_identifies(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).

declaration_states_compliance(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).

declaration_contains_information(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).

declaration_translated(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S),
    national_competent_authority(A),
    member_state_of(A),
    placing_on_market_in(S, member_state_of(A)).

single_declaration_for_multiple_legislation(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_harmonisation_legislation(S).

declaration_identifies_legislation(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S),
    single_declaration_for_multiple_legislation(S).

must_assume_responsibility_for_compliance(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    declaration_identifies(D, S),
    declaration_states_compliance(D, S).

must_keep_declaration_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    declaration_identifies(D, S).

commission_empowered_to_amend_annex_v.

placing_on_market_or_putting_into_service(S) :-
    placing_on_market(S).
placing_on_market_or_putting_into_service(S) :-
    putting_into_service(S).

subject_to_other_union_harmonisation_legislation(S) :-
    high_risk_ai_system(S).

member_state_of(A) :-
    national_competent_authority(A).

placing_on_market_in(S, M) :-
    high_risk_ai_system(S),
    member_state_of(M).

provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_47').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_47').
provenance(keep_at_disposal/2, 'celex:32024R1689/oj#art_47').
provenance(submit_copy_upon_request/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_identifies/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_states_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_information/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_translated/2, 'celex:32024R1689/oj#art_47').
provenance(single_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_identifies_legislation/2, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_at_disposal/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_copy_upon_request/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
provenance(commission_empowered_to_amend_annex_v/0, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e2a9ea05fb063872b11ccafb80ac98c0bc501e6be2008ac8c074d687f28c1880
% cached     : False
% title      : Operational obligations of notified bodies
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_34').
:- pred micro_or_small_enterprise/1, gloss('micro- or small enterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_34').
:- pred relevant_documentation/1, gloss('documentation relevant to conformity assessment'), source('celex:32024R1689/oj#art_34').
:- pred providers_documentation/1, gloss('documentation provided by the provider of the AI system'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(notified_body(B), high_risk_ai_system(S)) :-
    conformity_assessment_procedure(S, art_43).

must_avoid_unnecessary_burdens(notified_body(B), provider(P)) :-
    high_risk_ai_system(S),
    provider_of(P, S),
    take_due_account(B, size(P)),
    take_due_account(B, sector(P)),
    take_due_account(B, structure(P)),
    take_due_account(B, complexity(S)),
    minimise_administrative_burdens(B, P),
    minimise_compliance_costs(B, P),
    micro_or_small_enterprise(P).

must_respect_rigour_and_protection(notified_body(B), high_risk_ai_system(S)) :-
    degree_of_rigour_required(S, R),
    level_of_protection_required(S, L),
    respect(notified_body(B), rigour(R)),
    respect(notified_body(B), protection(L)).

must_make_available(notified_body(B), relevant_documentation(D)) :-
    providers_documentation(D).

must_submit_upon_request(notified_body(B), relevant_documentation(D), notifying_authority(A)) :-
    providers_documentation(D),
    request(A, D).

must_facilitate_assessment(notifying_authority(A), chapter_3_section_4) :-
    conduct_assessment(A),
    conduct_designation(A),
    conduct_notification(A),
    conduct_monitoring(A).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit_upon_request/3, 'celex:32024R1689/oj#art_34').
provenance(must_facilitate_assessment/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

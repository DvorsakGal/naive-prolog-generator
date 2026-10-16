% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c6db0fc3cba19a8a506d44e5fdd9c86d96fd225245cdcc11c01dfd3f3a535419
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred established_in_third_country/1, gloss('provider established outside the Union'), source('celex:32024R1689/oj#art_22').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Chapter III'), source('celex:32024R1689/oj#art_22').
:- pred written_mandate/1, gloss('written mandate appointing an authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred must_appoint_authorised_representative/2, gloss('provider must appoint an authorised representative by written mandate'), source('celex:32024R1689/oj#art_22').
:- pred must_enable_authorised_representative/2, gloss('provider must enable authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_22').
:- pred must_perform_mandated_tasks/2, gloss('authorised representative must perform tasks specified in mandate'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide copy of mandate to authority upon request'), source('celex:32024R1689/oj#art_22').
:- pred must_verify_conformity_documentation/2, gloss('authorised representative must verify EU declaration and technical documentation'), source('celex:32024R1689/oj#art_22').
:- pred must_keep_documentation/2, gloss('authorised representative must keep documentation at disposal of authorities for specified period'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_information_on_request/2, gloss('authorised representative must provide information to demonstrate conformity upon reasoned request'), source('celex:32024R1689/oj#art_22').
:- pred must_cooperate_with_authorities/2, gloss('authorised representative must cooperate with competent authorities on risk mitigation'), source('celex:32024R1689/oj#art_22').
:- pred must_comply_with_registration/2, gloss('authorised representative must comply with registration obligations or ensure correctness'), source('celex:32024R1689/oj#art_22').
:- pred must_be_addressable_by_authorities/2, gloss('mandate must empower authorised representative to be addressed by authorities'), source('celex:32024R1689/oj#art_22').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_22').
:- pred must_inform_about_termination/2, gloss('authorised representative must inform authority and notified body about mandate termination'), source('celex:32024R1689/oj#art_22').

established_in_third_country(P) :-
    provider(P),
    \+ established_in_union(P).

% Note: established_in_union/1 is assumed defined elsewhere; if not available,
% this clause serves as a placeholder for the third-country condition.

must_appoint_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    established_in_third_country(P),
    before_making_available_on_market(S).

must_enable_authorised_representative(P, R) :-
    provider(P),
    authorised_representative(R),
    written_mandate(M),
    mandates(P, M, R).

must_perform_mandated_tasks(R, M) :-
    authorised_representative(R),
    written_mandate(M),
    mandates(_P, M, R).

must_provide_mandate_copy(R, A) :-
    authorised_representative(R),
    market_surveillance_authority(A),
    requested(A, copy_of_mandate(R)).

must_verify_conformity_documentation(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    technical_documentation(T),
    drawn_up_by_provider(S, D),
    drawn_up_by_provider(S, T),
    conformity_assessment_carried_out(S).

must_keep_documentation(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    period(years(10), after(placing_on_market_or_putting_into_service(S))).

must_provide_information_on_request(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    competent_authority(A),
    reasoned_request(A, conformity_demonstration(S)).

must_cooperate_with_authorities(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    competent_authority(A),
    reasoned_request(A, risk_mitigation_action(S)).

must_comply_with_registration(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    registration_obligation_applies(S).

must_be_addressable_by_authorities(R, M) :-
    authorised_representative(R),
    written_mandate(M),
    mandates(_P, M, R).

must_terminate_mandate(R, P) :-
    authorised_representative(R),
    provider(P),
    acts_contrary_to_obligations(P).

must_inform_about_termination(R, termination(M, Reason)) :-
    authorised_representative(R),
    written_mandate(M),
    terminated(R, M, Reason),
    relevant_market_surveillance_authority(A),
    relevant_notified_body(B).

provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandated_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_22').
provenance(must_be_addressable_by_authorities/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_about_termination/2, 'celex:32024R1689/oj#art_22').
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_22').

references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').

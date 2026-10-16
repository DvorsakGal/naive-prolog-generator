% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 27d97794d04814a18270e473a1aee4e9a14d84a5df218a1f46dac8993e1838d1
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred must_appoint_authorised_representative/1, gloss('provider established in third country must appoint authorised representative before making high-risk AI system available on Union market'), source('celex:32024R1689/oj#art_22').
:- pred must_enable_authorised_representative/2, gloss('provider must enable authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_22').
:- pred must_perform_mandate_tasks/1, gloss('authorised representative must perform tasks specified in mandate'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide copy of mandate to market surveillance authority upon request'), source('celex:32024R1689/oj#art_22').
:- pred must_verify_conformity_documentation/1, gloss('authorised representative must verify EU declaration of conformity and technical documentation drawn up and conformity assessment carried out'), source('celex:32024R1689/oj#art_22').
:- pred must_keep_records_available/1, gloss('authorised representative must keep records available for 10 years after placement or putting into service'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_information_upon_request/2, gloss('authorised representative must provide information and documentation upon reasoned request'), source('celex:32024R1689/oj#art_22').
:- pred must_cooperate_with_competent_authorities/2, gloss('authorised representative must cooperate with competent authorities upon reasoned request'), source('celex:32024R1689/oj#art_22').
:- pred must_comply_with_registration_obligations/1, gloss('authorised representative must comply with registration obligations or ensure information correctness'), source('celex:32024R1689/oj#art_22').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_22').
:- pred must_inform_authorities_of_termination/3, gloss('authorised representative must inform market surveillance authority and notified body of termination and reasons'), source('celex:32024R1689/oj#art_22').
:- pred established_in_third_country/1, gloss('provider not established in the Union'), source('celex:32024R1689/oj#art_22').
:- pred mandate/2, gloss('written mandate from provider to authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred tasks_specified_in_mandate/2, gloss('tasks specified in the mandate received from provider'), source('celex:32024R1689/oj#art_22').
:- pred official_language_of_union_institutions/1, gloss('one of the official languages of the institutions of the Union'), source('celex:32024R1689/oj#art_22').
:- pred competent_authority_indicated_language/2, gloss('competent authority indicated the official language'), source('celex:32024R1689/oj#art_22').
:- pred placed_on_market_or_put_into_service/1, gloss('high-risk AI system has been placed on market or put into service'), source('celex:32024R1689/oj#art_22').
:- pred reasoned_request_made/2, gloss('competent authority made a reasoned request'), source('celex:32024R1689/oj#art_22').
:- pred logs_under_control_of_provider/2, gloss('logs are under the control of the provider'), source('celex:32024R1689/oj#art_22').
:- pred provider_acts_contrary_to_obligations/1, gloss('provider is acting contrary to its obligations under the regulation'), source('celex:32024R1689/oj#art_22').
:- pred relevant_notified_body/2, gloss('notified body relevant to the high-risk AI system'), source('celex:32024R1689/oj#art_22').

must_appoint_authorised_representative(P) :-
    provider(P),
    established_in_third_country(P),
    high_risk_ai_system(S),
    making_available_on_market(S),
    \+ authorised_representative(_R),
    mandate(P, _R).

must_enable_authorised_representative(P, R) :-
    provider(P),
    authorised_representative(R),
    mandate(P, R),
    tasks_specified_in_mandate(R, _Tasks).

must_perform_mandate_tasks(R) :-
    authorised_representative(R),
    mandate(_P, R),
    tasks_specified_in_mandate(R, _Tasks).

must_provide_mandate_copy(R, Authority) :-
    authorised_representative(R),
    market_surveillance_authority(Authority),
    mandate(_P, R),
    official_language_of_union_institutions(Lang),
    competent_authority_indicated_language(Authority, Lang).

must_verify_conformity_documentation(R) :-
    authorised_representative(R),
    mandate(_P, R),
    eu_declaration_of_conformity(_S),
    drawn_up(_S),
    technical_documentation(_S),
    drawn_up(_S),
    conformity_assessment_procedure(_S).

must_keep_records_available(R) :-
    authorised_representative(R),
    mandate(P, R),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    retention_period(years(10), after(placed_on_market_or_put_into_service(S))),
    contact_details(P, _Details),
    eu_declaration_of_conformity(S),
    technical_documentation(S),
    issued_certificate(_Body, S).

must_keep_records_available(R) :-
    authorised_representative(R),
    mandate(P, R),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    retention_period(years(10), after(placed_on_market_or_put_into_service(S))),
    contact_details(P, _Details),
    eu_declaration_of_conformity(S),
    technical_documentation(S),
    \+ issued_certificate(_Body, S).

must_provide_information_upon_request(R, Authority) :-
    authorised_representative(R),
    competent_authority(Authority),
    reasoned_request(Authority, R),
    high_risk_ai_system(S),
    mandate(P, R),
    information_and_documentation(S, _Info),
    logs_under_control(P, S),
    access_to_logs(S, _Logs).

must_cooperate_with_competent_authorities(R, Authority) :-
    authorised_representative(R),
    competent_authority(Authority),
    reasoned_request(Authority, R),
    high_risk_ai_system(S),
    mandate(_P, R),
    action_taken(Authority, S).

must_comply_with_registration_obligations(R) :-
    authorised_representative(R),
    mandate(P, R),
    high_risk_ai_system(S),
    \+ must_register_information(P, S),
    must_register_information(R, S).

must_comply_with_registration_obligations(R) :-
    authorised_representative(R),
    mandate(P, R),
    high_risk_ai_system(S),
    must_register_information(P, S),
    registered_with_information_specified(S),
    correct_information(S, annex_8_section_1_point_3).

must_terminate_mandate(R, P) :-
    authorised_representative(R),
    mandate(P, R),
    provider(P),
    provider_acts_contrary_to_obligations(P).

must_inform_authorities_of_termination(R, Authority, Body) :-
    must_terminate_mandate(R, _P),
    market_surveillance_authority(Authority),
    relevant_notified_body(_S, Body),
    immediately(R),
    inform(R, Authority, termination(mandate(R, _P), reasons)).

must_inform_authorities_of_termination(R, Authority, _Body) :-
    must_terminate_mandate(R, _P),
    market_surveillance_authority(Authority),
    \+ relevant_notified_body(_S, _Body),
    immediately(R),
    inform(R, Authority, termination(mandate(R, _P), reasons)).

provenance(must_appoint_authorised_representative/1, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandate_tasks/1, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/1, 'celex:32024R1689/oj#art_22').
provenance(must_keep_records_available/1, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information_upon_request/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply_with_registration_obligations/1, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_authorities_of_termination/3, 'celex:32024R1689/oj#art_22').

references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').

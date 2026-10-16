% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 69a293456911b9b54bae8157f21b8c864141858d21859d5371656e9335c96e8b
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred must_appoint_authorised_representative/2, gloss('provider established in third country must appoint authorised representative in Union before placing model on market'), source('celex:32024R1689/oj#art_54').
:- pred must_enable_authorised_representative/2, gloss('provider must enable authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_mandated_tasks/2, gloss('authorised representative must perform tasks specified in mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide copy of mandate to AI Office upon request'), source('celex:32024R1689/oj#art_54').
:- pred must_verify_provider_compliance/2, gloss('authorised representative must verify technical documentation and obligations fulfilled by provider'), source('celex:32024R1689/oj#art_54').
:- pred must_keep_technical_documentation_for_model/2, gloss('authorised representative must keep technical documentation at disposal of authorities for ten years after placing on market'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_compliance_information_for_model/2, gloss('authorised representative must provide information to demonstrate compliance with Chapter V obligations upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred must_cooperate_on_model_compliance/2, gloss('authorised representative must cooperate with AI Office and competent authorities on actions related to general-purpose AI model'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_addressing_representative/2, gloss('mandate empowers authorised representative to be addressed by authorities on compliance issues'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate_on_noncompliance/2, gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_inform_ai_office_of_termination/2, gloss('authorised representative must immediately inform AI Office about mandate termination and reasons'), source('celex:32024R1689/oj#art_54').
:- pred exempt_authorised_representative_obligation/1, gloss('general-purpose AI model exempt from authorised representative obligation under Article 54'), source('celex:32024R1689/oj#art_54').
:- pred released_under_free_and_open_source_licence/1, gloss('model released under licence allowing access usage modification and distribution'), source('celex:32024R1689/oj#art_54').
:- pred parameters_publicly_available_for_model/1, gloss('parameters weights architecture and usage information made publicly available'), source('celex:32024R1689/oj#art_54').

must_appoint_authorised_representative(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    established_in_third_country(P),
    before_placing_on_market_or_service(M),
    \+ exempt_authorised_representative_obligation(M).

must_enable_authorised_representative(P, R) :-
    provider(P),
    authorised_representative(R),
    general_purpose_ai_model(_M),
    mandated_by(P, R).

must_perform_mandated_tasks(R, P) :-
    authorised_representative(R),
    provider(P),
    mandated_by(P, R).

must_provide_mandate_copy(R, ai_office) :-
    authorised_representative(R),
    provider(_P),
    mandated_by(_P, R).

must_verify_provider_compliance(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    mandated_by(_P, R).

must_keep_technical_documentation_for_model(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    mandated_by(_P, R),
    period(years(10), after(placing_on_market(M))).

must_provide_compliance_information_for_model(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    reasoned_request(ai_office, M).

must_cooperate_on_model_compliance(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    reasoned_request(_Authority, M).

mandate_empowers_addressing_representative(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    mandated_by(_P, R).

must_terminate_mandate_on_noncompliance(R, P) :-
    authorised_representative(R),
    provider(P),
    mandated_by(P, R),
    acts_contrary_to_obligations(P).

must_inform_ai_office_of_termination(R, termination(Mandate, Reasons)) :-
    authorised_representative(R),
    mandated_by(_P, R),
    mandate_terminated(Mandate),
    has_reasons(Reasons).

exempt_authorised_representative_obligation(M) :-
    general_purpose_ai_model(M),
    released_under_free_and_open_source_licence(M),
    parameters_publicly_available_for_model(M),
    \+ systemic_risk(M).

provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandated_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_provider_compliance/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_technical_documentation_for_model/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_compliance_information_for_model/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate_on_model_compliance/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_addressing_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate_on_noncompliance/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_ai_office_of_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
provenance(released_under_free_and_open_source_licence/1, 'celex:32024R1689/oj#art_54').
provenance(parameters_publicly_available_for_model/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

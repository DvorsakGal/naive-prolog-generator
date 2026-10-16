% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : c00fb27a4ebbcad5e163c6eb6d39a921de19c7d44740b99d30ea0b24ffa17534
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred must_appoint_authorised_representative/2, gloss('third-country provider must appoint authorised representative by written mandate before placing general-purpose AI model on Union market'), source('celex:32024R1689/oj#art_54').
:- pred must_enable_authorised_representative/2, gloss('provider must enable authorised representative to perform tasks specified in mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_tasks_specified_in_mandate/2, gloss('authorised representative must perform tasks specified in mandate received from provider'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_copy_of_mandate/2, gloss('authorised representative must provide copy of mandate to AI Office upon request in official language of Union institutions'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_verification/1, gloss('mandate empowers authorised representative to verify technical documentation drawn up and obligations fulfilled'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_keeping_documentation/1, gloss('mandate empowers authorised representative to keep technical documentation at disposal of AI Office and national competent authorities for 10 years'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_providing_information/1, gloss('mandate empowers authorised representative to provide AI Office with information and documentation upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_cooperation/1, gloss('mandate empowers authorised representative to cooperate with AI Office and competent authorities upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers_being_addressed/1, gloss('mandate empowers authorised representative to be addressed by AI Office or competent authorities on all compliance issues'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate_if_provider_acting_contrary/1, gloss('authorised representative must terminate mandate if provider acting contrary to obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_inform_ai_office_of_termination/2, gloss('authorised representative must immediately inform AI Office of mandate termination and reasons'), source('celex:32024R1689/oj#art_54').
:- pred exempt_from_authorised_representative_obligation/1, gloss('provider of general-purpose AI model exempt from authorised representative obligation'), source('celex:32024R1689/oj#art_54').

must_appoint_authorised_representative(P, M) :-
    third_country_provider(P),
    general_purpose_ai_model_provider(P),
    before_placing_on_market(M),
    authorised_representative(A),
    written_mandate(P, A, M).

must_enable_authorised_representative(P, A) :-
    third_country_provider(P),
    general_purpose_ai_model_provider(P),
    authorised_representative(A),
    mandate(P, A, Tasks),
    must_perform_tasks_specified_in_mandate(A, Tasks).

must_perform_tasks_specified_in_mandate(A, Tasks) :-
    authorised_representative(A),
    mandate(_, A, Tasks).

must_provide_copy_of_mandate(A, ai_office) :-
    authorised_representative(A),
    mandate(_, A, M),
    upon_request(ai_office, M),
    easily_understood_language(M).

mandate_empowers_verification(M) :-
    mandate(_, _, M),
    empowers(M, verify_technical_documentation),
    empowers(M, verify_obligations_fulfilled).

mandate_empowers_keeping_documentation(M) :-
    mandate(_, _, M),
    empowers(M, keep_documentation_at_disposal(ai_office)),
    empowers(M, keep_documentation_at_disposal(national_competent_authority)),
    keep_for(years(10), after(M)),
    empowers(M, keep_contact_details(provider)).

mandate_empowers_providing_information(M) :-
    mandate(_, _, M),
    empowers(M, provide_information(ai_office)),
    from_competent_authority(reasoned_request, ai_office),
    empowers(M, provide_documentation(ai_office)).

mandate_empowers_cooperation(M) :-
    mandate(_, _, M),
    empowers(M, cooperate_with(ai_office)),
    empowers(M, cooperate_with(competent_authority)),
    from_competent_authority(reasoned_request, _).

mandate_empowers_being_addressed(M) :-
    mandate(_, _, M),
    empowers(M, be_addressed_by(ai_office)),
    empowers(M, be_addressed_by(competent_authority)),
    in_addition_to_or_instead_of(provider).

must_terminate_mandate_if_provider_acting_contrary(A) :-
    authorised_representative(A),
    mandate(P, A, M),
    acting_contrary_to_obligations(P),
    terminate_mandate(A, M).

must_inform_ai_office_of_termination(A, Reasons) :-
    authorised_representative(A),
    mandate(P, A, M),
    acting_contrary_to_obligations(P),
    terminate_mandate(A, M),
    immediately_inform(A, ai_office, termination(M, Reasons)).

exempt_from_authorised_representative_obligation(P) :-
    general_purpose_ai_model_provider(P),
    free_and_open_source_licence(P),
    publicly_available_parameters(P),
    \+ presents_systemic_risk(P).

presents_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

general_purpose_ai_model(M) :-
    general_purpose_ai_model_provider(_),
    model(M).

free_and_open_source_licence(P) :-
    general_purpose_ai_model_provider(P),
    licence(P, free_and_open_source).

publicly_available_parameters(P) :-
    general_purpose_ai_model_provider(P),
    parameters_publicly_available(P),
    weights_publicly_available(P),
    model_architecture_information_publicly_available(P),
    model_usage_information_publicly_available(P).

written_mandate(P, A, M) :-
    provider(P),
    authorised_representative(A),
    mandate(P, A, _),
    written(M).

mandate(P, A, Tasks) :-
    provider(P),
    authorised_representative(A),
    tasks(Tasks).

empowers(M, Task) :-
    mandate(_, _, M),
    task(Task).

task(verify_technical_documentation).
task(verify_obligations_fulfilled).
task(keep_documentation_at_disposal(_)).
task(keep_contact_details(_)).
task(provide_information(_)).
task(provide_documentation(_)).
task(cooperate_with(_)).
task(be_addressed_by(_)).

upon_request(ai_office, M) :-
    mandate(_, _, M).

immediately_inform(A, ai_office, termination(M, Reasons)) :-
    authorised_representative(A),
    mandate(_, A, M),
    reasons(Reasons).

terminate_mandate(A, M) :-
    authorised_representative(A),
    mandate(_, A, M).

before_placing_on_market(M) :-
    general_purpose_ai_model(M),
    placing_on_market(M).

keep_for(years(10), after(M)) :-
    general_purpose_ai_model(M).

in_addition_to_or_instead_of(provider).

from_competent_authority(reasoned_request, _).

reasons(_).

licence(P, free_and_open_source) :-
    general_purpose_ai_model_provider(P).

parameters_publicly_available(P) :-
    general_purpose_ai_model_provider(P).

weights_publicly_available(P) :-
    general_purpose_ai_model_provider(P).

model_architecture_information_publicly_available(P) :-
    general_purpose_ai_model_provider(P).

model_usage_information_publicly_available(P) :-
    general_purpose_ai_model_provider(P).

tasks(_).

provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_tasks_specified_in_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_copy_of_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_verification/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_keeping_documentation/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_providing_information/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_cooperation/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_being_addressed/1, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate_if_provider_acting_contrary/1, 'celex:32024R1689/oj#art_54').
provenance(must_inform_ai_office_of_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_from_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

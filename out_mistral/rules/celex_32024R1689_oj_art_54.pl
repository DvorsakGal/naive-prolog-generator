% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bc72430957a7295c0e59e085318ec440e0b3ba92fbefc9a2268efd817f2a0c9d
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred third_country_provider/1, gloss('provider established in a third country'), source('celex:32024R1689/oj#art_54').
:- pred written_mandate/1, gloss('written mandate appointing an authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred appointed_authorised_representative/2, gloss('provider appointed authorised representative by written mandate'), source('celex:32024R1689/oj#art_54').
:- pred mandate_task/1, gloss('task specified in the mandate received from the provider'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers/2, gloss('mandate empowers authorised representative to perform task'), source('celex:32024R1689/oj#art_54').
:- pred verify_technical_documentation/1, gloss('verify technical documentation drawn up and obligations fulfilled'), source('celex:32024R1689/oj#art_54').
:- pred keep_documentation_available/2, gloss('keep documentation and contact details available for period'), source('celex:32024R1689/oj#art_54').
:- pred provide_information_on_request/2, gloss('provide information and documentation upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred cooperate_with_authorities/2, gloss('cooperate with AI Office and competent authorities upon reasoned request'), source('celex:32024R1689/oj#art_54').
:- pred addressable_by_authorities/1, gloss('authorised representative addressable by AI Office or competent authorities'), source('celex:32024R1689/oj#art_54').
:- pred terminate_mandate/1, gloss('authorised representative terminates the mandate'), source('celex:32024R1689/oj#art_54').
:- pred free_open_source_licence/1, gloss('licence allowing access, usage, modification and distribution'), source('celex:32024R1689/oj#art_54').
:- pred parameters_publicly_available/1, gloss('parameters, weights, architecture and usage information made publicly available'), source('celex:32024R1689/oj#art_54').

must_appoint_authorised_representative(Provider, Representative) :-
    third_country_provider(Provider),
    general_purpose_ai_model(Model),
    placing_on_market(Model),
    authorised_representative(Representative),
    written_mandate(Mandate),
    appointed_authorised_representative(Provider, Representative).

must_enable_performance_of_tasks(Provider, Representative) :-
    third_country_provider(Provider),
    appointed_authorised_representative(Provider, Representative),
    mandate_task(Task),
    mandate_empowers(Mandate, Task).

must_perform_mandate_tasks(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative),
    mandate_task(Task),
    mandate_empowers(_Mandate, Task).

must_provide_mandate_copy_on_request(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative).

mandate_empowers(Mandate, verify_technical_documentation) :-
    written_mandate(Mandate).

mandate_empowers(Mandate, keep_documentation_available(years(10), after(placing_on_market))) :-
    written_mandate(Mandate).

mandate_empowers(Mandate, provide_information_on_request) :-
    written_mandate(Mandate).

mandate_empowers(Mandate, cooperate_with_authorities) :-
    written_mandate(Mandate).

must_keep_documentation_available(Representative, years(10)) :-
    authorised_representative(Representative),
    appointed_authorised_representative(Provider, Representative),
    general_purpose_ai_model(Model),
    placing_on_market(Model).

must_provide_information_on_reasoned_request(Representative, ai_office) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative).

must_cooperate_with_authorities_on_reasoned_request(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative),
    ai_office(Authority).

addressable_by_authorities(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative).

must_terminate_mandate(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(Provider, Representative),
    acting_contrary_to_obligations(Provider).

must_inform_ai_office_of_termination(Representative) :-
    authorised_representative(Representative),
    terminate_mandate(Representative).

exempt_appointment_of_authorised_representative(Provider) :-
    third_country_provider(Provider),
    general_purpose_ai_model(Model),
    free_open_source_licence(Model),
    parameters_publicly_available(Model),
    \+ systemic_risk(Model).

acting_contrary_to_obligations(Provider) :-
    third_country_provider(Provider),
    general_purpose_ai_model(Model),
    provider(Provider),
    placing_on_market(Model).

provenance(third_country_provider/1, 'celex:32024R1689/oj#art_54').
provenance(written_mandate/1, 'celex:32024R1689/oj#art_54').
provenance(appointed_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_task/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers/2, 'celex:32024R1689/oj#art_54').
provenance(verify_technical_documentation/1, 'celex:32024R1689/oj#art_54').
provenance(keep_documentation_available/2, 'celex:32024R1689/oj#art_54').
provenance(provide_information_on_request/2, 'celex:32024R1689/oj#art_54').
provenance(cooperate_with_authorities/2, 'celex:32024R1689/oj#art_54').
provenance(addressable_by_authorities/1, 'celex:32024R1689/oj#art_54').
provenance(terminate_mandate/1, 'celex:32024R1689/oj#art_54').
provenance(free_open_source_licence/1, 'celex:32024R1689/oj#art_54').
provenance(parameters_publicly_available/1, 'celex:32024R1689/oj#art_54').
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_performance_of_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandate_tasks/1, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy_on_request/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_documentation_available/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information_on_reasoned_request/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate_with_authorities_on_reasoned_request/1, 'celex:32024R1689/oj#art_54').
provenance(addressable_by_authorities/1, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/1, 'celex:32024R1689/oj#art_54').
provenance(must_inform_ai_office_of_termination/1, 'celex:32024R1689/oj#art_54').
provenance(exempt_appointment_of_authorised_representative/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

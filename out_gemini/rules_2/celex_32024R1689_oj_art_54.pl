% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : db44b432e7b2aeab836f8398016b8c3e1a97819dc47799ec386f1379850b3300
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred established_in_third_country/1, gloss('entity established in a third country'), source('celex:32024R1689/oj#art_54').
:- pred established_in_union/1, gloss('entity established in the Union'), source('celex:32024R1689/oj#art_54').
:- pred free_and_open_source_licence/1, gloss('model released under a free and open-source licence fulfilling access, usage, modification, and distribution conditions'), source('celex:32024R1689/oj#art_54').
:- pred open_source_parameters_publicly_available/1, gloss('parameters, architecture, and usage information are made publicly available'), source('celex:32024R1689/oj#art_54').
:- pred exempt_authorised_representative_obligation/1, gloss('provider is exempt from appointing an authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred must_appoint/2, gloss('actor must appoint an entity via mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_enable/2, gloss('actor must enable another entity to perform specified mandate tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform/2, gloss('actor must perform tasks in a mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_provide/2, gloss('actor must provide information or document to an authority'), source('celex:32024R1689/oj#art_54').
:- pred must_keep/2, gloss('actor must keep documentation or details for a designated period'), source('celex:32024R1689/oj#art_54').
:- pred must_cooperate/2, gloss('actor must cooperate with authority on action'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate/2, gloss('actor must terminate a mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_inform/2, gloss('actor must inform an authority of an event'), source('celex:32024R1689/oj#art_54').
:- pred non_compliant_provider/1, gloss('provider considered to be acting contrary to obligations'), source('celex:32024R1689/oj#art_54').
:- pred mandate_empowers/2, gloss('mandate gives power to carry out specified tasks or roles'), source('celex:32024R1689/oj#art_54').

% Paragraph 6: Exemption from the obligations in Article 54
exempt_authorised_representative_obligation(Provider) :-
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    free_and_open_source_licence(Model),
    open_source_parameters_publicly_available(Model),
    \+ systemic_risk(Model).

% Paragraph 1: Appointment of authorised representative
must_appoint(Provider, authorised_representative(AR, Model)) :-
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    established_in_third_country(Provider),
    authorised_representative(AR),
    established_in_union(AR),
    \+ exempt_authorised_representative_obligation(Provider).

% Paragraph 2: Provider enables authorised representative
must_enable(Provider, authorised_representative(AR, tasks(Mandate))) :-
    provider_of_general_purpose_ai_model(Provider),
    authorised_representative_of(AR, Provider),
    mandate_empowers(Mandate, AR).

% Paragraph 3: Authorised representative performs tasks and provides mandate upon request
must_perform(AR, tasks(Mandate)) :-
    authorised_representative(AR),
    mandate_empowers(Mandate, AR).

must_provide(AR, copy_of_mandate(ai_office)) :-
    authorised_representative(AR),
    ai_office(_Office).

% Paragraph 3: Specific mandated tasks
must_perform(AR, verify_technical_documentation(Model)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model).

must_keep(AR, documentation_and_contact_details(Model, period(years(10), after(placing_on_market)))) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model).

must_provide(AR, compliance_information(ai_office, Model)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    ai_office(_Office).

must_cooperate(AR, action(Authority, Model)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    ( ai_office(Authority) ; national_competent_authority(Authority) ).

% Paragraph 4: Mandate empowerments
mandate_empowers(Mandate, AR) :-
    authorised_representative(AR),
    mandate_empowers(Mandate, addressed_by_authorities(AR)).

% Paragraph 5: Termination of mandate
must_terminate(AR, mandate(Provider)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    non_compliant_provider(Provider).

must_inform(AR, termination_and_reasons(ai_office, Provider)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    non_compliant_provider(Provider),
    ai_office(_Office).

% Provenance
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_54').
provenance(established_in_union/1, 'celex:32024R1689/oj#art_54').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_54').
provenance(open_source_parameters_publicly_available/1, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform/2, 'celex:32024R1689/oj#art_54').
provenance(non_compliant_provider/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers/2, 'celex:32024R1689/oj#art_54').

% References
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

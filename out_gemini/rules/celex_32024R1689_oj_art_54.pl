% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 173794ded44b2994d4dab625690cae54fca39fd7d710316ef313ff9f762b36dc
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred established_in_third_country/1, gloss('entity established in a third country'), source('celex:32024R1689/oj#art_54').
:- pred established_in_union/1, gloss('entity established in the Union'), source('celex:32024R1689/oj#art_54').
:- pred free_and_open_source_licence/1, gloss('licence allowing access, usage, modification, and distribution'), source('celex:32024R1689/oj#art_54').
:- pred publicly_available_parameters/1, gloss('model parameters, architecture and usage made publicly available'), source('celex:32024R1689/oj#art_54').
:- pred presents_systemic_risk/1, gloss('general-purpose AI model presents systemic risks'), source('celex:32024R1689/oj#art_54').
:- pred exempt_authorised_representative_obligation/1, gloss('provider exempt from obligation to appoint authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred must_appoint_authorised_representative/2, gloss('provider must appoint an authorised representative by written mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_enable/2, gloss('provider must enable authorised representative to perform tasks in mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_tasks/2, gloss('authorised representative must perform tasks in mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide copy of mandate to AI Office upon request'), source('celex:32024R1689/oj#art_54').
:- pred required_mandate_powers/2, gloss('mandate must empower authorised representative with specified tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider breaches obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_inform_termination/2, gloss('authorised representative must immediately inform AI Office of termination and reasons'), source('celex:32024R1689/oj#art_54').
:- pred provider_contrary_to_regulation/2, gloss('authorised representative considers or has reason to consider provider acting contrary to regulation'), source('celex:32024R1689/oj#art_54').

% Paragraph 6: Exemption from the Article 54 obligations
exempt_authorised_representative_obligation(Provider) :-
    provider(Provider),
    free_and_open_source_licence(Model),
    publicly_available_parameters(Model),
    \+ presents_systemic_risk(Model).

% Paragraph 1: Appointment of authorised representative
must_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    established_in_third_country(Provider),
    authorised_representative(Representative),
    established_in_union(Representative),
    \+ exempt_authorised_representative_obligation(Provider).

% Paragraph 2: Provider must enable authorised representative
must_enable(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative).

% Paragraph 3: Authorised representative obligations
must_perform_tasks(Representative, Mandate) :-
    authorised_representative(Representative),
    required_mandate_powers(Representative, Mandate).

must_provide_mandate_copy(Representative, Mandate) :-
    authorised_representative(Representative),
    required_mandate_powers(Representative, Mandate).

required_mandate_powers(Representative, mandate(Model)) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model).

% Paragraph 5: Termination and notification
must_terminate_mandate(Representative, Mandate) :-
    authorised_representative(Representative),
    provider_contrary_to_regulation(Representative, Mandate).

must_inform_termination(Representative, termination(Mandate, Reasons)) :-
    authorised_representative(Representative),
    must_terminate_mandate(Representative, Mandate),
    provider_contrary_to_regulation(Representative, Reasons).

provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(required_mandate_powers/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

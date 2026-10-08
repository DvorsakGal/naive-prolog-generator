% unit       : celex:32024R1689/oj#art_54
% title      : Authorised representatives of providers of general-purpose AI models
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : gpt-oss:120b-cloud
% prompt sha : 0601a200c2b8a848287d6461bc949740955cb39fc33eea2552a0b20aee0ba271
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred third_country_provider/1, gloss('provider established in third countries'), source('celex:32024R1689/oj#art_54').
:- pred provider_of/2, gloss('provider supplies a general‑purpose AI model'), source('celex:32024R1689/oj#art_54').
:- pred mandate_received/2, gloss('mandate issued by provider to authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred required_authorised_representative_appointment/2, gloss('provider must appoint an authorised representative before placing a model on the market'), source('celex:32024R1689/oj#art_54').
:- pred required_authorised_representative_enablement/2, gloss('provider must enable its authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_54').
:- pred required_authorised_representative_task/2, gloss('authorised representative must perform a mandated task'), source('celex:32024R1689/oj#art_54').
:- pred retention_period_10_years/1, gloss('technical documentation must be retained for ten years after market placement'), source('celex:32024R1689/oj#art_54').
:- pred free_open_source_license/1, gloss('AI model is released under a free and open‑source licence'), source('celex:32024R1689/oj#art_54').
:- pred publicly_available_parameters/1, gloss('model parameters and architecture are publicly available'), source('celex:32024R1689/oj#art_54').
:- pred provider_acting_contrary/1, gloss('provider is acting contrary to its obligations'), source('celex:32024R1689/oj#art_54').
:- pred required_authorised_representative_termination/1, gloss('authorised representative must terminate the mandate and inform the AI Office'), source('celex:32024R1689/oj#art_54').
:- pred exempt_authorised_representative_obligation/1, gloss('exempt provider from the obligations of this article'), source('celex:32024R1689/oj#art_54').

required_authorised_representative_appointment(P, S) :-
    provider(P),
    third_country_provider(P),
    general_purpose_ai_model(S).

required_authorised_representative_enablement(P, R) :-
    provider(P),
    authorised_representative(R),
    mandate_received(P, R).

required_authorised_representative_task(R, verify_technical_documentation) :-
    authorised_representative(R),
    provider(P),
    provider_of(P, S),
    general_purpose_ai_model(S).

required_authorised_representative_task(R, retain_technical_documentation) :-
    authorised_representative(R),
    provider(P),
    provider_of(P, S),
    general_purpose_ai_model(S),
    retention_period_10_years(S).

required_authorised_representative_task(R, provide_information) :-
    authorised_representative(R),
    provider(P),
    provider_of(P, S),
    general_purpose_ai_model(S).

required_authorised_representative_task(R, cooperate) :-
    authorised_representative(R),
    provider(P),
    provider_of(P, S),
    general_purpose_ai_model(S).

required_authorised_representative_termination(R) :-
    authorised_representative(R),
    provider(P),
    provider_acting_contrary(P).

exempt_authorised_representative_obligation(P) :-
    provider(P),
    free_open_source_license(P),
    publicly_available_parameters(P),
    general_purpose_ai_model(S),
    provider_of(P, S),
    \+ systemic_risk(S).

provenance(required_authorised_representative_appointment/2, 'celex:32024R1689/oj#art_54').
provenance(required_authorised_representative_enablement/2, 'celex:32024R1689/oj#art_54').
provenance(required_authorised_representative_task/2, 'celex:32024R1689/oj#art_54').
provenance(retention_period_10_years/1, 'celex:32024R1689/oj#art_54').
provenance(free_open_source_license/1, 'celex:32024R1689/oj#art_54').
provenance(publicly_available_parameters/1, 'celex:32024R1689/oj#art_54').
provenance(provider_acting_contrary/1, 'celex:32024R1689/oj#art_54').
provenance(required_authorised_representative_termination/1, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

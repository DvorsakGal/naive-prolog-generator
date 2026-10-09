% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 9b6c9cca5096cb7d608156539d51832b362d86b1be336e15ff1470e47d906700
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
% ---------- declarations of new predicates ----------
:- pred must_appoint/2, gloss('provider must appoint an authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred must_enable/2, gloss('provider must enable its authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform_task/2, gloss('authorised representative must perform a mandated task'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate the mandate if provider is non‑compliant'), source('celex:32024R1689/oj#art_54').
:- pred must_inform/2, gloss('authorised representative must inform the AI Office of termination'), source('celex:32024R1689/oj#art_54').

:- pred established_in_third_country/1, gloss('entity is established in a third country'), source('celex:32024R1689/oj#art_54').
:- pred established_in_union/1, gloss('entity is established in the Union'), source('celex:32024R1689/oj#art_54').
:- pred open_source_license/1, gloss('provider releases the model under a free and open‑source licence'), source('celex:32024R1689/oj#art_54').
:- pred open_source_provider_without_systemic_risk/1, gloss('open‑source provider whose model does not present systemic risk'), source('celex:32024R1689/oj#art_54').
:- pred mandate_received/2, gloss('provider has given a written mandate to the authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred provider_noncompliant/1, gloss('provider is acting contrary to its obligations'), source('celex:32024R1689/oj#art_54').

% ---------- obligations ----------
must_appoint(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    established_in_third_country(Provider),
    established_in_union(Representative),
    \+ open_source_provider_without_systemic_risk(Provider).

must_enable(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    \+ open_source_provider_without_systemic_risk(Provider).

must_perform_task(Representative, verify_technical_documentation) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).

must_perform_task(Representative, keep_copy_of_technical_documentation) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).

must_perform_task(Representative, provide_copy_of_mandate) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).

must_perform_task(Representative, provide_information) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).

must_perform_task(Representative, cooperate) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).

must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    provider_noncompliant(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).

must_inform(Representative, termination_notice(Provider)) :-
    authorised_representative(Representative),
    provider(Provider),
    provider_noncompliant(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).

% ---------- derived helper predicates ----------
open_source_provider_without_systemic_risk(Provider) :-
    provider(Provider),
    open_source_license(Provider),
    \+ systemic_risk(Provider).

% ---------- provenance ----------
provenance(must_appoint/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_task/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform/2, 'celex:32024R1689/oj#art_54').
provenance(open_source_provider_without_systemic_risk/1, 'celex:32024R1689/oj#art_54').

% ---------- references ----------
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

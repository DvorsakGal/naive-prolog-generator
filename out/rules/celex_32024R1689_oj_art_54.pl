% unit       : celex:32024R1689/oj#art_54
% title      : Authorised representatives of providers of general-purpose AI models
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : gpt-oss:120b-cloud
% prompt sha : aee600fd5b3103d38f137fcf2c5161b711d4b8df7d7c35ba3e56cbd2636c096e
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred third_country_provider/1, gloss('provider established in a third country'), source('celex:32024R1689/oj#art_54').
:- pred established_in_union/1, gloss('entity established in the Union'), source('celex:32024R1689/oj#art_54').
:- pred free_and_open_source_license/2, gloss('provider releases model under a free and open‑source licence'), source('celex:32024R1689/oj#art_54').
:- pred mandate_received/2, gloss('written mandate received from provider by authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred general_purpose_ai_model/1, gloss('general‑purpose AI model'), source('celex:32024R1689/oj#art_54').
:- pred technical_documentation_specified/1, gloss('technical documentation specified in annex 11'), source('celex:32024R1689/oj#art_54').
:- pred provider_contrary_obligations/1, gloss('provider acting contrary to its obligations'), source('celex:32024R1689/oj#art_54').

:- pred required_authorised_representative_appointment/2, gloss('provider must appoint an authorised representative'), source('celex:32024R1689/oj#art_54').
:- pred required_enable_authorised_representative/2, gloss('provider must enable its authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_54').
:- pred required_verify_technical_documentation/2, gloss('authorised representative must verify the technical documentation'), source('celex:32024R1689/oj#art_54').
:- pred required_keep_technical_documentation/2, gloss('authorised representative must keep the technical documentation for ten years'), source('celex:32024R1689/oj#art_54').
:- pred required_provide_information_to_ai_office/2, gloss('authorised representative must provide information to the AI Office upon request'), source('celex:32024R1689/oj#art_54').
:- pred required_cooperate_with_ai_office/2, gloss('authorised representative must cooperate with the AI Office and competent authorities'), source('celex:32024R1689/oj#art_54').
:- pred required_terminate_mandate_if_contrary/2, gloss('authorised representative must terminate the mandate if the provider acts contrary to its obligations'), source('celex:32024R1689/oj#art_54').
:- pred exempt_authorised_representative_appointment/2, gloss('exemption from the appointment obligation for open‑source models without systemic risk'), source('celex:32024R1689/oj#art_54').

required_authorised_representative_appointment(P, M) :-
    provider(P),
    third_country_provider(P),
    general_purpose_ai_model(M),
    placing_on_market(M),
    \+ exempt_authorised_representative_appointment(P, M),
    authorised_representative(AR),
    established_in_union(AR),
    mandate_received(P, AR).

required_enable_authorised_representative(P, AR) :-
    provider(P),
    authorised_representative(AR),
    established_in_union(AR),
    mandate_received(P, AR).

required_verify_technical_documentation(AR, M) :-
    authorised_representative(AR),
    general_purpose_ai_model(M),
    technical_documentation_specified(M),
    mandate_received(_, AR).

required_keep_technical_documentation(AR, M) :-
    authorised_representative(AR),
    general_purpose_ai_model(M),
    established_in_union(AR),
    mandate_received(_, AR).

required_provide_information_to_ai_office(AR, M) :-
    authorised_representative(AR),
    general_purpose_ai_model(M),
    mandate_received(_, AR).

required_cooperate_with_ai_office(AR, M) :-
    authorised_representative(AR),
    general_purpose_ai_model(M),
    mandate_received(_, AR).

required_terminate_mandate_if_contrary(AR, P) :-
    authorised_representative(AR),
    provider(P),
    provider_contrary_obligations(P),
    mandate_received(P, AR).

exempt_authorised_representative_appointment(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    free_and_open_source_license(P, M),
    \+ systemic_risk(M).

provenance(required_authorised_representative_appointment/2, 'celex:32024R1689/oj#art_54').
provenance(required_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(required_verify_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(required_keep_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(required_provide_information_to_ai_office/2, 'celex:32024R1689/oj#art_54').
provenance(required_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_54').
provenance(required_terminate_mandate_if_contrary/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_appointment/2, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

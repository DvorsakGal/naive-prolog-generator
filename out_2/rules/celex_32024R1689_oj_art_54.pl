% unit       : celex:32024R1689/oj#art_54
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : c41982be70c692fa3b03fe17bb351af17406fb084e5fd3cb3b98c4823b1893e5
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f86aaf1b1f7b4a4c95eea524dd00848a45d1187aeff42c116731fb18ec8f0eea
% cached     : False
% title      : Authorised representatives of providers of general-purpose AI models
:- pred open_source_provider/1, gloss('provider releasing model under a free open‑source licence'), source('celex:32024R1689/oj#art_54').
:- pred exempt_provider/1, gloss('provider to which the obligations of Article 54 do not apply'), source('celex:32024R1689/oj#art_54').
:- pred must_appoint/2, gloss('provider must appoint an authorised representative before placing a model on the market'), source('celex:32024R1689/oj#art_54').
:- pred must_enable/2, gloss('provider must enable its authorised representative to perform the mandated tasks'), source('celex:32024R1689/oj#art_54').
:- pred must_perform/2, gloss('authorised representative must perform the tasks specified in the mandate'), source('celex:32024R1689/oj#art_54').
:- pred must_terminate/2, gloss('authorised representative must terminate the mandate if the provider breaches its obligations'), source('celex:32024R1689/oj#art_54').
:- pred must_inform/2, gloss('authorised representative must inform the AI Office of the termination of the mandate'), source('celex:32024R1689/oj#art_54').

exempt_provider(P) :-
    provider(P),
    open_source_provider(P),
    \+ systemic_risk(P).

must_appoint(P, authorised_representative(AR)) :-
    provider(P),
    \+ exempt_provider(P).

must_enable(P, authorised_representative(AR)) :-
    provider(P),
    \+ exempt_provider(P).

must_perform(AR, tasks_from_mandate) :-
    authorised_representative(AR).

must_terminate(AR, mandate) :-
    authorised_representative(AR).

must_inform(AR, inform(ai_office, termination)) :-
    authorised_representative(AR).

provenance(must_appoint/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_provider/1, 'celex:32024R1689/oj#art_54').
provenance(open_source_provider/1, 'celex:32024R1689/oj#art_54').

references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

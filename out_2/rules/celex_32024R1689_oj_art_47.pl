% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b31c2879e9ba1392ac96b2604fe89907691330d41587594fbfc35ac60907a72a
% cached     : False
% title      : EU declaration of conformity
% New predicates introduced for Article 47
:- pred must_draw_up/2, gloss('provider must draw up EU declaration of conformity for a high‑risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred required_retention/1, gloss('EU declaration of conformity must be kept for ten years after placement or putting into service'), source('celex:32024R1689/oj#art_47').
:- pred required_identification/1, gloss('EU declaration of conformity must identify the high‑risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_submit/2, gloss('provider must submit a copy of the EU declaration of conformity upon request'), source('celex:32024R1689/oj#art_47').
:- pred required_statement_meeting_requirements/1, gloss('EU declaration of conformity must state conformity with the requirements set out in Chapter 3 Section 2'), source('celex:32024R1689/oj#art_47').
:- pred required_information/1, gloss('EU declaration of conformity must contain the information set out in Annex 5'), source('celex:32024R1689/oj#art_47').
:- pred required_translation/1, gloss('EU declaration of conformity must be translated into a language easily understood by the competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred required_single_declaration/1, gloss('When multiple Union legislations apply, a single EU declaration of conformity must be drawn up'), source('celex:32024R1689/oj#art_47').
:- pred required_legislation_identification/1, gloss('The declaration must contain information to identify the applicable Union harmonisation legislation'), source('celex:32024R1689/oj#art_47').
:- pred must_assume_responsibility/2, gloss('by drawing up the declaration, the provider assumes responsibility for compliance with Chapter 3 Section 2'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_up_to_date/2, gloss('provider must keep the EU declaration of conformity up‑to‑date'), source('celex:32024R1689/oj#art_47').

% Obligations and requirements
must_draw_up(Provider, eu_declaration_of_conformity(HighRiskAISystem)) :-
    provider(Provider),
    ai_system(HighRiskAISystem),
    ai_system(HighRiskAISystem).

required_retention(eu_declaration_of_conformity(years(10), after(placed_on_market_or_put_into_service))).

required_identification(eu_declaration_of_conformity).

must_submit(Provider, copy_of(eu_declaration_of_conformity, upon_request)) :-
    provider(Provider).

required_statement_meeting_requirements(eu_declaration_of_conformity).

required_information(eu_declaration_of_conformity).

required_translation(eu_declaration_of_conformity).

required_single_declaration(eu_declaration_of_conformity).

required_legislation_identification(eu_declaration_of_conformity).

must_assume_responsibility(Provider, compliance(chapter_3_sec_2)) :-
    provider(Provider).

must_keep_up_to_date(Provider, eu_declaration_of_conformity) :-
    provider(Provider).

% Provenance
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_47').
provenance(required_retention/1, 'celex:32024R1689/oj#art_47').
provenance(required_identification/1, 'celex:32024R1689/oj#art_47').
provenance(must_submit/2, 'celex:32024R1689/oj#art_47').
provenance(required_statement_meeting_requirements/1, 'celex:32024R1689/oj#art_47').
provenance(required_information/1, 'celex:32024R1689/oj#art_47').
provenance(required_translation/1, 'celex:32024R1689/oj#art_47').
provenance(required_single_declaration/1, 'celex:32024R1689/oj#art_47').
provenance(required_legislation_identification/1, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_47').

% References
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

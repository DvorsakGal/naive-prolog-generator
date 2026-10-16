% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 3877930027e95c0ccc32101abe5c031e7f72eb4e418a750e69dd2c3e87f60228
% cached     : False
% title      : EU declaration of conformity
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity for an AI system'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity_for/2, gloss('EU declaration of conformity drawn up for an AI system'), source('celex:32024R1689/oj#art_47').
:- pred provider_of/2, gloss('entity is the provider of an AI system'), source('celex:32024R1689/oj#art_47').
:- pred subject_to_other_union_harmonisation_legislation_requiring_declaration/1, gloss('AI system is subject to other Union harmonisation legislation requiring an EU declaration of conformity'), source('celex:32024R1689/oj#art_47').
:- pred single_eu_declaration_of_conformity/1, gloss('single EU declaration of conformity covering all applicable Union law'), source('celex:32024R1689/oj#art_47').
:- pred requested_by/2, gloss('an authority has requested an item from an actor'), source('celex:32024R1689/oj#art_47').
:- pred permitted_adopt_delegated_acts/2, gloss('actor is empowered to adopt delegated acts on a matter'), source('celex:32024R1689/oj#art_47').

% Paragraph 1: Provider must draw up EU declaration of conformity for high-risk AI system
must_draw_up(Provider, eu_declaration_of_conformity(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% Paragraph 1: Provider must keep declaration at disposal for 10 years after placing on market or putting into service
must_keep(Provider, at_disposal(Declaration, national_competent_authority, period(years(10), after(placed_or_put_into_service(System))))) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    eu_declaration_of_conformity_for(Declaration, System).

% Paragraph 1: Submit a copy of EU declaration of conformity upon request
must_submit(Provider, copy(Declaration, Authority)) :-
    provider_of(Provider, System),
    eu_declaration_of_conformity_for(Declaration, System),
    national_competent_authority(Authority),
    requested_by(Authority, Declaration).

% Paragraph 3: Where subject to other Union legislation requiring declaration, single declaration must be drawn up
must_draw_up(Provider, single_eu_declaration_of_conformity(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation_requiring_declaration(System).

% Paragraph 4: Provider assumes responsibility and must keep declaration up to date
must_update(Provider, Declaration) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    eu_declaration_of_conformity_for(Declaration, System).

% Paragraph 5: Commission empowered to adopt delegated acts to amend Annex V
permitted_adopt_delegated_acts(Commission, amend_annex_5) :-
    commission(Commission).

provenance(must_draw_up/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit/2, 'celex:32024R1689/oj#art_47').
provenance(must_update/2, 'celex:32024R1689/oj#art_47').
provenance(permitted_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

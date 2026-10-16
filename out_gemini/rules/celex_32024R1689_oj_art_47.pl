% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5e2075d5a4914a7a0977826bdbd6c62e88ef2785a5294132a032a19022af47a2
% cached     : False
% title      : EU declaration of conformity
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity drawn up for an AI system'), source('celex:32024R1689/oj#art_47').
:- pred subject_to_other_union_harmonisation_legislation/1, gloss('AI system subject to other Union harmonisation legislation requiring declaration'), source('celex:32024R1689/oj#art_47').
:- pred single_eu_declaration_of_conformity/1, gloss('single EU declaration of conformity covering all applicable Union law'), source('celex:32024R1689/oj#art_47').
:- pred empowered_to_adopt_delegated_acts/2, gloss('authority is empowered to adopt delegated acts on a matter'), source('celex:32024R1689/oj#art_47').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_47').

:- pred must_draw_up/2, gloss('actor must draw up an object'), source('celex:32024R1689/oj#art_47').
:- pred must_keep/2, gloss('actor must keep an object'), source('celex:32024R1689/oj#art_47').
:- pred must_submit/2, gloss('actor must submit an object'), source('celex:32024R1689/oj#art_47').
:- pred must_assume_responsibility/2, gloss('actor must assume responsibility for an object'), source('celex:32024R1689/oj#art_47').
:- pred must_update/2, gloss('actor must keep an object updated'), source('celex:32024R1689/oj#art_47').

% Paragraph 1: Provider must draw up EU declaration of conformity for high-risk AI system
must_draw_up(Provider, declaration_of_conformity(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

% Paragraph 1: Keep at disposal of national competent authorities for 10 years after placing on market or putting into service
must_keep(Provider, at_disposal(declaration_of_conformity(System), national_competent_authorities, period(years(10), after(placed_or_put_into_service(System))))) :-
    provider(Provider),
    high_risk_ai_system(System).

% Paragraph 1: Submit copy to national competent authorities upon request
must_submit(Provider, copy_to(declaration_of_conformity(System), Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

% Paragraph 3: Where subject to other Union harmonisation legislation, draw up single EU declaration of conformity
must_draw_up(Provider, single_declaration_of_conformity(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation(System).

% Paragraph 4: Provider assumes responsibility for compliance with Chapter III Section 2
must_assume_responsibility(Provider, compliance(System, chapter_3_section_2)) :-
    provider(Provider),
    high_risk_ai_system(System),
    eu_declaration_of_conformity(declaration_of_conformity(System)).

% Paragraph 4: Provider keeps declaration up to date
must_update(Provider, declaration_of_conformity(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

% Paragraph 5: Commission empowered to adopt delegated acts to amend Annex V
empowered_to_adopt_delegated_acts(Commission, amend_annex_5(content_of_eu_declaration_of_conformity)) :-
    commission(Commission).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_47').
provenance(subject_to_other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(single_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_47').
provenance(empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_47').
provenance(commission/1, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(must_update/2, 'celex:32024R1689/oj#art_47').

% References
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : bf785ef13f0453d15cb0fcb8f20abb336e02b18e0ed72a314e3cdc7b2b3ce82b
% cached     : False
% title      : Technical documentation
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_11').
:- pred sme/1, gloss('small and medium-sized enterprise, including start-up'), source('celex:32024R1689/oj#art_11').
:- pred system_covered_by_annex_1_section_a/1, gloss('AI system related to a product covered by Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_11').
:- pred drawn_up_before_market_or_service/1, gloss('technical documentation drawn up before placing on market or putting into service'), source('celex:32024R1689/oj#art_11').
:- pred kept_up_to_date/1, gloss('technical documentation is kept up to date'), source('celex:32024R1689/oj#art_11').
:- pred demonstrates_compliance_with_chapter_3_section_2/1, gloss('technical documentation demonstrates compliance with Chapter III Section 2'), source('celex:32024R1689/oj#art_11').
:- pred provides_clear_comprehensive_assessment_info/1, gloss('technical documentation provides clear and comprehensive info for compliance assessment'), source('celex:32024R1689/oj#art_11').
:- pred contains_elements_annex_4/1, gloss('technical documentation contains minimum elements set out in Annex IV'), source('celex:32024R1689/oj#art_11').
:- pred uses_simplified_form_annex_4/1, gloss('SME uses simplified technical documentation form established by Commission'), source('celex:32024R1689/oj#art_11').
:- pred single_technical_documentation/1, gloss('single set of technical documentation drawn up containing Annex IV and Annex I Section A requirements'), source('celex:32024R1689/oj#art_11').
:- pred required_technical_documentation_compliant/1, gloss('technical documentation meets requirements of Article 11'), source('celex:32024R1689/oj#art_11').
:- pred permitted_simplified_documentation/2, gloss('SME is permitted to provide technical documentation in a simplified form'), source('celex:32024R1689/oj#art_11').
:- pred must_accept/2, gloss('actor must accept a specific form or document'), source('celex:32024R1689/oj#art_11').
:- pred empowered_to_adopt_delegated_acts/2, gloss('actor is empowered to adopt delegated acts on a subject'), source('celex:32024R1689/oj#art_11').

% Paragraph 1: General requirements for technical documentation of high-risk AI systems
required_technical_documentation_compliant(Doc) :-
    technical_documentation(Doc),
    drawn_up_before_market_or_service(Doc),
    kept_up_to_date(Doc),
    demonstrates_compliance_with_chapter_3_section_2(Doc),
    provides_clear_comprehensive_assessment_info(Doc),
    contains_elements_annex_4(Doc).

% Paragraph 1: Simplified provision for SMEs
permitted_simplified_documentation(Actor, Doc) :-
    sme(Actor),
    technical_documentation(Doc),
    uses_simplified_form_annex_4(Doc).

% Paragraph 1: Notified bodies must accept the simplified form
must_accept(Body, form(simplified_technical_documentation, Doc)) :-
    notified_body(Body),
    technical_documentation(Doc),
    uses_simplified_form_annex_4(Doc).

% Paragraph 2: Single set of technical documentation for Annex I Section A products
single_technical_documentation(Doc) :-
    technical_documentation(Doc),
    high_risk_ai_system(S),
    system_covered_by_annex_1_section_a(S),
    contains_elements_annex_4(Doc),
    covers_union_harmonisation_legislation_annex_i(Doc).

% Paragraph 3: Empowerment of Commission to amend Annex IV
empowered_to_adopt_delegated_acts(Commission, amend_annex_4) :-
    commission(Commission).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_11').
provenance(sme/1, 'celex:32024R1689/oj#art_11').
provenance(system_covered_by_annex_1_section_a/1, 'celex:32024R1689/oj#art_11').
provenance(drawn_up_before_market_or_service/1, 'celex:32024R1689/oj#art_11').
provenance(kept_up_to_date/1, 'celex:32024R1689/oj#art_11').
provenance(demonstrates_compliance_with_chapter_3_section_2/1, 'celex:32024R1689/oj#art_11').
provenance(provides_clear_comprehensive_assessment_info/1, 'celex:32024R1689/oj#art_11').
provenance(contains_elements_annex_4/1, 'celex:32024R1689/oj#art_11').
provenance(uses_simplified_form_annex_4/1, 'celex:32024R1689/oj#art_11').
provenance(single_technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(required_technical_documentation_compliant/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_simplified_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept/2, 'celex:32024R1689/oj#art_11').
provenance(empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

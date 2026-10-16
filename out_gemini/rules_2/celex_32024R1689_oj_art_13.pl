% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 9846b161fdedbdddd2a467d441912b4977c5239a27842fb2566c3a2d0f1ab2cc
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_13').
:- pred sufficiently_transparent_operation/1, gloss('operation of AI system is sufficiently transparent to enable deployers to interpret and use output appropriately'), source('celex:32024R1689/oj#art_13').
:- pred accompanied_by_instructions_for_use/1, gloss('AI system is accompanied by instructions for use meeting statutory quality standards'), source('celex:32024R1689/oj#art_13').
:- pred contains_provider_identity/1, gloss('instructions for use contain provider identity and contact details'), source('celex:32024R1689/oj#art_13').
:- pred contains_performance_characteristics/1, gloss('instructions for use contain characteristics, capabilities and performance limitations'), source('celex:32024R1689/oj#art_13').
:- pred contains_predetermined_changes/1, gloss('instructions for use contain pre-determined changes and performance changes'), source('celex:32024R1689/oj#art_13').
:- pred contains_human_oversight_measures/1, gloss('instructions for use contain human oversight measures under Article 14'), source('celex:32024R1689/oj#art_13').
:- pred contains_resource_and_maintenance_specifications/1, gloss('instructions for use contain computational resources, lifetime, and maintenance measures'), source('celex:32024R1689/oj#art_13').
:- pred contains_logging_mechanisms_description/1, gloss('instructions for use contain description of logging mechanisms under Article 12'), source('celex:32024R1689/oj#art_13').
:- pred complies_with_article_13/1, gloss('high-risk AI system complies with transparency and information provision requirements of Article 13'), source('celex:32024R1689/oj#art_13').

% Paragraph 1: high-risk AI system must be designed and developed to ensure sufficiently transparent operation.
required_transparency(S) :-
    high_risk_ai_system(S),
    sufficiently_transparent_operation(S).

% Paragraph 2 and 3: instructions for use must accompany the system and contain the mandatory elements.
required_instructions_for_use(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S),
    instructions_for_use(S),
    contains_provider_identity(S),
    contains_performance_characteristics(S),
    contains_predetermined_changes(S),
    contains_human_oversight_measures(S),
    contains_resource_and_maintenance_specifications(S),
    contains_logging_mechanisms_description(S).

% Overall compliance with Article 13 for high-risk AI systems.
complies_with_article_13(S) :-
    high_risk_ai_system(S),
    required_transparency(S),
    required_instructions_for_use(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(sufficiently_transparent_operation/1, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(contains_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(contains_performance_characteristics/1, 'celex:32024R1689/oj#art_13').
provenance(contains_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(contains_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(contains_resource_and_maintenance_specifications/1, 'celex:32024R1689/oj#art_13').
provenance(contains_logging_mechanisms_description/1, 'celex:32024R1689/oj#art_13').
provenance(required_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(required_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(complies_with_article_13/1, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

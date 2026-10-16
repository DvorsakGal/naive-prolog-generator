% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f73ecb726939459715db6dd089c8370fd4cebe3b89f6712daf2a6c133f19d59f
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred presumed_compliance_with_notified_body_requirements/1, gloss('conformity assessment body presumed to comply with Article 31 requirements'), source('celex:32024R1689/oj#art_32').

presumed_compliance_with_notified_body_requirements(Body) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with_harmonised_standards(Body),
    harmonised_standards_cover_article_31_requirements.

demonstrates_conformity_with_harmonised_standards(Body) :-
    conformity_assessment_body(Body),
    harmonised_standard(Standard),
    conforms_to(Body, Standard).

harmonised_standards_cover_article_31_requirements :-
    harmonised_standard(Standard),
    covers_requirements(Standard, 'celex:32024R1689/oj#art_31').

provenance(presumed_compliance_with_notified_body_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standards_cover_article_31_requirements/0, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

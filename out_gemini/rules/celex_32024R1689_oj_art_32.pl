% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ea4cedab2cb4307cfcb5af66ccfabda65242dbb45f50e6952332b96db1e80496
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred demonstrates_conformity_with_harmonised_standards/2, gloss('conformity assessment body demonstrates conformity with relevant harmonised standards covering certain requirements'), source('celex:32024R1689/oj#art_32').
:- pred presumed_compliance/2, gloss('an entity is presumed to comply with specified requirements'), source('celex:32024R1689/oj#art_32').

% Article 32: Presumption of conformity with requirements relating to notified bodies
presumed_compliance(Body, requirements_article_31) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with_harmonised_standards(Body, requirements_article_31).

provenance(demonstrates_conformity_with_harmonised_standards/2, 'celex:32024R1689/oj#art_32').
provenance(presumed_compliance/2, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

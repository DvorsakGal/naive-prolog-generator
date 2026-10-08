% unit       : celex:32024R1689/oj#art_32
% title      : Presumption of conformity with requirements relating to notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : gpt-oss:120b-cloud
% prompt sha : 965e184ed22ddd4fd1c25c052f0c617aebaf5866b240372e5551711fab7b5f55
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred demonstrates_conformity_with_criteria/1, gloss('conformity assessment body demonstrates conformity with criteria in relevant harmonised standards'), source('celex:32024R1689/oj#art_32').
:- pred harmonised_standard_covers_requirements/1, gloss('applicable harmonised standards cover the requirements set out in art 31'), source('celex:32024R1689/oj#art_32').

presumed_compliant(Body) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with_criteria(Body),
    harmonised_standard_covers_requirements(Body).

provenance(presumed_compliant/1, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

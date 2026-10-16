% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 491a6ca522fc245dfe68f178bb20f065e3dff070378e373d86ec7813132815dd
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred demonstrates_conformity_with/2, gloss('conformity assessment body demonstrates conformity with harmonised standards or parts thereof'), source('celex:32024R1689/oj#art_32').
:- pred published_in_oj/1, gloss('reference of the harmonised standard is published in the Official Journal'), source('celex:32024R1689/oj#art_32').
:- pred covers_requirements_of_art_31/1, gloss('harmonised standard covers requirements set out in Article 31'), source('celex:32024R1689/oj#art_32').
:- pred presumed_compliant_with_art_31/1, gloss('conformity assessment body is presumed to comply with Article 31 requirements'), source('celex:32024R1689/oj#art_32').

presumed_compliant_with_art_31(Body) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with(Body, Standard),
    harmonised_standard(Standard),
    published_in_oj(Standard),
    covers_requirements_of_art_31(Standard).

provenance(presumed_compliant_with_art_31/1, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

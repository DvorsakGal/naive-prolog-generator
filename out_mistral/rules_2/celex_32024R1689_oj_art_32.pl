% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 5a4a29ed72396a06f8d75ee3285d5ad1410b506d57877ed310585ac5ff9e7142
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred presumed_to_comply_with_requirements/1, gloss('conformity assessment body presumed to comply with requirements set out in Article 31'), source('celex:32024R1689/oj#art_32').
:- pred demonstrates_conformity_with_criteria/2, gloss('conformity assessment body demonstrates conformity with criteria laid down in harmonised standards'), source('celex:32024R1689/oj#art_32').

presumed_to_comply_with_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_criteria(B, S),
    harmonised_standard(S),
    reference_published_in_official_journal(S),
    meets_requirements_art_31(R),
    harmonised_standard_covers(S, R).

demonstrates_conformity_with_criteria(B, S) :-
    conformity_assessment_body(B),
    harmonised_standard(S).

harmonised_standard_covers(S, R) :-
    harmonised_standard(S),
    meets_requirements_art_31(R).

provenance(presumed_to_comply_with_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_criteria/2, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

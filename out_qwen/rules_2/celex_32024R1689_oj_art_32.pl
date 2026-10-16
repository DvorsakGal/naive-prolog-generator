% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 02995be0829042258aaeeed2659c206dca73a47a45ac38064ddb671af56a6300
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred presumed_compliant_with_art_31/1, gloss('conformity assessment body presumed to comply with Article 31 requirements'), source('celex:32024R1689/oj#art_32').
:- pred demonstrates_conformity_with_harmonised_standard/1, gloss('body demonstrates conformity with criteria in relevant harmonised standards published in OJEU'), source('celex:32024R1689/oj#art_32').
:- pred harmonised_standard_covers_requirement/2, gloss('harmonised standard covers a requirement set out in Article 31'), source('celex:32024R1689/oj#art_32').

presumed_compliant_with_art_31(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standard(B).

demonstrates_conformity_with_harmonised_standard(B) :-
    conformity_assessment_body(B),
    harmonised_standard(_S),
    % Placeholder: specific demonstration logic depends on external evidence not in signature
    true.

provenance(presumed_compliant_with_art_31/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standard/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standard_covers_requirement/2, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

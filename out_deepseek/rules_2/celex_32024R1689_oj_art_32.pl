% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 5c55828fa28a12d6c9dabdc53c079b111c9bfe13ed14bb4dafb2adc8816ad0ae
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred presumed_conformity_with_notified_body_requirements/1, gloss('conformity assessment body presumed to comply with notified body requirements'), source('celex:32024R1689/oj#art_32').

presumed_conformity_with_notified_body_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B),
    harmonised_standards_cover_requirements(B).

demonstrates_conformity_with_harmonised_standards(B) :-
    conformity_assessment_body(B),
    harmonised_standard(H),
    references_published_in_ojeu(H),
    body_conforms_to_standard(B, H).

harmonised_standards_cover_requirements(B) :-
    conformity_assessment_body(B),
    harmonised_standard(H),
    references_published_in_ojeu(H),
    body_conforms_to_standard(B, H),
    standard_covers_article_31_requirements(H).

provenance(presumed_conformity_with_notified_body_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standards_cover_requirements/1, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

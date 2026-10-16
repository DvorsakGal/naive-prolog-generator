% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : cbf8287cca5f2b571fcbf321713e5738c43db207f293e8b037f2d6a4af7a58fb
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred presumed_conformity_notified_body/1, gloss('conformity assessment body presumed to comply with Article 31 requirements'), source('celex:32024R1689/oj#art_32').

presumed_conformity_notified_body(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B).

demonstrates_conformity_with_harmonised_standards(B) :-
    conformity_assessment_body(B),
    harmonised_standard(S),
    reference_published_in_official_journal(S),
    demonstrates_conformity_with(B, S).

demonstrates_conformity_with(B, S) :-
    conformity_assessment_body(B),
    harmonised_standard(S).

covers_requirements(S, R) :-
    harmonised_standard(S),
    requirement(R).

presumed_conformity_notified_body(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B),
    harmonised_standard(S),
    reference_published_in_official_journal(S),
    covers_requirements(S, R),
    requirement_art_31(R).

requirement_art_31(R) :-
    requirement(R).

provenance(presumed_conformity_notified_body/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with/2, 'celex:32024R1689/oj#art_32').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_32').
provenance(requirement_art_31/1, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

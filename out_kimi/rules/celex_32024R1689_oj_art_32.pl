% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 476b21f316d2ca83d891599d16da82758d422fb1dc9f3ac4da495f734e55497b
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred presumed_compliant_notified_body/1, gloss('conformity assessment body presumed to comply with Article 31 requirements'), source('celex:32024R1689/oj#art_32').
:- pred demonstrates_conformity_with_harmonised_standards/1, gloss('conformity assessment body demonstrates conformity with relevant harmonised standards'), source('celex:32024R1689/oj#art_32').
:- pred references_published_in_official_journal/1, gloss('references of harmonised standards published in Official Journal'), source('celex:32024R1689/oj#art_32').
:- pred harmonised_standards_cover_requirements/2, gloss('harmonised standards cover the applicable Article 31 requirements'), source('celex:32024R1689/oj#art_32').

presumed_compliant_notified_body(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B),
    references_published_in_official_journal(_Refs),
    harmonised_standards_cover_requirements(_Standards, art_31_requirements).

provenance(presumed_compliant_notified_body/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_32').
provenance(references_published_in_official_journal/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standards_cover_requirements/2, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

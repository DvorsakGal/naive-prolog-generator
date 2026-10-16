% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 378f021339abbb4060712687074bbf8fbb809dd978d69205a02cb57cc4dd4d94
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred presumed_compliant_with_notified_body_requirements/1, gloss('conformity assessment body presumed to comply with Article 31 requirements'), source('celex:32024R1689/oj#art_32').

presumed_compliant_with_notified_body_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B, Standards),
    references_published_in_official_journal(Standards),
    covers_requirements(Standards, Requirements),
    requirements_set_out_in_article_31(Requirements).

demonstrates_conformity_with_harmonised_standards(B, Standards) :-
    conformity_assessment_body(B),
    harmonised_standard(Standards).

references_published_in_official_journal(Standards) :-
    harmonised_standard(Standards).

covers_requirements(Standards, Requirements) :-
    harmonised_standard(Standards),
    article_31_requirements(Requirements).

requirements_set_out_in_article_31(Requirements) :-
    article_31_requirements(Requirements).

article_31_requirements(requirements_for_notified_bodies).

provenance(presumed_compliant_with_notified_body_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/2, 'celex:32024R1689/oj#art_32').
provenance(references_published_in_official_journal/1, 'celex:32024R1689/oj#art_32').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_32').
provenance(requirements_set_out_in_article_31/1, 'celex:32024R1689/oj#art_32').
provenance(article_31_requirements/1, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

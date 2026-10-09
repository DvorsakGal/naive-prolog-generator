% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5cfb782e1101249f818a6cd443294b7b9b599b640611c529babc9400dc1e32ae
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred demonstrates_conformity/2, gloss('conformity assessment body demonstrates conformity with criteria of a harmonised standard'), source('celex:32024R1689/oj#art_32').
:- pred required_publication_in_official_journal/1, gloss('reference of the harmonised standard published in the Official Journal of the European Union'), source('celex:32024R1689/oj#art_32').
:- pred required_coverage_of_requirements/1, gloss('applicable harmonised standard covers the requirements set out in the referenced article'), source('celex:32024R1689/oj#art_32').
:- pred required_compliance_with_requirements/1, gloss('conformity assessment body is presumed to comply with the requirements set out in the referenced article'), source('celex:32024R1689/oj#art_32').

required_compliance_with_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity(B, HS),
    required_publication_in_official_journal(HS),
    required_coverage_of_requirements(HS).

provenance(demonstrates_conformity/2, 'celex:32024R1689/oj#art_32').
provenance(required_publication_in_official_journal/1, 'celex:32024R1689/oj#art_32').
provenance(required_coverage_of_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(required_compliance_with_requirements/1, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

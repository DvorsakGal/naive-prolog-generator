% unit       : celex:32024R1689/oj#art_32
% title      : Presumption of conformity with requirements relating to notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : gpt-oss:120b-cloud
% prompt sha : e8b95602d1e1f8c1ba2ddf69d40d867028dc6a37fb113c7254298c1355635d8d
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred demonstrates_conformity/2, gloss('conformity assessment body demonstrates its conformity with the criteria laid down in a harmonised standard'), source('celex:32024R1689/oj#art_32').
:- pred published_in_official_journal/1, gloss('harmonised standard whose references have been published in the Official Journal of the European Union'), source('celex:32024R1689/oj#art_32').
:- pred covers_requirements/2, gloss('harmonised standard covers a requirement set out in Article 31'), source('celex:32024R1689/oj#art_32').
:- pred requirement_in_art_31/1, gloss('requirement set out in Article 31'), source('celex:32024R1689/oj#art_32').
:- pred presumed_compliant/1, gloss('conformity assessment body is presumed to comply with the requirements of Article 31'), source('celex:32024R1689/oj#art_32').

presumed_compliant(CAB) :-
    conformity_assessment_body(CAB),
    demonstrates_conformity(CAB, Standard),
    harmonised_standard(Standard),
    published_in_official_journal(Standard),
    covers_requirements(Standard, Requirement),
    requirement_in_art_31(Requirement).

provenance(presumed_compliant/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity/2, 'celex:32024R1689/oj#art_32').
provenance(published_in_official_journal/1, 'celex:32024R1689/oj#art_32').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_32').
provenance(requirement_in_art_31/1, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

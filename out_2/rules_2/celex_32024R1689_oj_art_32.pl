% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 2c432c3513e60be442ec50b33c692cd4ede12fa9dfeba9e38a2981f8cf2b0dbf
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred demonstrates_conformity_with_criteria/2, gloss('conformity assessment body demonstrates conformity with criteria of a harmonised standard'), source('celex:32024R1689/oj#art_32').
:- pred published_in_official_journal/1, gloss('harmonised standard published in the Official Journal of the European Union'), source('celex:32024R1689/oj#art_32').
:- pred standard_covers_requirement/2, gloss('harmonised standard covers a requirement'), source('celex:32024R1689/oj#art_32').
:- pred requirement_art_31_applies/1, gloss('requirement set out in article 31'), source('celex:32024R1689/oj#art_32').

presume_compliance(Body, Requirement) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with_criteria(Body, Standard),
    harmonised_standard(Standard),
    published_in_official_journal(Standard),
    requirement_art_31_applies(Requirement),
    standard_covers_requirement(Standard, Requirement).

provenance(presume_compliance/2, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

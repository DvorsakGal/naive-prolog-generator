% unit       : celex:32024R1689/oj#art_32
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 22606cfa33393d030efe946f8389b3b058b7ff2105047ea8b4df6324b9096715
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dcb7b54a324115d8fa0feaa2dace0fbd206aba99253cb554ce8a4ea5be98dcac
% cached     : False
% title      : Presumption of conformity with requirements relating to notified bodies
:- pred presumed_compliant_with_art_31_requirements/1, gloss('conformity assessment body presumed to comply with Article 31 requirements'), source('celex:32024R1689/oj#art_32').
:- pred demonstrates_conformity_with_harmonised_standard/1, gloss('body demonstrates conformity with published harmonised standard criteria'), source('celex:32024R1689/oj#art_32').
:- pred harmonised_standard_covers_requirement/2, gloss('harmonised standard covers a specific requirement'), source('celex:32024R1689/oj#art_32').

presumed_compliant_with_art_31_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standard(B).

demonstrates_conformity_with_harmonised_standard(B) :-
    conformity_assessment_body(B),
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    demonstrates_conformity_with_criteria(B, H).

reference_published_in_official_journal(_H).

demonstrates_conformity_with_criteria(_B, _H).

provenance(presumed_compliant_with_art_31_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standard/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standard_covers_requirement/2, 'celex:32024R1689/oj#art_32').

references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

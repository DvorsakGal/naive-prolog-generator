% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 95f0ff47d631a5a58aab5c05993bfdee469d6aff093c6dee720b4ec74c0ef104
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred third_country_conformity_assessment_body/1, gloss('conformity assessment body established under the law of a third country'), source('celex:32024R1689/oj#art_39').
:- pred union_agreement_exists/1, gloss('union has concluded an agreement with the third country where the body is established'), source('celex:32024R1689/oj#art_39').
:- pred meets_article_31_requirements/1, gloss('body meets the requirements laid down in Article 31'), source('celex:32024R1689/oj#art_39').
:- pred ensures_equivalent_compliance/1, gloss('body ensures an equivalent level of compliance to Article 31 requirements'), source('celex:32024R1689/oj#art_39').
:- pred authorised_as_notified_body/1, gloss('authorised to carry out activities of notified bodies under this regulation'), source('celex:32024R1689/oj#art_39').

authorised_as_notified_body(B) :-
    third_country_conformity_assessment_body(B),
    union_agreement_exists(B),
    meets_article_31_requirements(B).

authorised_as_notified_body(B) :-
    third_country_conformity_assessment_body(B),
    union_agreement_exists(B),
    ensures_equivalent_compliance(B).

provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(union_agreement_exists/1, 'celex:32024R1689/oj#art_39').
provenance(meets_article_31_requirements/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_compliance/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_as_notified_body/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

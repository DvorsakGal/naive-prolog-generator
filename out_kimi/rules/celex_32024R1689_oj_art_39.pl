% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c950208efcd17d03a17b86698455f67d30e5e9f42123e94a690475fcc1bbd970
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred authorised_notified_body/1, gloss('conformity assessment body authorised to carry out notified body activities'), source('celex:32024R1689/oj#art_39').
:- pred meets_requirements_of_article_31/1, gloss('meets the requirements laid down in Article 31'), source('celex:32024R1689/oj#art_39').
:- pred ensures_equivalent_compliance/1, gloss('ensures an equivalent level of compliance'), source('celex:32024R1689/oj#art_39').
:- pred third_country_agreement_with_union/1, gloss('third country with which the Union has concluded an agreement'), source('celex:32024R1689/oj#art_39').

authorised_notified_body(B) :-
    conformity_assessment_body(B),
    established_under_third_country_law(B, Country),
    third_country_agreement_with_union(Country),
    ( meets_requirements_of_article_31(B)
    ; ensures_equivalent_compliance(B)
    ).

provenance(authorised_notified_body/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements_of_article_31/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_compliance/1, 'celex:32024R1689/oj#art_39').
provenance(third_country_agreement_with_union/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

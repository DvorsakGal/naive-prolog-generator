% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 9fb1fbb46604707c431cb64240e5d85aef512fd74ec5bbd98d11b970cb626551
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred third_country_conformity_assessment_body/1, gloss('conformity assessment body established under the law of a third country with which the Union has concluded an agreement'), source('celex:32024R1689/oj#art_39').
:- pred equivalent_compliance/1, gloss('ensures an equivalent level of compliance with the requirements laid down in article 31'), source('celex:32024R1689/oj#art_39').

permitted_authorisation_of_conformity_assessment_body(CAB) :-
    third_country_conformity_assessment_body(CAB),
    (   meets_requirements_art_31(CAB)
    ;   equivalent_compliance(CAB)
    ).

provenance(permitted_authorisation_of_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

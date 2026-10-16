% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8ec7a359afa8781f157d3adf26bae4e4516f01c65bec133e8d281ce84e83a899
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred established_under_law_of_third_country/1, gloss('conformity assessment body established under third-country law with an EU agreement'), source('celex:32024R1689/oj#art_39').
:- pred meets_requirements/2, gloss('entity meets specified requirements or standards'), source('celex:32024R1689/oj#art_39').
:- pred ensures_equivalent_compliance/2, gloss('entity ensures equivalent level of compliance with specified requirements'), source('celex:32024R1689/oj#art_39').
:- pred permitted_authorisation/2, gloss('authorisation of an entity for a designated role is permitted'), source('celex:32024R1689/oj#art_39').

% Art. 39: Conformity assessment bodies established under the law of a third
% country with which the Union has concluded an agreement may be authorised
% to carry out the activities of notified bodies, provided that they meet the
% requirements laid down in Article 31 or ensure an equivalent level of compliance.

permitted_authorisation(B, activities_of_notified_body) :-
    conformity_assessment_body(B),
    established_under_law_of_third_country(B),
    meets_requirements(B, art_31).

permitted_authorisation(B, activities_of_notified_body) :-
    conformity_assessment_body(B),
    established_under_law_of_third_country(B),
    ensures_equivalent_compliance(B, art_31).

provenance(permitted_authorisation/2, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

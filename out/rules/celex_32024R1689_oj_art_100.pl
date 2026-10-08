% unit       : celex:32024R1689/oj#art_100
% title      : Administrative fines on Union institutions, bodies, offices and agencies
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : gpt-oss:120b-cloud
% prompt sha : a11f367e7c388c588e1a417d441c675f133fd1086e1377657f68111a63ccd5a6
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred edps/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_100').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_100').
:- pred union_institution/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_100').
:- pred falls_within_scope/1, gloss('Falls within the scope of the regulation'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_prohibition_art5/1, gloss('Non‑compliance with the prohibition of AI practices referred to in art 5'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_other_requirements/1, gloss('Non‑compliance with any requirements or obligations under the regulation other than those in art 5'), source('celex:32024R1689/oj#art_100').
:- pred annual_basis/0, gloss('Occurs on an annual basis'), source('celex:32024R1689/oj#art_100').
:- pred administrative_fine_imposed/2, gloss('Administrative fine imposed by EDPS on institution'), source('celex:32024R1689/oj#art_100').

permitted_impose_administrative_fine(EDPS, Institution) :-
    edps(EDPS),
    union_institution(Institution),
    falls_within_scope(Institution).

provenance(permitted_impose_administrative_fine/2, 'celex:32024R1689/oj#art_100').

administrative_fine_imposed(EDPS, Institution) :-
    permitted_impose_administrative_fine(EDPS, Institution).

provenance(administrative_fine_imposed/2, 'celex:32024R1689/oj#art_100').

must_notify(EDPS, Commission) :-
    edps(EDPS),
    commission(Commission),
    annual_basis,
    administrative_fine_imposed(EDPS, _).

provenance(must_notify/2, 'celex:32024R1689/oj#art_100').

maximum_fine_amount(Institution, up_to_1500000) :-
    union_institution(Institution),
    non_compliance_prohibition_art5(Institution).

provenance(maximum_fine_amount/2, 'celex:32024R1689/oj#art_100').

maximum_fine_amount(Institution, up_to_750000) :-
    union_institution(Institution),
    non_compliance_other_requirements(Institution).

provenance(maximum_fine_amount/2, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').

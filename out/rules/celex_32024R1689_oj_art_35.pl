% unit       : celex:32024R1689/oj#art_35
% title      : Identification numbers and lists of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 71fbb2beb148b23fdc00a7bea9b4b39bfb49046a4f36946e226b14e985cc776e
% model      : gpt-oss:120b-cloud
% prompt sha : f4363c18a97e42e5d5e78255a6a2c6fc3f8193e0605987844ae7584aab0dc774
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_35').

required_identification_number(C, B) :-
    commission(C),
    notified_body(B).

required_publicly_available_notified_body_list(C) :-
    commission(C).

provenance(required_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(required_publicly_available_notified_body_list/1, 'celex:32024R1689/oj#art_35').

references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

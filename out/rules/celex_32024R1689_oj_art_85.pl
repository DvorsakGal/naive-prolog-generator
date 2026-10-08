% unit       : celex:32024R1689/oj#art_85
% title      : Right to lodge a complaint with a market surveillance authority
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : gpt-oss:120b-cloud
% prompt sha : aa1920742682450c651673b28e9b8f5117df8ff4896ebd18a6332eb5eb36b6e4
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
% Declarations for new predicates
:- pred permitted_complaint_submission/2, gloss('permission to submit a complaint'), source('celex:32024R1689/oj#art_85').
:- pred relevant_market_surveillance_authority/2, gloss('market surveillance authority relevant to a person'), source('celex:32024R1689/oj#art_85').
:- pred natural_or_legal_person/1, gloss('natural or legal person'), source('celex:32024R1689/oj#art_85').
:- pred grounds_to_consider_infringement/1, gloss('person has grounds to consider an infringement'), source('celex:32024R1689/oj#art_85').

% Permission to lodge a complaint
permitted_complaint_submission(Person, Authority) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person),
    relevant_market_surveillance_authority(Person, Authority).

% Determining the relevant market surveillance authority
relevant_market_surveillance_authority(Person, Authority) :-
    market_surveillance_authority(Authority),
    natural_or_legal_person(Person).

% Provenance
provenance(permitted_complaint_submission/2, 'celex:32024R1689/oj#art_85').
provenance(relevant_market_surveillance_authority/2, 'celex:32024R1689/oj#art_85').

% References
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

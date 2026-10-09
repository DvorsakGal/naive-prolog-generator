% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 23efd62ea9345d1db377774bbbb4b338177c4986713ed1f6b69319b05278c05d
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred natural_or_legal_person_applies/1, gloss('natural or legal person'), source('celex:32024R1689/oj#art_85').
:- pred grounds_to_consider_infringement_applies/1, gloss('has grounds to consider infringement'), source('celex:32024R1689/oj#art_85').
:- pred permitted_complaint/1, gloss('allowed to submit complaint'), source('celex:32024R1689/oj#art_85').
:- pred must_take_into_account/2, gloss('authority must take complaint into account'), source('celex:32024R1689/oj#art_85').
:- pred must_handle/2, gloss('authority must handle complaint according to procedures'), source('celex:32024R1689/oj#art_85').

permitted_complaint(P) :-
    natural_or_legal_person_applies(P),
    grounds_to_consider_infringement_applies(P).

must_take_into_account(A, _C) :-
    market_surveillance_authority(A).

must_handle(A, _C) :-
    market_surveillance_authority(A).

provenance(permitted_complaint/1, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3c5155a3796983066b5864cc0bd2c2ed847ca1bd61fb6c145815389a878b6553
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred has_grounds_to_consider_infringement/1, gloss('person having grounds to consider infringement of this regulation'), source('celex:32024R1689/oj#art_85').
:- pred relevant_market_surveillance_authority/2, gloss('market surveillance authority relevant to a complaint'), source('celex:32024R1689/oj#art_85').
:- pred must_take_into_account_for_market_surveillance/2, gloss('authority must take complaint into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred must_handle_complaint_according_to_procedures/2, gloss('authority must handle complaint in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

permitted_lodge_complaint(Person, Authority) :-
    has_grounds_to_consider_infringement(Person),
    relevant_market_surveillance_authority(Authority, Person).

must_take_into_account_for_market_surveillance(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    permitted_lodge_complaint(_Person, Authority),
    complaint(Complaint).

must_handle_complaint_according_to_procedures(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    permitted_lodge_complaint(_Person, Authority),
    complaint(Complaint).

provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account_for_market_surveillance/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_complaint_according_to_procedures/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

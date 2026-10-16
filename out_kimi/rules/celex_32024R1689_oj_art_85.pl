% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 08bc782597472f8c418eec8dfa739622eefe371e88668ec71fe9230a2a4203c8
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred must_lodge_complaint/2, gloss('natural or legal person may submit complaint to market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred infringement_of_provisions/1, gloss('infringement of the provisions of this Regulation'), source('celex:32024R1689/oj#art_85').
:- pred relevant_market_surveillance_authority/2, gloss('market surveillance authority relevant to the complainant'), source('celex:32024R1689/oj#art_85').
:- pred complaint_taken_into_account/1, gloss('complaint shall be taken into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred complaint_handled_by_procedures/1, gloss('complaint shall be handled in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

must_lodge_complaint(Person, Authority) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person, Infringement),
    infringement_of_provisions(Infringement),
    relevant_market_surveillance_authority(Person, Authority).

complaint_taken_into_account(Complaint) :-
    must_lodge_complaint(_Person, _Authority).

complaint_handled_by_procedures(Complaint) :-
    must_lodge_complaint(_Person, _Authority).

provenance(must_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_taken_into_account/1, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_by_procedures/1, 'celex:32024R1689/oj#art_85').
provenance(infringement_of_provisions/1, 'celex:32024R1689/oj#art_85').
provenance(relevant_market_surveillance_authority/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

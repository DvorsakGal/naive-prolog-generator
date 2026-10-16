% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : fcdeca518c343e1244fc48b4c3886955432eff2369c7fb8188904035a6b22dde
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred may_lodge_complaint/2, gloss('natural or legal person may lodge complaint with market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred infringement_of_provisions/1, gloss('infringement of the provisions of this Regulation'), source('celex:32024R1689/oj#art_85').
:- pred grounds_to_consider_infringement/2, gloss('person has grounds to consider infringement'), source('celex:32024R1689/oj#art_85').
:- pred relevant_market_surveillance_authority/1, gloss('market surveillance authority competent for the complaint'), source('celex:32024R1689/oj#art_85').
:- pred complaint_taken_into_account/1, gloss('complaint taken into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred complaint_handled_per_procedures/1, gloss('complaint handled in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

may_lodge_complaint(Person, Authority) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person, Regulation),
    infringement_of_provisions(Regulation),
    relevant_market_surveillance_authority(Authority).

complaint_taken_into_account(Complaint) :-
    may_lodge_complaint(_Person, _Authority).

complaint_handled_per_procedures(Complaint) :-
    may_lodge_complaint(_Person, _Authority).

provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_taken_into_account/1, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_per_procedures/1, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

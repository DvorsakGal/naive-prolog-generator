% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 31025717d90e66cef56adc27dcecdc9d79f187444add11c77957bae09aa970b1
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred may_lodge_complaint/2, gloss('person may lodge complaint with market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred complaint_grounds/2, gloss('person has grounds to consider infringement of regulation'), source('celex:32024R1689/oj#art_85').
:- pred complaint_taken_into_account/2, gloss('complaint taken into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred complaint_handled_with_dedicated_procedures/2, gloss('complaint handled in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

may_lodge_complaint(Person, Authority) :-
    market_surveillance_authority(Authority),
    complaint_grounds(Person, infringement).

complaint_grounds(Person, infringement) :-
    natural_or_legal_person(Person),
    considers_infringement(Person).

natural_or_legal_person(Person) :-
    person(Person).

considers_infringement(Person) :-
    has_grounds(Person, infringement_of_regulation).

complaint_taken_into_account(Complaint, market_surveillance_activities) :-
    may_lodge_complaint(_Person, Authority),
    market_surveillance_authority(Authority),
    complaint_submitted_to(Complaint, Authority).

complaint_handled_with_dedicated_procedures(Complaint, Authority) :-
    complaint_taken_into_account(Complaint, market_surveillance_activities),
    market_surveillance_authority(Authority),
    dedicated_procedures_established(Authority).

provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_grounds/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_taken_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_with_dedicated_procedures/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

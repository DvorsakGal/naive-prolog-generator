% unit       : celex:32024R1689/oj#art_85
% title      : Right to lodge a complaint with a market surveillance authority
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : gpt-oss:120b-cloud
% prompt sha : dc4ccd36d8fcf433df741e77ea273cfadcbd56a4b8d793cbc2a28280363f3e6b
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred natural_or_legal_person/1, gloss('natural or legal person'), source('celex:32024R1689/oj#art_85').
:- pred grounds_to_consider_infringement/1, gloss('has grounds to consider an infringement of the regulation'), source('celex:32024R1689/oj#art_85').
:- pred permitted_submit_complaint/2, gloss('may submit a complaint to a market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred complaint_submitted/2, gloss('complaint has been submitted by a person to an authority'), source('celex:32024R1689/oj#art_85').
:- pred must_take_into_account_for_market_surveillance/2, gloss('authority must take the complaint into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred must_handle_in_line_with_procedures/2, gloss('authority must handle the complaint in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

% Permission to submit a complaint
permitted_submit_complaint(Person, Authority) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).

% Record that a complaint has been submitted
complaint_submitted(Person, Authority) :-
    permitted_submit_complaint(Person, Authority).

% Duty for the authority to take the complaint into account for market surveillance
must_take_into_account_for_market_surveillance(Authority, Person) :-
    complaint_submitted(Person, Authority),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).

% Duty for the authority to handle the complaint according to procedures
must_handle_in_line_with_procedures(Authority, Person) :-
    complaint_submitted(Person, Authority),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).

% Provenance
provenance(natural_or_legal_person/1, 'celex:32024R1689/oj#art_85').
provenance(grounds_to_consider_infringement/1, 'celex:32024R1689/oj#art_85').
provenance(permitted_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_submitted/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account_for_market_surveillance/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_in_line_with_procedures/2, 'celex:32024R1689/oj#art_85').

% References
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

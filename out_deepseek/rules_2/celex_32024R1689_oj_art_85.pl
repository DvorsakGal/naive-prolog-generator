% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : da3774c4c1f40d14931b58044937dd808115ad8b70e801857a8855dee5fb9e08
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred may_submit_complaint/2, gloss('natural or legal person may submit complaint to market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred complaint_grounds/1, gloss('grounds to consider infringement of the regulation'), source('celex:32024R1689/oj#art_85').
:- pred complaint_handled_for_market_surveillance/1, gloss('complaint taken into account and handled for market surveillance'), source('celex:32024R1689/oj#art_85').

may_submit_complaint(Person, Authority) :-
    (   natural_person(Person)
    ;   legal_person(Person)
    ),
    complaint_grounds(Person),
    market_surveillance_authority(Authority).

complaint_grounds(Person) :-
    has_grounds_to_consider_infringement(Person, 'celex:32024R1689/oj').

complaint_handled_for_market_surveillance(Complaint) :-
    complaint_taken_into_account(Complaint),
    complaint_handled_according_to_procedures(Complaint).

% Auxiliary predicates
:- pred natural_person/1, gloss('natural person'), source('celex:32024R1689/oj#art_85').
:- pred legal_person/1, gloss('legal person'), source('celex:32024R1689/oj#art_85').
:- pred has_grounds_to_consider_infringement/2, gloss('person has grounds to consider infringement of regulation'), source('celex:32024R1689/oj#art_85').
:- pred complaint_taken_into_account/1, gloss('complaint taken into account for market surveillance'), source('celex:32024R1689/oj#art_85').
:- pred complaint_handled_according_to_procedures/1, gloss('complaint handled in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

provenance(may_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_grounds/1, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_for_market_surveillance/1, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

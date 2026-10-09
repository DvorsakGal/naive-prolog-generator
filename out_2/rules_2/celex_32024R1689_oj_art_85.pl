% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 4f106c960c4918944af6a1bc8c37d38d91ea9796f21fc4e2fc3489ed50917b22
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred natural_or_legal_person/1, gloss('natural or legal person'), source('celex:32024R1689/oj#art_85').
:- pred has_ground_to_consider_infringement/1, gloss('has grounds to consider an infringement'), source('celex:32024R1689/oj#art_85').
:- pred complaint/1, gloss('complaint submitted to a market surveillance authority'), source('celex:32024R1689/oj#art_85').

:- pred permitted_submit_complaint/2, gloss('person may submit a complaint to the relevant market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred must_take_into_account_complaint/2, gloss('market surveillance authority must take the complaint into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred must_handle_complaint_in_line_with_procedures/2, gloss('market surveillance authority must handle the complaint in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

permitted_submit_complaint(Person, complaint_to(Authority)) :-
    natural_or_legal_person(Person),
    has_ground_to_consider_infringement(Person),
    market_surveillance_authority(Authority).

must_take_into_account_complaint(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    complaint(Complaint).

must_handle_complaint_in_line_with_procedures(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    complaint(Complaint).

provenance(permitted_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_complaint_in_line_with_procedures/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

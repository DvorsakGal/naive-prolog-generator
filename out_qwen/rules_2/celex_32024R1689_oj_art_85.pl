% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 89b01fd6a820f1b6b2d1510c18c9bbbd42f5efe4547da8958f3c86f9625d486e
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred has_grounds_to_consider_infringement/1, gloss('person has grounds to consider that there has been an infringement of the provisions of this Regulation'), source('celex:32024R1689/oj#art_85').
:- pred may_submit_complaint/2, gloss('person may submit complaint to relevant market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred must_take_complaint_into_account/2, gloss('market surveillance authority must take complaint into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred must_handle_complaint_according_to_procedures/2, gloss('market surveillance authority must handle complaint in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

has_grounds_to_consider_infringement(Person) :-
    operator(Person).
has_grounds_to_consider_infringement(Person) :-
    union_body(Person).

may_submit_complaint(Person, Authority) :-
    has_grounds_to_consider_infringement(Person),
    relevant_market_surveillance_authority(Authority).

must_take_complaint_into_account(Authority, Complaint) :-
    relevant_market_surveillance_authority(Authority),
    may_submit_complaint(_Person, Authority),
    complaint(Complaint).

must_handle_complaint_according_to_procedures(Authority, Complaint) :-
    relevant_market_surveillance_authority(Authority),
    may_submit_complaint(_Person, Authority),
    complaint(Complaint).

provenance(has_grounds_to_consider_infringement/1, 'celex:32024R1689/oj#art_85').
provenance(may_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_complaint_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_complaint_according_to_procedures/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

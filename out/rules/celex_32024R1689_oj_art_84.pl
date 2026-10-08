% unit       : celex:32024R1689/oj#art_84
% title      : Union AI testing support structures
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : gpt-oss:120b-cloud
% prompt sha : 5877419c974c2b7a72e6abe6a8980b216d7feedc7ac4cb83302098cea32ba4bd
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred union_ai_testing_support_structure/1, gloss('Union AI testing support structure'), source('celex:32024R1689/oj#art_84').

required_designation_of_union_ai_testing_support_structure(_Commission, S) :-
    union_ai_testing_support_structure(S),
    perform_tasks_listed_under(S, 'celex:32019R1020/oj#art_21/par_6').

required_provide_independent_advice(S, board) :-
    union_ai_testing_support_structure(S).

required_provide_independent_advice(S, commission) :-
    union_ai_testing_support_structure(S).

required_provide_independent_advice(S, market_surveillance_authority) :-
    union_ai_testing_support_structure(S).

% Helper predicate to link structures with the tasks they must perform
perform_tasks_listed_under(_Structure, _Reference).

provenance(required_designation_of_union_ai_testing_support_structure/2, 'celex:32024R1689/oj#art_84').
provenance(required_provide_independent_advice/2, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% unit       : celex:32024R1689/oj#art_84
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : d9ccd3af3681e674e431f7c898a70c5154bf27f2c40dfbfc83196aac83795637
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0708fa54b1fb03314f859828214bed2af1c2a71d92e59719b48edfd9e6d3e0df
% cached     : False
% title      : Union AI testing support structures
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_84').
:- pred board/1, gloss('Board of the Union AI testing support structures'), source('celex:32024R1689/oj#art_84').
:- pred union_ai_testing_support_structure/1, gloss('Union AI testing support structure'), source('celex:32024R1689/oj#art_84').
:- pred independent_technical_scientific_advice/1, gloss('Independent technical or scientific advice'), source('celex:32024R1689/oj#art_84').
:- pred request/2, gloss('Request for advice by an actor'), source('celex:32024R1689/oj#art_84').

must_designate(Commission, union_ai_testing_support_structure) :-
    commission(Commission).

must_provide(Structure, independent_technical_scientific_advice) :-
    union_ai_testing_support_structure(Structure),
    ( board(Requester)
    ; commission(Requester)
    ; market_surveillance_authority(Requester)
    ),
    request(Requester, independent_technical_scientific_advice).

provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide/2, 'celex:32024R1689/oj#art_84').

references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

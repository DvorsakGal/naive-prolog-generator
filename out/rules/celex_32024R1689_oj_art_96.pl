% unit       : celex:32024R1689/oj#art_96
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : gpt-oss:120b-cloud
% prompt sha : cca78c9150225faa10311a186e220a8eecf821b2ab0d8dfde4a229e6e06dad66
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_guidelines/2, gloss('Commission must develop guidelines on X'), source('celex:32024R1689/oj#art_96').
:- pred required_update_guidelines/1, gloss('Commission must update previously adopted guidelines'), source('celex:32024R1689/oj#art_96').
:- pred request_from/2, gloss('Request made by actor to the Commission'), source('celex:32024R1689/oj#art_96').
:- pred own_initiative/1, gloss('Commission acts on its own initiative'), source('celex:32024R1689/oj#art_96').

required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_8')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_9')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_10')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_11')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_12')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_13')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_14')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_15')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_25')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_5')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_50')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#anx_1')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_3/unp_1/pnt_1')).
required_guidelines(commission, implementation_of(substantial_modification)).

required_update_guidelines(commission) :- request_from(member_state, commission).
required_update_guidelines(commission) :- request_from(ai_office, commission).
required_update_guidelines(commission) :- own_initiative(commission).

provenance(required_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(required_update_guidelines/1, 'celex:32024R1689/oj#art_96').
provenance(request_from/2, 'celex:32024R1689/oj#art_96').
provenance(own_initiative/1, 'celex:32024R1689/oj#art_96').

references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_3/unp_1/pnt_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').

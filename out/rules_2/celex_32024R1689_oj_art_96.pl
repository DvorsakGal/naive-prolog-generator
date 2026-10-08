% unit       : celex:32024R1689/oj#art_96
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : gpt-oss:120b-cloud
% prompt sha : 664517c1ce55f0b7e21bd26f00474a7da4c0c903b334281dcf44fbfcbd7c43ef
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_96').
:- pred regulation/1, gloss('AI Regulation'), source('celex:32024R1689/oj#art_96').
:- pred guideline_item/1, gloss('subject of a guideline'), source('celex:32024R1689/oj#art_96').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_96').
:- pred ai_office/1, gloss('AI Office of the Commission'), source('celex:32024R1689/oj#art_96').
:- pred request_from/1, gloss('request made by'), source('celex:32024R1689/oj#art_96').
:- pred own_initiative/1, gloss('initiative taken by'), source('celex:32024R1689/oj#art_96').
:- pred deemed_necessary/1, gloss('deemed necessary by'), source('celex:32024R1689/oj#art_96').
:- pred target_group/1, gloss('group whose needs must be considered'), source('celex:32024R1689/oj#art_96').

commission(commission).
regulation(ai_regulation).

guideline_item('celex:32024R1689/oj#art_8').
guideline_item('celex:32024R1689/oj#art_9').
guideline_item('celex:32024R1689/oj#art_10').
guideline_item('celex:32024R1689/oj#art_11').
guideline_item('celex:32024R1689/oj#art_12').
guideline_item('celex:32024R1689/oj#art_13').
guideline_item('celex:32024R1689/oj#art_14').
guideline_item('celex:32024R1689/oj#art_15').
guideline_item('celex:32024R1689/oj#art_25').
guideline_item('celex:32024R1689/oj#art_5').
guideline_item('celex:32024R1689/oj#art_50').
guideline_item('celex:32024R1689/oj#anx_1').
guideline_item('celex:32024R1689/oj#art_3/unp_1/pnt_1').

target_group(smes).
target_group(local_public_authority).
target_group(affected_sector).

member_state(member_state).
ai_office(ai_office).

request_from(X) :- member_state(X).
request_from(X) :- ai_office(X).

own_initiative(commission).
deemed_necessary(commission).

required_develop_guidelines(C, R) :-
    commission(C),
    regulation(R).

required_guideline_content(C, Item) :-
    commission(C),
    guideline_item(Item).

required_pay_attention_to_needs(C, Group) :-
    commission(C),
    target_group(Group).

required_consider_state_of_the_art(C) :-
    commission(C).

required_consider_harmonised_standards(C) :-
    commission(C).

required_consider_common_specifications(C) :-
    commission(C).

required_update_guidelines(C) :-
    commission(C),
    request_from(_Requester),
    deemed_necessary(C).

required_update_guidelines(C) :-
    commission(C),
    own_initiative(C),
    deemed_necessary(C).

provenance(required_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(required_guideline_content/2, 'celex:32024R1689/oj#art_96').
provenance(required_pay_attention_to_needs/2, 'celex:32024R1689/oj#art_96').
provenance(required_consider_state_of_the_art/1, 'celex:32024R1689/oj#art_96').
provenance(required_consider_harmonised_standards/1, 'celex:32024R1689/oj#art_96').
provenance(required_consider_common_specifications/1, 'celex:32024R1689/oj#art_96').
provenance(required_update_guidelines/1, 'celex:32024R1689/oj#art_96').

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

% unit       : celex:32024R1689/oj#art_59
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : gpt-oss:120b-cloud
% prompt sha : 3c0197dce7529c89c97c63320de60d1613f8d27e034541f914958a810703faaa
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred lawfully_collected_for_other_purposes/1, gloss('personal data collected for purposes other than AI sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred in_ai_regulatory_sandbox/1, gloss('AI regulatory sandbox environment'), source('celex:32024R1689/oj#art_59').
:- pred condition_a_applies/2, gloss('condition a satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_b_applies/1, gloss('condition b satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_c_applies/1, gloss('condition c satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_d_applies/1, gloss('condition d satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_e_applies/1, gloss('condition e satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_f_applies/1, gloss('condition f satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_g_applies/1, gloss('condition g satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_h_applies/1, gloss('condition h satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_i_applies/1, gloss('condition i satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred condition_j_applies/1, gloss('condition j satisfied for sandbox processing'), source('celex:32024R1689/oj#art_59').
:- pred based_on_specific_union_or_national_law/2, gloss('processing is based on a specific Union or national law'), source('celex:32024R1689/oj#art_59').

permitted_processing_of_personal_data_in_sandbox(Data) :-
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    in_ai_regulatory_sandbox(Sandbox),
    condition_a_applies(Sandbox, Data),
    condition_b_applies(Data),
    condition_c_applies(Sandbox),
    condition_d_applies(Data),
    condition_e_applies(Data),
    condition_f_applies(Data),
    condition_g_applies(Data),
    condition_h_applies(Sandbox),
    condition_i_applies(Sandbox),
    condition_j_applies(Sandbox).

required_processing_of_personal_data_in_sandbox_for_law_enforcement(Data) :-
    law_enforcement_authority(Authority),
    personal_data(Data),
    in_ai_regulatory_sandbox(Sandbox),
    based_on_specific_union_or_national_law(Authority, Data),
    conditions_paragraph1_met(Data).

conditions_paragraph1_met(Data) :-
    condition_a_applies(_, Data),
    condition_b_applies(Data),
    condition_c_applies(_),
    condition_d_applies(Data),
    condition_e_applies(Data),
    condition_f_applies(Data),
    condition_g_applies(Data),
    condition_h_applies(_),
    condition_i_applies(_),
    condition_j_applies(_).

condition_a_applies(_, _).
condition_b_applies(_).
condition_c_applies(_).
condition_d_applies(_).
condition_e_applies(_).
condition_f_applies(_).
condition_g_applies(_).
condition_h_applies(_).
condition_i_applies(_).
condition_j_applies(_).

provenance(permitted_processing_of_personal_data_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(required_processing_of_personal_data_in_sandbox_for_law_enforcement/1, 'celex:32024R1689/oj#art_59').
provenance(conditions_paragraph1_met/1, 'celex:32024R1689/oj#art_59').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

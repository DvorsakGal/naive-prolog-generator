% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 7cd016290a314f5ecbe2c4ea42425ad176ebf97a4594812196387c21ca20b6c7
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred sme_provider/1, gloss('SME provider including start-ups'), source('celex:32024R1689/oj#art_62').
:- pred has_union_presence/1, gloss('has registered office or branch in the Union'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_priority_sandbox_access/2, gloss('Member State must provide priority access to AI regulatory sandboxes'), source('celex:32024R1689/oj#art_62').
:- pred must_organise_sme_training/2, gloss('Member State must organise awareness raising and training activities'), source('celex:32024R1689/oj#art_62').
:- pred must_establish_communication_channel/2, gloss('Member State must utilise or establish communication channels for advice'), source('celex:32024R1689/oj#art_62').
:- pred must_facilitate_standardisation_participation/2, gloss('Member State must facilitate participation in standardisation development'), source('celex:32024R1689/oj#art_62').
:- pred must_reduce_conformity_assessment_fees/2, gloss('fees for conformity assessment reduced proportionately for SME providers'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_standardised_templates/2, gloss('AI Office must provide standardised templates as specified by Board'), source('celex:32024R1689/oj#art_62').
:- pred must_maintain_information_platform/2, gloss('AI Office must develop and maintain single information platform'), source('celex:32024R1689/oj#art_62').
:- pred must_organise_communication_campaigns/2, gloss('AI Office must organise communication campaigns on obligations'), source('celex:32024R1689/oj#art_62').
:- pred must_promote_procurement_best_practices/2, gloss('AI Office must evaluate and promote convergence of best practices in public procurement'), source('celex:32024R1689/oj#art_62').

must_provide_priority_sandbox_access(MS, S) :-
    member_state(MS),
    sme_provider(S),
    has_union_presence(S),
    fulfils_eligibility_conditions(S),
    fulfils_selection_criteria(S).

must_organise_sme_training(MS, training(application_of_regulation)) :-
    member_state(MS).

must_establish_communication_channel(MS, advice(implementation_of_regulation)) :-
    member_state(MS).

must_facilitate_standardisation_participation(MS, sme_stakeholders) :-
    member_state(MS).

must_reduce_conformity_assessment_fees(_Authority, S) :-
    sme_provider(S).

must_provide_standardised_templates(AIO, templates(specified_by_board)) :-
    ai_office(AIO).

must_maintain_information_platform(AIO, platform(regulation_information)) :-
    ai_office(AIO).

must_organise_communication_campaigns(AIO, campaigns(obligations_under_regulation)) :-
    ai_office(AIO).

must_promote_procurement_best_practices(AIO, public_procurement(ai_systems)) :-
    ai_office(AIO).

provenance(must_provide_priority_sandbox_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_sme_training/2, 'celex:32024R1689/oj#art_62').
provenance(must_establish_communication_channel/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(must_reduce_conformity_assessment_fees/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_maintain_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(must_promote_procurement_best_practices/2, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

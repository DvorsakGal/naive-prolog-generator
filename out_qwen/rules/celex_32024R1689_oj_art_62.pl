% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d9aa72e928024455329f72bcc3a6ec12f1b0c79212feb89bf5a0e805ab74317c
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred sme_provider/1, gloss('SME including start-up that is a provider'), source('celex:32024R1689/oj#art_62').
:- pred sme_deployer/1, gloss('SME including start-up that is a deployer'), source('celex:32024R1689/oj#art_62').
:- pred union_established_sme/1, gloss('SME with registered office or branch in the Union'), source('celex:32024R1689/oj#art_62').
:- pred eligible_for_sandbox/1, gloss('fulfils eligibility conditions and selection criteria for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_priority_sandbox_access(MemberState, Sme), gloss('Member State shall provide SME with priority access to AI regulatory sandboxes'), source('celex:32024R1689/oj#art_62').
:- pred must_organise_sme_training(MemberState, Target), gloss('Member State shall organise awareness raising and training tailored to target'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_communication_channel(MemberState, Stakeholder), gloss('Member State shall utilise or establish communication channels for advice and queries'), source('celex:32024R1689/oj#art_62').
:- pred must_facilitate_standardisation_participation(MemberState, Sme), gloss('Member State shall facilitate participation of SMEs in standardisation development'), source('celex:32024R1689/oj#art_62').
:- pred must_reduce_conformity_assessment_fees(_Authority, Provider), gloss('fees for conformity assessment shall be reduced proportionately for SME providers'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_standardised_templates(AiOffice, Area), gloss('AI Office shall provide standardised templates for specified areas'), source('celex:32024R1689/oj#art_62').
:- pred must_maintain_information_platform(AiOffice, Platform), gloss('AI Office shall develop and maintain single information platform'), source('celex:32024R1689/oj#art_62').
:- pred must_organise_communication_campaign(AiOffice, Campaign), gloss('AI Office shall organise communication campaigns on obligations'), source('celex:32024R1689/oj#art_62').
:- pred must_promote_procurement_convergence(AiOffice, BestPractice), gloss('AI Office shall evaluate and promote convergence of best practices in public procurement'), source('celex:32024R1689/oj#art_62').

sme_provider(P) :-
    provider(P).

sme_deployer(D) :-
    deployer(D).

must_provide_priority_sandbox_access(MS, Sme) :-
    union_established_sme(Sme),
    eligible_for_sandbox(Sme).

must_organise_sme_training(MS, sme_provider(_)).
must_organise_sme_training(MS, sme_deployer(_)).
must_organise_sme_training(MS, local_public_authority).

must_provide_communication_channel(MS, sme_provider(_)).
must_provide_communication_channel(MS, sme_deployer(_)).
must_provide_communication_channel(MS, other_innovator).
must_provide_communication_channel(MS, local_public_authority).

must_reduce_conformity_assessment_fees(_Authority, P) :-
    sme_provider(P).

must_provide_standardised_templates(ai_office, area_covered_by_regulation).

must_maintain_information_platform(ai_office, single_information_platform).

must_organise_communication_campaign(ai_office, obligation_awareness_campaign).

must_promote_procurement_convergence(ai_office, public_procurement_best_practice).

provenance(sme_provider/1, 'celex:32024R1689/oj#art_62').
provenance(sme_deployer/1, 'celex:32024R1689/oj#art_62').
provenance(union_established_sme/1, 'celex:32024R1689/oj#art_62').
provenance(eligible_for_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_sandbox_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_sme_training/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_communication_channel/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(must_reduce_conformity_assessment_fees/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_maintain_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaign/2, 'celex:32024R1689/oj#art_62').
provenance(must_promote_procurement_convergence/2, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

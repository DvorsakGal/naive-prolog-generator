% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 628e3f487d820e0529e8b4b05538324e5b2838f43383a823dc023e30cb7c8034
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred priority_access_to_sandbox/1, gloss('SMEs including start-ups with priority access to AI regulatory sandboxes'), source('celex:32024R1689/oj#art_62').
:- pred eligible_for_sandbox/1, gloss('fulfils eligibility conditions and selection criteria for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred registered_office_or_branch_in_union/1, gloss('has registered office or branch in the Union'), source('celex:32024R1689/oj#art_62').
:- pred specific_awareness_raising_and_training/1, gloss('specific awareness raising and training activities on AI Act application'), source('celex:32024R1689/oj#art_62').
:- pred communication_channels_for_smes/1, gloss('dedicated channels for communication with SMEs and innovators'), source('celex:32024R1689/oj#art_62').
:- pred facilitate_standardisation_participation/0, gloss('facilitate participation of SMEs and stakeholders in standardisation development'), source('celex:32024R1689/oj#art_62').
:- pred fees_proportionate_to_sme_size/0, gloss('conformity assessment fees reduced proportionately to SME size and market size'), source('celex:32024R1689/oj#art_62').
:- pred standardised_templates_provided/0, gloss('standardised templates for areas covered by AI Act'), source('celex:32024R1689/oj#art_62').
:- pred single_information_platform_maintained/0, gloss('single information platform providing easy to use information for all operators'), source('celex:32024R1689/oj#art_62').
:- pred awareness_campaigns_organised/0, gloss('communication campaigns to raise awareness about AI Act obligations'), source('celex:32024R1689/oj#art_62').
:- pred promote_procurement_convergence/0, gloss('evaluate and promote convergence of best practices in public procurement for AI systems'), source('celex:32024R1689/oj#art_62').

priority_access_to_sandbox(Sme) :-
    sme_or_start_up(Sme),
    registered_office_or_branch_in_union(Sme),
    eligible_for_sandbox(Sme).

must_ensure_access(Sme, ai_regulatory_sandbox(Sandbox)) :-
    sme_or_start_up(Sme),
    eligible_for_sandbox(Sme),
    \+ registered_office_or_branch_in_union(Sme).

must_undertake(member_states, awareness_raising_and_training) :-
    specific_awareness_raising_and_training(_).

must_undertake(member_states, communication_channels) :-
    communication_channels_for_smes(_).

must_undertake(member_states, facilitate_standardisation_participation).

must_take_into_account_sme_needs(setting_fees, conformity_assessment_fees).

fees_proportionate_to_sme_size.

must_undertake(ai_office, standardised_templates).

must_undertake(ai_office, single_information_platform).

must_undertake(ai_office, awareness_campaigns).

must_undertake(ai_office, promote_procurement_convergence).

provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_ensure_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_undertake/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account_sme_needs/2, 'celex:32024R1689/oj#art_62').
provenance(fees_proportionate_to_sme_size/0, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

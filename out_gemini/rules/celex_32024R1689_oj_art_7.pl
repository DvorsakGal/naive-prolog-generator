% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b899ab6da1954eff8dcff37cead031b96874c36e5966948fddcdcb552890a41e
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred permitted_amendment_by_addition/1, gloss('Amendment to Annex III by adding or modifying high-risk AI system use-cases is permitted'), source('celex:32024R1689/oj#art_7').
:- pred permitted_amendment_by_removal/1, gloss('Amendment to Annex III by removing high-risk AI systems is permitted'), source('celex:32024R1689/oj#art_7').
:- pred intended_in_annex_3_area/1, gloss('AI system is intended to be used in any area listed in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred poses_equivalent_or_greater_risk/1, gloss('AI system poses risk of harm to health/safety or adverse impact on fundamental rights equivalent to or greater than Annex III systems'), source('celex:32024R1689/oj#art_7').
:- pred no_longer_poses_significant_risk/1, gloss('High-risk AI system no longer poses significant risks to fundamental rights, health or safety'), source('celex:32024R1689/oj#art_7').
:- pred maintains_overall_protection_level/1, gloss('Deletion of high-risk AI system does not decrease overall level of protection under Union law'), source('celex:32024R1689/oj#art_7').
:- pred must_assess_criterion/2, gloss('Commission must assess criterion when evaluating risk equivalence for Annex III amendment'), source('celex:32024R1689/oj#art_7').

% Paragraph 1: Empowered to adopt delegated acts to add or modify use-cases
permitted_amendment_by_addition(System) :-
    ai_system(System),
    intended_in_annex_3_area(System),
    poses_equivalent_or_greater_risk(System).

% Paragraph 2: Assessment criteria that the Commission must consider
must_assess_criterion(commission, intended_purpose).
must_assess_criterion(commission, extent_of_use).
must_assess_criterion(commission, nature_and_amount_of_data_processed).
must_assess_criterion(commission, autonomy_and_human_override_possibility).
must_assess_criterion(commission, historical_harm_or_significant_concerns).
must_assess_criterion(commission, potential_extent_and_intensity_of_harm).
must_assess_criterion(commission, dependency_on_outcome).
must_assess_criterion(commission, imbalance_of_power_or_vulnerability).
must_assess_criterion(commission, reversibility_or_corrigibility_of_outcome).
must_assess_criterion(commission, magnitude_and_likelihood_of_benefit).
must_assess_criterion(commission, effective_redress_measures_in_union_law).
must_assess_criterion(commission, effective_prevention_measures_in_union_law).

% Paragraph 3: Empowered to adopt delegated acts to remove high-risk AI systems
permitted_amendment_by_removal(System) :-
    ai_system(System),
    no_longer_poses_significant_risk(System),
    maintains_overall_protection_level(System).

provenance(permitted_amendment_by_addition/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_amendment_by_removal/1, 'celex:32024R1689/oj#art_7').
provenance(must_assess_criterion/2, 'celex:32024R1689/oj#art_7').

references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

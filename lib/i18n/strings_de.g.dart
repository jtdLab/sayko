///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsDe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsFeaturesDe features = _TranslationsFeaturesDe._(_root);
	@override late final _TranslationsUtilsDe utils = _TranslationsUtilsDe._(_root);
}

// Path: features
class _TranslationsFeaturesDe extends TranslationsFeaturesEn {
	_TranslationsFeaturesDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesAccountCreateDe accountCreate = _TranslationsFeaturesAccountCreateDe._(_root);
	@override late final _TranslationsFeaturesAssessmentDe assessment = _TranslationsFeaturesAssessmentDe._(_root);
	@override late final _TranslationsFeaturesAuthDe auth = _TranslationsFeaturesAuthDe._(_root);
	@override late final _TranslationsFeaturesDeleteAccountConfirmDe deleteAccountConfirm = _TranslationsFeaturesDeleteAccountConfirmDe._(_root);
	@override late final _TranslationsFeaturesHomeDe home = _TranslationsFeaturesHomeDe._(_root);
	@override late final _TranslationsFeaturesLaunchpadDe launchpad = _TranslationsFeaturesLaunchpadDe._(_root);
	@override late final _TranslationsFeaturesLibraryDe library = _TranslationsFeaturesLibraryDe._(_root);
	@override late final _TranslationsFeaturesLoginDe login = _TranslationsFeaturesLoginDe._(_root);
	@override late final _TranslationsFeaturesLoginPasswordDe loginPassword = _TranslationsFeaturesLoginPasswordDe._(_root);
	@override late final _TranslationsFeaturesLogoutConfirmDe logoutConfirm = _TranslationsFeaturesLogoutConfirmDe._(_root);
	@override late final _TranslationsFeaturesNotFoundDe notFound = _TranslationsFeaturesNotFoundDe._(_root);
	@override late final _TranslationsFeaturesPasswordResetDe passwordReset = _TranslationsFeaturesPasswordResetDe._(_root);
	@override late final _TranslationsFeaturesPaywallDe paywall = _TranslationsFeaturesPaywallDe._(_root);
	@override late final _TranslationsFeaturesPlayerDe player = _TranslationsFeaturesPlayerDe._(_root);
	@override late final _TranslationsFeaturesProfileDe profile = _TranslationsFeaturesProfileDe._(_root);
	@override late final _TranslationsFeaturesResultsDe results = _TranslationsFeaturesResultsDe._(_root);
	@override late final _TranslationsFeaturesSafetyBlockedDe safetyBlocked = _TranslationsFeaturesSafetyBlockedDe._(_root);
	@override late final _TranslationsFeaturesSafetyCheckDe safetyCheck = _TranslationsFeaturesSafetyCheckDe._(_root);
	@override late final _TranslationsFeaturesSettingsDe settings = _TranslationsFeaturesSettingsDe._(_root);
	@override late final _TranslationsFeaturesSettingsAppearanceDe settingsAppearance = _TranslationsFeaturesSettingsAppearanceDe._(_root);
	@override late final _TranslationsFeaturesSettingsSystemLanguageDe settingsSystemLanguage = _TranslationsFeaturesSettingsSystemLanguageDe._(_root);
	@override late final _TranslationsFeaturesSignUpDe signUp = _TranslationsFeaturesSignUpDe._(_root);
	@override late final _TranslationsFeaturesSignUpPasswordDe signUpPassword = _TranslationsFeaturesSignUpPasswordDe._(_root);
	@override late final _TranslationsFeaturesTodayDe today = _TranslationsFeaturesTodayDe._(_root);
	@override late final _TranslationsFeaturesVerifyEmailDe verifyEmail = _TranslationsFeaturesVerifyEmailDe._(_root);
	@override late final _TranslationsFeaturesWelcomeDe welcome = _TranslationsFeaturesWelcomeDe._(_root);
}

// Path: utils
class _TranslationsUtilsDe extends TranslationsUtilsEn {
	_TranslationsUtilsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUtilsDomainDe domain = _TranslationsUtilsDomainDe._(_root);
	@override late final _TranslationsUtilsLocaleDe locale = _TranslationsUtilsLocaleDe._(_root);
}

// Path: features.accountCreate
class _TranslationsFeaturesAccountCreateDe extends TranslationsFeaturesAccountCreateEn {
	_TranslationsFeaturesAccountCreateDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesAccountCreateCreateButtonDe createButton = _TranslationsFeaturesAccountCreateCreateButtonDe._(_root);
	@override String get failedToCreateAccount => 'Konto konnte nicht erstellt werden';
	@override late final _TranslationsFeaturesAccountCreateHeaderDe header = _TranslationsFeaturesAccountCreateHeaderDe._(_root);
	@override late final _TranslationsFeaturesAccountCreateNameFieldDe nameField = _TranslationsFeaturesAccountCreateNameFieldDe._(_root);
	@override late final _TranslationsFeaturesAccountCreatePrivacyItemDe privacyItem = _TranslationsFeaturesAccountCreatePrivacyItemDe._(_root);
	@override late final _TranslationsFeaturesAccountCreateRequiredBadgeDe requiredBadge = _TranslationsFeaturesAccountCreateRequiredBadgeDe._(_root);
	@override late final _TranslationsFeaturesAccountCreateTermsItemDe termsItem = _TranslationsFeaturesAccountCreateTermsItemDe._(_root);
}

// Path: features.assessment
class _TranslationsFeaturesAssessmentDe extends TranslationsFeaturesAssessmentEn {
	_TranslationsFeaturesAssessmentDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesAssessmentHeaderDe header = _TranslationsFeaturesAssessmentHeaderDe._(_root);
	@override late final _TranslationsFeaturesAssessmentFooterDe footer = _TranslationsFeaturesAssessmentFooterDe._(_root);
	@override late final _TranslationsFeaturesAssessmentLikertDe likert = _TranslationsFeaturesAssessmentLikertDe._(_root);
}

// Path: features.auth
class _TranslationsFeaturesAuthDe extends TranslationsFeaturesAuthEn {
	_TranslationsFeaturesAuthDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesAuthLoginButtonDe loginButton = _TranslationsFeaturesAuthLoginButtonDe._(_root);
	@override late final _TranslationsFeaturesAuthSignUpButtonDe signUpButton = _TranslationsFeaturesAuthSignUpButtonDe._(_root);
	@override late final _TranslationsFeaturesAuthTitleDe title = _TranslationsFeaturesAuthTitleDe._(_root);
}

// Path: features.deleteAccountConfirm
class _TranslationsFeaturesDeleteAccountConfirmDe extends TranslationsFeaturesDeleteAccountConfirmEn {
	_TranslationsFeaturesDeleteAccountConfirmDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesDeleteAccountConfirmCancelButtonDe cancelButton = _TranslationsFeaturesDeleteAccountConfirmCancelButtonDe._(_root);
	@override late final _TranslationsFeaturesDeleteAccountConfirmConfirmButtonDe confirmButton = _TranslationsFeaturesDeleteAccountConfirmConfirmButtonDe._(_root);
	@override String get subtitle => 'Diese Aktion kann nicht rückgängig gemacht werden. Ihr Konto und alle Daten werden dauerhaft gelöscht.';
	@override String get title => 'Konto löschen?';
}

// Path: features.home
class _TranslationsFeaturesHomeDe extends TranslationsFeaturesHomeEn {
	_TranslationsFeaturesHomeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesHomeHeaderDe header = _TranslationsFeaturesHomeHeaderDe._(_root);
}

// Path: features.launchpad
class _TranslationsFeaturesLaunchpadDe extends TranslationsFeaturesLaunchpadEn {
	_TranslationsFeaturesLaunchpadDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesLaunchpadBottomNavigationBarDe bottomNavigationBar = _TranslationsFeaturesLaunchpadBottomNavigationBarDe._(_root);
}

// Path: features.library
class _TranslationsFeaturesLibraryDe extends TranslationsFeaturesLibraryEn {
	_TranslationsFeaturesLibraryDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesLibraryHeaderDe header = _TranslationsFeaturesLibraryHeaderDe._(_root);
	@override late final _TranslationsFeaturesLibraryFilterAllDe filterAll = _TranslationsFeaturesLibraryFilterAllDe._(_root);
	@override late final _TranslationsFeaturesLibraryFilterStressDe filterStress = _TranslationsFeaturesLibraryFilterStressDe._(_root);
	@override late final _TranslationsFeaturesLibraryFilterSleepDe filterSleep = _TranslationsFeaturesLibraryFilterSleepDe._(_root);
	@override late final _TranslationsFeaturesLibraryFilterSelfDe filterSelf = _TranslationsFeaturesLibraryFilterSelfDe._(_root);
	@override late final _TranslationsFeaturesLibraryFilterRelationsDe filterRelations = _TranslationsFeaturesLibraryFilterRelationsDe._(_root);
	@override late final _TranslationsFeaturesLibraryFilterFocusDe filterFocus = _TranslationsFeaturesLibraryFilterFocusDe._(_root);
	@override late final _TranslationsFeaturesLibraryFilterBodyDe filterBody = _TranslationsFeaturesLibraryFilterBodyDe._(_root);
	@override late final _TranslationsFeaturesLibraryTodayPickDe todayPick = _TranslationsFeaturesLibraryTodayPickDe._(_root);
	@override late final _TranslationsFeaturesLibraryFreeBadgeDe freeBadge = _TranslationsFeaturesLibraryFreeBadgeDe._(_root);
	@override late final _TranslationsFeaturesLibraryAllSessionsDe allSessions = _TranslationsFeaturesLibraryAllSessionsDe._(_root);
}

// Path: features.login
class _TranslationsFeaturesLoginDe extends TranslationsFeaturesLoginEn {
	_TranslationsFeaturesLoginDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesLoginAppleButtonDe appleButton = _TranslationsFeaturesLoginAppleButtonDe._(_root);
	@override late final _TranslationsFeaturesLoginDontHaveAnAccountDe dontHaveAnAccount = _TranslationsFeaturesLoginDontHaveAnAccountDe._(_root);
	@override late final _TranslationsFeaturesLoginEmailButtonDe emailButton = _TranslationsFeaturesLoginEmailButtonDe._(_root);
	@override late final _TranslationsFeaturesLoginGoogleButtonDe googleButton = _TranslationsFeaturesLoginGoogleButtonDe._(_root);
	@override late final _TranslationsFeaturesLoginSignUpLinkDe signUpLink = _TranslationsFeaturesLoginSignUpLinkDe._(_root);
	@override late final _TranslationsFeaturesLoginTitleDe title = _TranslationsFeaturesLoginTitleDe._(_root);
}

// Path: features.loginPassword
class _TranslationsFeaturesLoginPasswordDe extends TranslationsFeaturesLoginPasswordEn {
	_TranslationsFeaturesLoginPasswordDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesLoginPasswordEmailFieldDe emailField = _TranslationsFeaturesLoginPasswordEmailFieldDe._(_root);
	@override String get failedToSignIn => 'Anmeldung fehlgeschlagen';
	@override late final _TranslationsFeaturesLoginPasswordHeaderDe header = _TranslationsFeaturesLoginPasswordHeaderDe._(_root);
	@override late final _TranslationsFeaturesLoginPasswordPasswordFieldDe passwordField = _TranslationsFeaturesLoginPasswordPasswordFieldDe._(_root);
	@override late final _TranslationsFeaturesLoginPasswordPasswordResetLinkDe passwordResetLink = _TranslationsFeaturesLoginPasswordPasswordResetLinkDe._(_root);
	@override late final _TranslationsFeaturesLoginPasswordSignInButtonDe signInButton = _TranslationsFeaturesLoginPasswordSignInButtonDe._(_root);
}

// Path: features.logoutConfirm
class _TranslationsFeaturesLogoutConfirmDe extends TranslationsFeaturesLogoutConfirmEn {
	_TranslationsFeaturesLogoutConfirmDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesLogoutConfirmCancelButtonDe cancelButton = _TranslationsFeaturesLogoutConfirmCancelButtonDe._(_root);
	@override late final _TranslationsFeaturesLogoutConfirmConfirmButtonDe confirmButton = _TranslationsFeaturesLogoutConfirmConfirmButtonDe._(_root);
	@override String get title => 'Abmelden?';
}

// Path: features.notFound
class _TranslationsFeaturesNotFoundDe extends TranslationsFeaturesNotFoundEn {
	_TranslationsFeaturesNotFoundDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesNotFoundBodyDe body = _TranslationsFeaturesNotFoundBodyDe._(_root);
	@override late final _TranslationsFeaturesNotFoundGoHomeButtonDe goHomeButton = _TranslationsFeaturesNotFoundGoHomeButtonDe._(_root);
}

// Path: features.passwordReset
class _TranslationsFeaturesPasswordResetDe extends TranslationsFeaturesPasswordResetEn {
	_TranslationsFeaturesPasswordResetDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesPasswordResetButtonDe button = _TranslationsFeaturesPasswordResetButtonDe._(_root);
	@override late final _TranslationsFeaturesPasswordResetContactSupportButtonDe contactSupportButton = _TranslationsFeaturesPasswordResetContactSupportButtonDe._(_root);
	@override late final _TranslationsFeaturesPasswordResetEmailFieldDe emailField = _TranslationsFeaturesPasswordResetEmailFieldDe._(_root);
	@override String get failedToSendPasswordResetEmail => 'E-Mail zum Zurücksetzen des Passworts konnte nicht gesendet werden';
	@override late final _TranslationsFeaturesPasswordResetHeaderDe header = _TranslationsFeaturesPasswordResetHeaderDe._(_root);
	@override late final _TranslationsFeaturesPasswordResetHelpPromptDe helpPrompt = _TranslationsFeaturesPasswordResetHelpPromptDe._(_root);
	@override String get sendPasswordResetEmailSucceeded => 'Prüfen Sie Ihren Posteingang auf den Link zum Zurücksetzen';
}

// Path: features.paywall
class _TranslationsFeaturesPaywallDe extends TranslationsFeaturesPaywallEn {
	_TranslationsFeaturesPaywallDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesPaywallHeaderDe header = _TranslationsFeaturesPaywallHeaderDe._(_root);
	@override late final _TranslationsFeaturesPaywallAnnualPlanDe annualPlan = _TranslationsFeaturesPaywallAnnualPlanDe._(_root);
	@override late final _TranslationsFeaturesPaywallSinglePlanDe singlePlan = _TranslationsFeaturesPaywallSinglePlanDe._(_root);
	@override late final _TranslationsFeaturesPaywallFeature1De feature1 = _TranslationsFeaturesPaywallFeature1De._(_root);
	@override late final _TranslationsFeaturesPaywallFeature2De feature2 = _TranslationsFeaturesPaywallFeature2De._(_root);
	@override late final _TranslationsFeaturesPaywallFeature3De feature3 = _TranslationsFeaturesPaywallFeature3De._(_root);
	@override late final _TranslationsFeaturesPaywallFeature4De feature4 = _TranslationsFeaturesPaywallFeature4De._(_root);
	@override late final _TranslationsFeaturesPaywallSubscribeButtonDe subscribeButton = _TranslationsFeaturesPaywallSubscribeButtonDe._(_root);
	@override late final _TranslationsFeaturesPaywallRedeemButtonDe redeemButton = _TranslationsFeaturesPaywallRedeemButtonDe._(_root);
}

// Path: features.player
class _TranslationsFeaturesPlayerDe extends TranslationsFeaturesPlayerEn {
	_TranslationsFeaturesPlayerDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesPlayerNowPlayingDe nowPlaying = _TranslationsFeaturesPlayerNowPlayingDe._(_root);
}

// Path: features.profile
class _TranslationsFeaturesProfileDe extends TranslationsFeaturesProfileEn {
	_TranslationsFeaturesProfileDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesProfileHeaderDe header = _TranslationsFeaturesProfileHeaderDe._(_root);
	@override late final _TranslationsFeaturesProfileYourProfileDe yourProfile = _TranslationsFeaturesProfileYourProfileDe._(_root);
	@override late final _TranslationsFeaturesProfileRedoButtonDe redoButton = _TranslationsFeaturesProfileRedoButtonDe._(_root);
	@override late final _TranslationsFeaturesProfileSavedRowDe savedRow = _TranslationsFeaturesProfileSavedRowDe._(_root);
	@override late final _TranslationsFeaturesProfileOfflineRowDe offlineRow = _TranslationsFeaturesProfileOfflineRowDe._(_root);
	@override late final _TranslationsFeaturesProfileLanguageRowDe languageRow = _TranslationsFeaturesProfileLanguageRowDe._(_root);
	@override late final _TranslationsFeaturesProfilePrivacyRowDe privacyRow = _TranslationsFeaturesProfilePrivacyRowDe._(_root);
	@override late final _TranslationsFeaturesProfileSettingsRowDe settingsRow = _TranslationsFeaturesProfileSettingsRowDe._(_root);
	@override late final _TranslationsFeaturesProfileFooterDe footer = _TranslationsFeaturesProfileFooterDe._(_root);
}

// Path: features.results
class _TranslationsFeaturesResultsDe extends TranslationsFeaturesResultsEn {
	_TranslationsFeaturesResultsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesResultsHeaderDe header = _TranslationsFeaturesResultsHeaderDe._(_root);
	@override late final _TranslationsFeaturesResultsStrengthsDe strengths = _TranslationsFeaturesResultsStrengthsDe._(_root);
	@override late final _TranslationsFeaturesResultsGrowthDe growth = _TranslationsFeaturesResultsGrowthDe._(_root);
	@override late final _TranslationsFeaturesResultsRecommendedDe recommended = _TranslationsFeaturesResultsRecommendedDe._(_root);
	@override late final _TranslationsFeaturesResultsContinueButtonDe continueButton = _TranslationsFeaturesResultsContinueButtonDe._(_root);
	@override late final _TranslationsFeaturesResultsSavePdfButtonDe savePdfButton = _TranslationsFeaturesResultsSavePdfButtonDe._(_root);
}

// Path: features.safetyBlocked
class _TranslationsFeaturesSafetyBlockedDe extends TranslationsFeaturesSafetyBlockedEn {
	_TranslationsFeaturesSafetyBlockedDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesSafetyBlockedHeaderDe header = _TranslationsFeaturesSafetyBlockedHeaderDe._(_root);
	@override late final _TranslationsFeaturesSafetyBlockedAcuteHelpDe acuteHelp = _TranslationsFeaturesSafetyBlockedAcuteHelpDe._(_root);
	@override late final _TranslationsFeaturesSafetyBlockedContactSeelsorgeDe contactSeelsorge = _TranslationsFeaturesSafetyBlockedContactSeelsorgeDe._(_root);
	@override late final _TranslationsFeaturesSafetyBlockedContactEmergencyDe contactEmergency = _TranslationsFeaturesSafetyBlockedContactEmergencyDe._(_root);
	@override late final _TranslationsFeaturesSafetyBlockedContactKrisenchatDe contactKrisenchat = _TranslationsFeaturesSafetyBlockedContactKrisenchatDe._(_root);
	@override late final _TranslationsFeaturesSafetyBlockedBackButtonDe backButton = _TranslationsFeaturesSafetyBlockedBackButtonDe._(_root);
}

// Path: features.safetyCheck
class _TranslationsFeaturesSafetyCheckDe extends TranslationsFeaturesSafetyCheckEn {
	_TranslationsFeaturesSafetyCheckDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesSafetyCheckHeaderDe header = _TranslationsFeaturesSafetyCheckHeaderDe._(_root);
	@override late final _TranslationsFeaturesSafetyCheckQuestion1De question1 = _TranslationsFeaturesSafetyCheckQuestion1De._(_root);
	@override late final _TranslationsFeaturesSafetyCheckQuestion2De question2 = _TranslationsFeaturesSafetyCheckQuestion2De._(_root);
	@override late final _TranslationsFeaturesSafetyCheckQuestion3De question3 = _TranslationsFeaturesSafetyCheckQuestion3De._(_root);
	@override late final _TranslationsFeaturesSafetyCheckQuestion4De question4 = _TranslationsFeaturesSafetyCheckQuestion4De._(_root);
	@override late final _TranslationsFeaturesSafetyCheckQuestion5De question5 = _TranslationsFeaturesSafetyCheckQuestion5De._(_root);
	@override late final _TranslationsFeaturesSafetyCheckYesButtonDe yesButton = _TranslationsFeaturesSafetyCheckYesButtonDe._(_root);
	@override late final _TranslationsFeaturesSafetyCheckNoButtonDe noButton = _TranslationsFeaturesSafetyCheckNoButtonDe._(_root);
	@override late final _TranslationsFeaturesSafetyCheckConfirmButtonDe confirmButton = _TranslationsFeaturesSafetyCheckConfirmButtonDe._(_root);
	@override late final _TranslationsFeaturesSafetyCheckFooterDe footer = _TranslationsFeaturesSafetyCheckFooterDe._(_root);
}

// Path: features.settings
class _TranslationsFeaturesSettingsDe extends TranslationsFeaturesSettingsEn {
	_TranslationsFeaturesSettingsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesSettingsAppSectionDe appSection = _TranslationsFeaturesSettingsAppSectionDe._(_root);
	@override late final _TranslationsFeaturesSettingsAppSectionTileAppearanceDe appSectionTileAppearance = _TranslationsFeaturesSettingsAppSectionTileAppearanceDe._(_root);
	@override late final _TranslationsFeaturesSettingsAppSectionTileSystemLanguageDe appSectionTileSystemLanguage = _TranslationsFeaturesSettingsAppSectionTileSystemLanguageDe._(_root);
	@override late final _TranslationsFeaturesSettingsDeleteAccountButtonDe deleteAccountButton = _TranslationsFeaturesSettingsDeleteAccountButtonDe._(_root);
	@override late final _TranslationsFeaturesSettingsHeaderDe header = _TranslationsFeaturesSettingsHeaderDe._(_root);
	@override late final _TranslationsFeaturesSettingsLegalSectionDe legalSection = _TranslationsFeaturesSettingsLegalSectionDe._(_root);
	@override late final _TranslationsFeaturesSettingsLegalSectionTileDe legalSectionTile = _TranslationsFeaturesSettingsLegalSectionTileDe._(_root);
	@override late final _TranslationsFeaturesSettingsSignOutButtonDe signOutButton = _TranslationsFeaturesSettingsSignOutButtonDe._(_root);
	@override late final _TranslationsFeaturesSettingsVersionDe version = _TranslationsFeaturesSettingsVersionDe._(_root);
}

// Path: features.settingsAppearance
class _TranslationsFeaturesSettingsAppearanceDe extends TranslationsFeaturesSettingsAppearanceEn {
	_TranslationsFeaturesSettingsAppearanceDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesSettingsAppearanceHeaderDe header = _TranslationsFeaturesSettingsAppearanceHeaderDe._(_root);
}

// Path: features.settingsSystemLanguage
class _TranslationsFeaturesSettingsSystemLanguageDe extends TranslationsFeaturesSettingsSystemLanguageEn {
	_TranslationsFeaturesSettingsSystemLanguageDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesSettingsSystemLanguageHeaderDe header = _TranslationsFeaturesSettingsSystemLanguageHeaderDe._(_root);
}

// Path: features.signUp
class _TranslationsFeaturesSignUpDe extends TranslationsFeaturesSignUpEn {
	_TranslationsFeaturesSignUpDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesSignUpAlreadyHaveAnAccountDe alreadyHaveAnAccount = _TranslationsFeaturesSignUpAlreadyHaveAnAccountDe._(_root);
	@override late final _TranslationsFeaturesSignUpAppleButtonDe appleButton = _TranslationsFeaturesSignUpAppleButtonDe._(_root);
	@override late final _TranslationsFeaturesSignUpEmailButtonDe emailButton = _TranslationsFeaturesSignUpEmailButtonDe._(_root);
	@override late final _TranslationsFeaturesSignUpGoogleButtonDe googleButton = _TranslationsFeaturesSignUpGoogleButtonDe._(_root);
	@override late final _TranslationsFeaturesSignUpLogInLinkDe logInLink = _TranslationsFeaturesSignUpLogInLinkDe._(_root);
	@override late final _TranslationsFeaturesSignUpTitleDe title = _TranslationsFeaturesSignUpTitleDe._(_root);
}

// Path: features.signUpPassword
class _TranslationsFeaturesSignUpPasswordDe extends TranslationsFeaturesSignUpPasswordEn {
	_TranslationsFeaturesSignUpPasswordDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesSignUpPasswordEmailButtonDe emailButton = _TranslationsFeaturesSignUpPasswordEmailButtonDe._(_root);
	@override late final _TranslationsFeaturesSignUpPasswordEmailFieldDe emailField = _TranslationsFeaturesSignUpPasswordEmailFieldDe._(_root);
	@override String get failedToSignUp => 'Konto konnte nicht erstellt werden';
	@override late final _TranslationsFeaturesSignUpPasswordHeaderDe header = _TranslationsFeaturesSignUpPasswordHeaderDe._(_root);
	@override late final _TranslationsFeaturesSignUpPasswordPasswordButtonDe passwordButton = _TranslationsFeaturesSignUpPasswordPasswordButtonDe._(_root);
	@override late final _TranslationsFeaturesSignUpPasswordPasswordFieldDe passwordField = _TranslationsFeaturesSignUpPasswordPasswordFieldDe._(_root);
}

// Path: features.today
class _TranslationsFeaturesTodayDe extends TranslationsFeaturesTodayEn {
	_TranslationsFeaturesTodayDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesTodayHeaderDe header = _TranslationsFeaturesTodayHeaderDe._(_root);
	@override late final _TranslationsFeaturesTodayAssessmentBannerDe assessmentBanner = _TranslationsFeaturesTodayAssessmentBannerDe._(_root);
	@override late final _TranslationsFeaturesTodayFeaturedCardDe featuredCard = _TranslationsFeaturesTodayFeaturedCardDe._(_root);
	@override late final _TranslationsFeaturesTodayAiRecLabelDe aiRecLabel = _TranslationsFeaturesTodayAiRecLabelDe._(_root);
	@override late final _TranslationsFeaturesTodayPracticeNoteDe practiceNote = _TranslationsFeaturesTodayPracticeNoteDe._(_root);
}

// Path: features.verifyEmail
class _TranslationsFeaturesVerifyEmailDe extends TranslationsFeaturesVerifyEmailEn {
	_TranslationsFeaturesVerifyEmailDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesVerifyEmailBodyDe body = _TranslationsFeaturesVerifyEmailBodyDe._(_root);
	@override late final _TranslationsFeaturesVerifyEmailHeaderDe header = _TranslationsFeaturesVerifyEmailHeaderDe._(_root);
	@override late final _TranslationsFeaturesVerifyEmailSendButtonDe sendButton = _TranslationsFeaturesVerifyEmailSendButtonDe._(_root);
	@override String get sendVerifyEmailFailed => 'Verifizierungs-E-Mail konnte nicht gesendet werden';
}

// Path: features.welcome
class _TranslationsFeaturesWelcomeDe extends TranslationsFeaturesWelcomeEn {
	_TranslationsFeaturesWelcomeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesWelcomeSlide1De slide1 = _TranslationsFeaturesWelcomeSlide1De._(_root);
	@override late final _TranslationsFeaturesWelcomeSlide2De slide2 = _TranslationsFeaturesWelcomeSlide2De._(_root);
	@override late final _TranslationsFeaturesWelcomeSlide3De slide3 = _TranslationsFeaturesWelcomeSlide3De._(_root);
	@override late final _TranslationsFeaturesWelcomeContinueButtonDe continueButton = _TranslationsFeaturesWelcomeContinueButtonDe._(_root);
	@override late final _TranslationsFeaturesWelcomeBeginButtonDe beginButton = _TranslationsFeaturesWelcomeBeginButtonDe._(_root);
	@override late final _TranslationsFeaturesWelcomeSkipButtonDe skipButton = _TranslationsFeaturesWelcomeSkipButtonDe._(_root);
}

// Path: utils.domain
class _TranslationsUtilsDomainDe extends TranslationsUtilsDomainEn {
	_TranslationsUtilsDomainDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUtilsDomainAppDataDe appData = _TranslationsUtilsDomainAppDataDe._(_root);
}

// Path: utils.locale
class _TranslationsUtilsLocaleDe extends TranslationsUtilsLocaleEn {
	_TranslationsUtilsLocaleDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUtilsLocaleDeDe de = _TranslationsUtilsLocaleDeDe._(_root);
	@override late final _TranslationsUtilsLocaleEnDe en = _TranslationsUtilsLocaleEnDe._(_root);
}

// Path: features.accountCreate.createButton
class _TranslationsFeaturesAccountCreateCreateButtonDe extends TranslationsFeaturesAccountCreateCreateButtonEn {
	_TranslationsFeaturesAccountCreateCreateButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Konto erstellen';
}

// Path: features.accountCreate.header
class _TranslationsFeaturesAccountCreateHeaderDe extends TranslationsFeaturesAccountCreateHeaderEn {
	_TranslationsFeaturesAccountCreateHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konto erstellen';
}

// Path: features.accountCreate.nameField
class _TranslationsFeaturesAccountCreateNameFieldDe extends TranslationsFeaturesAccountCreateNameFieldEn {
	_TranslationsFeaturesAccountCreateNameFieldDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Wie sollen wir Sie nennen?';
	@override String get label => 'Name';
}

// Path: features.accountCreate.privacyItem
class _TranslationsFeaturesAccountCreatePrivacyItemDe extends TranslationsFeaturesAccountCreatePrivacyItemEn {
	_TranslationsFeaturesAccountCreatePrivacyItemDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Datenschutzrichtlinie lesen';
	@override String get label => 'Ich habe die Datenschutzrichtlinie gelesen';
}

// Path: features.accountCreate.requiredBadge
class _TranslationsFeaturesAccountCreateRequiredBadgeDe extends TranslationsFeaturesAccountCreateRequiredBadgeEn {
	_TranslationsFeaturesAccountCreateRequiredBadgeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Pflichtfeld';
}

// Path: features.accountCreate.termsItem
class _TranslationsFeaturesAccountCreateTermsItemDe extends TranslationsFeaturesAccountCreateTermsItemEn {
	_TranslationsFeaturesAccountCreateTermsItemDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Nutzungsbedingungen lesen';
	@override String get label => 'Ich stimme den Nutzungsbedingungen zu';
}

// Path: features.assessment.header
class _TranslationsFeaturesAssessmentHeaderDe extends TranslationsFeaturesAssessmentHeaderEn {
	_TranslationsFeaturesAssessmentHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get axisStress => 'Stressreaktion';
	@override String get axisSleep => 'Ruhe & Schlaf';
	@override String get axisSelf => 'Selbstbeziehung';
	@override String get axisFocus => 'Fokus & Durchhalten';
	@override String get axisRelations => 'Beziehungen';
	@override String get axisBody => 'Körperwahrnehmung';
}

// Path: features.assessment.footer
class _TranslationsFeaturesAssessmentFooterDe extends TranslationsFeaturesAssessmentFooterEn {
	_TranslationsFeaturesAssessmentFooterDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Es gibt keine richtigen Antworten.';
}

// Path: features.assessment.likert
class _TranslationsFeaturesAssessmentLikertDe extends TranslationsFeaturesAssessmentLikertEn {
	_TranslationsFeaturesAssessmentLikertDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get disagree => 'Stimme nicht zu';
	@override String get agree => 'Stimme zu';
	@override String get hint => 'Tippe einen Kreis zum Antworten';
	@override String get stronglyDisagree => 'Stimme gar nicht zu';
	@override String get neutral => 'Neutral';
	@override String get stronglyAgree => 'Stimme voll zu';
}

// Path: features.auth.loginButton
class _TranslationsFeaturesAuthLoginButtonDe extends TranslationsFeaturesAuthLoginButtonEn {
	_TranslationsFeaturesAuthLoginButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anmelden';
}

// Path: features.auth.signUpButton
class _TranslationsFeaturesAuthSignUpButtonDe extends TranslationsFeaturesAuthSignUpButtonEn {
	_TranslationsFeaturesAuthSignUpButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kostenlos registrieren';
}

// Path: features.auth.title
class _TranslationsFeaturesAuthTitleDe extends TranslationsFeaturesAuthTitleEn {
	_TranslationsFeaturesAuthTitleDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Finde deine Ruhe.\n Mit sayko.';
}

// Path: features.deleteAccountConfirm.cancelButton
class _TranslationsFeaturesDeleteAccountConfirmCancelButtonDe extends TranslationsFeaturesDeleteAccountConfirmCancelButtonEn {
	_TranslationsFeaturesDeleteAccountConfirmCancelButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Abbrechen';
}

// Path: features.deleteAccountConfirm.confirmButton
class _TranslationsFeaturesDeleteAccountConfirmConfirmButtonDe extends TranslationsFeaturesDeleteAccountConfirmConfirmButtonEn {
	_TranslationsFeaturesDeleteAccountConfirmConfirmButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Konto löschen';
}

// Path: features.home.header
class _TranslationsFeaturesHomeHeaderDe extends TranslationsFeaturesHomeHeaderEn {
	_TranslationsFeaturesHomeHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Start';
}

// Path: features.launchpad.bottomNavigationBar
class _TranslationsFeaturesLaunchpadBottomNavigationBarDe extends TranslationsFeaturesLaunchpadBottomNavigationBarEn {
	_TranslationsFeaturesLaunchpadBottomNavigationBarDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get today => 'Heute';
	@override String get library => 'Bibliothek';
	@override String get profile => 'Profil';
	@override String get home => 'Start';
	@override String get settings => 'Einstellungen';
}

// Path: features.library.header
class _TranslationsFeaturesLibraryHeaderDe extends TranslationsFeaturesLibraryHeaderEn {
	_TranslationsFeaturesLibraryHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get eyebrow => 'Bibliothek';
	@override String get title => 'Was brauchst du heute?';
}

// Path: features.library.filterAll
class _TranslationsFeaturesLibraryFilterAllDe extends TranslationsFeaturesLibraryFilterAllEn {
	_TranslationsFeaturesLibraryFilterAllDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Alle';
}

// Path: features.library.filterStress
class _TranslationsFeaturesLibraryFilterStressDe extends TranslationsFeaturesLibraryFilterStressEn {
	_TranslationsFeaturesLibraryFilterStressDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Stress';
}

// Path: features.library.filterSleep
class _TranslationsFeaturesLibraryFilterSleepDe extends TranslationsFeaturesLibraryFilterSleepEn {
	_TranslationsFeaturesLibraryFilterSleepDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Schlaf';
}

// Path: features.library.filterSelf
class _TranslationsFeaturesLibraryFilterSelfDe extends TranslationsFeaturesLibraryFilterSelfEn {
	_TranslationsFeaturesLibraryFilterSelfDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Selbst';
}

// Path: features.library.filterRelations
class _TranslationsFeaturesLibraryFilterRelationsDe extends TranslationsFeaturesLibraryFilterRelationsEn {
	_TranslationsFeaturesLibraryFilterRelationsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Beziehung';
}

// Path: features.library.filterFocus
class _TranslationsFeaturesLibraryFilterFocusDe extends TranslationsFeaturesLibraryFilterFocusEn {
	_TranslationsFeaturesLibraryFilterFocusDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Fokus';
}

// Path: features.library.filterBody
class _TranslationsFeaturesLibraryFilterBodyDe extends TranslationsFeaturesLibraryFilterBodyEn {
	_TranslationsFeaturesLibraryFilterBodyDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Körper';
}

// Path: features.library.todayPick
class _TranslationsFeaturesLibraryTodayPickDe extends TranslationsFeaturesLibraryTodayPickEn {
	_TranslationsFeaturesLibraryTodayPickDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get badge => 'Heute empfohlen';
}

// Path: features.library.freeBadge
class _TranslationsFeaturesLibraryFreeBadgeDe extends TranslationsFeaturesLibraryFreeBadgeEn {
	_TranslationsFeaturesLibraryFreeBadgeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Kostenlos';
}

// Path: features.library.allSessions
class _TranslationsFeaturesLibraryAllSessionsDe extends TranslationsFeaturesLibraryAllSessionsEn {
	_TranslationsFeaturesLibraryAllSessionsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Alle Sitzungen';
}

// Path: features.login.appleButton
class _TranslationsFeaturesLoginAppleButtonDe extends TranslationsFeaturesLoginAppleButtonEn {
	_TranslationsFeaturesLoginAppleButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Mit Apple fortfahren';
}

// Path: features.login.dontHaveAnAccount
class _TranslationsFeaturesLoginDontHaveAnAccountDe extends TranslationsFeaturesLoginDontHaveAnAccountEn {
	_TranslationsFeaturesLoginDontHaveAnAccountDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Noch kein Konto?';
}

// Path: features.login.emailButton
class _TranslationsFeaturesLoginEmailButtonDe extends TranslationsFeaturesLoginEmailButtonEn {
	_TranslationsFeaturesLoginEmailButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Mit E-Mail fortfahren';
}

// Path: features.login.googleButton
class _TranslationsFeaturesLoginGoogleButtonDe extends TranslationsFeaturesLoginGoogleButtonEn {
	_TranslationsFeaturesLoginGoogleButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Mit Google fortfahren';
}

// Path: features.login.signUpLink
class _TranslationsFeaturesLoginSignUpLinkDe extends TranslationsFeaturesLoginSignUpLinkEn {
	_TranslationsFeaturesLoginSignUpLinkDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Registrieren';
}

// Path: features.login.title
class _TranslationsFeaturesLoginTitleDe extends TranslationsFeaturesLoginTitleEn {
	_TranslationsFeaturesLoginTitleDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Bei Sayko anmelden';
}

// Path: features.loginPassword.emailField
class _TranslationsFeaturesLoginPasswordEmailFieldDe extends TranslationsFeaturesLoginPasswordEmailFieldEn {
	_TranslationsFeaturesLoginPasswordEmailFieldDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'E-Mail';
}

// Path: features.loginPassword.header
class _TranslationsFeaturesLoginPasswordHeaderDe extends TranslationsFeaturesLoginPasswordHeaderEn {
	_TranslationsFeaturesLoginPasswordHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anmelden';
}

// Path: features.loginPassword.passwordField
class _TranslationsFeaturesLoginPasswordPasswordFieldDe extends TranslationsFeaturesLoginPasswordPasswordFieldEn {
	_TranslationsFeaturesLoginPasswordPasswordFieldDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Passwort';
}

// Path: features.loginPassword.passwordResetLink
class _TranslationsFeaturesLoginPasswordPasswordResetLinkDe extends TranslationsFeaturesLoginPasswordPasswordResetLinkEn {
	_TranslationsFeaturesLoginPasswordPasswordResetLinkDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get link => 'Passwort vergessen?';
}

// Path: features.loginPassword.signInButton
class _TranslationsFeaturesLoginPasswordSignInButtonDe extends TranslationsFeaturesLoginPasswordSignInButtonEn {
	_TranslationsFeaturesLoginPasswordSignInButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Anmelden';
}

// Path: features.logoutConfirm.cancelButton
class _TranslationsFeaturesLogoutConfirmCancelButtonDe extends TranslationsFeaturesLogoutConfirmCancelButtonEn {
	_TranslationsFeaturesLogoutConfirmCancelButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Abbrechen';
}

// Path: features.logoutConfirm.confirmButton
class _TranslationsFeaturesLogoutConfirmConfirmButtonDe extends TranslationsFeaturesLogoutConfirmConfirmButtonEn {
	_TranslationsFeaturesLogoutConfirmConfirmButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Abmelden';
}

// Path: features.notFound.body
class _TranslationsFeaturesNotFoundBodyDe extends TranslationsFeaturesNotFoundBodyEn {
	_TranslationsFeaturesNotFoundBodyDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFeaturesNotFoundBodySubtitleDe subtitle = _TranslationsFeaturesNotFoundBodySubtitleDe._(_root);
	@override late final _TranslationsFeaturesNotFoundBodyTitleDe title = _TranslationsFeaturesNotFoundBodyTitleDe._(_root);
}

// Path: features.notFound.goHomeButton
class _TranslationsFeaturesNotFoundGoHomeButtonDe extends TranslationsFeaturesNotFoundGoHomeButtonEn {
	_TranslationsFeaturesNotFoundGoHomeButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zur Startseite';
}

// Path: features.passwordReset.button
class _TranslationsFeaturesPasswordResetButtonDe extends TranslationsFeaturesPasswordResetButtonEn {
	_TranslationsFeaturesPasswordResetButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Link zum Zurücksetzen senden';
}

// Path: features.passwordReset.contactSupportButton
class _TranslationsFeaturesPasswordResetContactSupportButtonDe extends TranslationsFeaturesPasswordResetContactSupportButtonEn {
	_TranslationsFeaturesPasswordResetContactSupportButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Support kontaktieren';
}

// Path: features.passwordReset.emailField
class _TranslationsFeaturesPasswordResetEmailFieldDe extends TranslationsFeaturesPasswordResetEmailFieldEn {
	_TranslationsFeaturesPasswordResetEmailFieldDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'E-Mail-Adresse';
}

// Path: features.passwordReset.header
class _TranslationsFeaturesPasswordResetHeaderDe extends TranslationsFeaturesPasswordResetHeaderEn {
	_TranslationsFeaturesPasswordResetHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Passwort zurücksetzen';
}

// Path: features.passwordReset.helpPrompt
class _TranslationsFeaturesPasswordResetHelpPromptDe extends TranslationsFeaturesPasswordResetHelpPromptEn {
	_TranslationsFeaturesPasswordResetHelpPromptDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Benötigen Sie weitere Hilfe?';
}

// Path: features.paywall.header
class _TranslationsFeaturesPaywallHeaderDe extends TranslationsFeaturesPaywallHeaderEn {
	_TranslationsFeaturesPaywallHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Die ganze Bibliothek freischalten.';
	@override String get body => 'Über 30 Sitzungen aus zwölf Jahren therapeutischer Praxis. Jede Woche neue Inhalte.';
}

// Path: features.paywall.annualPlan
class _TranslationsFeaturesPaywallAnnualPlanDe extends TranslationsFeaturesPaywallAnnualPlanEn {
	_TranslationsFeaturesPaywallAnnualPlanDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jahresabo';
	@override String get badge => 'Beste Wahl';
}

// Path: features.paywall.singlePlan
class _TranslationsFeaturesPaywallSinglePlanDe extends TranslationsFeaturesPaywallSinglePlanEn {
	_TranslationsFeaturesPaywallSinglePlanDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einzelne Sitzung';
	@override String get sub => 'Lebenslanger Zugang';
}

// Path: features.paywall.feature1
class _TranslationsFeaturesPaywallFeature1De extends TranslationsFeaturesPaywallFeature1En {
	_TranslationsFeaturesPaywallFeature1De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Über 30 Hypnose-Sitzungen';
}

// Path: features.paywall.feature2
class _TranslationsFeaturesPaywallFeature2De extends TranslationsFeaturesPaywallFeature2En {
	_TranslationsFeaturesPaywallFeature2De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Auch offline anhören';
}

// Path: features.paywall.feature3
class _TranslationsFeaturesPaywallFeature3De extends TranslationsFeaturesPaywallFeature3En {
	_TranslationsFeaturesPaywallFeature3De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'KI-empfohlen, basierend auf deinem Profil';
}

// Path: features.paywall.feature4
class _TranslationsFeaturesPaywallFeature4De extends TranslationsFeaturesPaywallFeature4En {
	_TranslationsFeaturesPaywallFeature4De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Jederzeit kündbar';
}

// Path: features.paywall.subscribeButton
class _TranslationsFeaturesPaywallSubscribeButtonDe extends TranslationsFeaturesPaywallSubscribeButtonEn {
	_TranslationsFeaturesPaywallSubscribeButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Jetzt abonnieren';
}

// Path: features.paywall.redeemButton
class _TranslationsFeaturesPaywallRedeemButtonDe extends TranslationsFeaturesPaywallRedeemButtonEn {
	_TranslationsFeaturesPaywallRedeemButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Code einlösen';
}

// Path: features.player.nowPlaying
class _TranslationsFeaturesPlayerNowPlayingDe extends TranslationsFeaturesPlayerNowPlayingEn {
	_TranslationsFeaturesPlayerNowPlayingDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Sitzung läuft';
}

// Path: features.profile.header
class _TranslationsFeaturesProfileHeaderDe extends TranslationsFeaturesProfileHeaderEn {
	_TranslationsFeaturesProfileHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get eyebrow => 'Profil';
	@override String get name => 'Anna M.';
	@override String get email => 'anna@example.com';
}

// Path: features.profile.yourProfile
class _TranslationsFeaturesProfileYourProfileDe extends TranslationsFeaturesProfileYourProfileEn {
	_TranslationsFeaturesProfileYourProfileDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Dein Profil';
}

// Path: features.profile.redoButton
class _TranslationsFeaturesProfileRedoButtonDe extends TranslationsFeaturesProfileRedoButtonEn {
	_TranslationsFeaturesProfileRedoButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Erneut machen';
}

// Path: features.profile.savedRow
class _TranslationsFeaturesProfileSavedRowDe extends TranslationsFeaturesProfileSavedRowEn {
	_TranslationsFeaturesProfileSavedRowDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Gemerkt';
}

// Path: features.profile.offlineRow
class _TranslationsFeaturesProfileOfflineRowDe extends TranslationsFeaturesProfileOfflineRowEn {
	_TranslationsFeaturesProfileOfflineRowDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Offline';
}

// Path: features.profile.languageRow
class _TranslationsFeaturesProfileLanguageRowDe extends TranslationsFeaturesProfileLanguageRowEn {
	_TranslationsFeaturesProfileLanguageRowDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Sprache';
}

// Path: features.profile.privacyRow
class _TranslationsFeaturesProfilePrivacyRowDe extends TranslationsFeaturesProfilePrivacyRowEn {
	_TranslationsFeaturesProfilePrivacyRowDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Datenschutz';
}

// Path: features.profile.settingsRow
class _TranslationsFeaturesProfileSettingsRowDe extends TranslationsFeaturesProfileSettingsRowEn {
	_TranslationsFeaturesProfileSettingsRowDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Einstellungen';
}

// Path: features.profile.footer
class _TranslationsFeaturesProfileFooterDe extends TranslationsFeaturesProfileFooterEn {
	_TranslationsFeaturesProfileFooterDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Eine Praxis von Anna Reiter. © 2026.';
}

// Path: features.results.header
class _TranslationsFeaturesResultsHeaderDe extends TranslationsFeaturesResultsHeaderEn {
	_TranslationsFeaturesResultsHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get eyebrow => 'Dein Profil';
	@override String get title => 'Du trägst viel.\nLass uns leichter werden.';
}

// Path: features.results.strengths
class _TranslationsFeaturesResultsStrengthsDe extends TranslationsFeaturesResultsStrengthsEn {
	_TranslationsFeaturesResultsStrengthsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Stärken';
}

// Path: features.results.growth
class _TranslationsFeaturesResultsGrowthDe extends TranslationsFeaturesResultsGrowthEn {
	_TranslationsFeaturesResultsGrowthDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Wachstumsfelder';
}

// Path: features.results.recommended
class _TranslationsFeaturesResultsRecommendedDe extends TranslationsFeaturesResultsRecommendedEn {
	_TranslationsFeaturesResultsRecommendedDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Empfohlen für dich';
}

// Path: features.results.continueButton
class _TranslationsFeaturesResultsContinueButtonDe extends TranslationsFeaturesResultsContinueButtonEn {
	_TranslationsFeaturesResultsContinueButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Zur Bibliothek';
}

// Path: features.results.savePdfButton
class _TranslationsFeaturesResultsSavePdfButtonDe extends TranslationsFeaturesResultsSavePdfButtonEn {
	_TranslationsFeaturesResultsSavePdfButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Profil als PDF speichern';
}

// Path: features.safetyBlocked.header
class _TranslationsFeaturesSafetyBlockedHeaderDe extends TranslationsFeaturesSafetyBlockedHeaderEn {
	_TranslationsFeaturesSafetyBlockedHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was du gerade durchmachst, verdient mehr als eine App.';
	@override String get body => 'Aufgrund deiner Antworten empfehlen wir, dich an eine Person zu wenden, die dich direkt unterstützen kann.';
}

// Path: features.safetyBlocked.acuteHelp
class _TranslationsFeaturesSafetyBlockedAcuteHelpDe extends TranslationsFeaturesSafetyBlockedAcuteHelpEn {
	_TranslationsFeaturesSafetyBlockedAcuteHelpDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Akute Hilfe';
}

// Path: features.safetyBlocked.contactSeelsorge
class _TranslationsFeaturesSafetyBlockedContactSeelsorgeDe extends TranslationsFeaturesSafetyBlockedContactSeelsorgeEn {
	_TranslationsFeaturesSafetyBlockedContactSeelsorgeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Telefonseelsorge';
	@override String get sub => '0800 111 0 111 — 24/7, kostenfrei';
}

// Path: features.safetyBlocked.contactEmergency
class _TranslationsFeaturesSafetyBlockedContactEmergencyDe extends TranslationsFeaturesSafetyBlockedContactEmergencyEn {
	_TranslationsFeaturesSafetyBlockedContactEmergencyDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Notruf';
	@override String get sub => '112 — bei akuter Gefahr';
}

// Path: features.safetyBlocked.contactKrisenchat
class _TranslationsFeaturesSafetyBlockedContactKrisenchatDe extends TranslationsFeaturesSafetyBlockedContactKrisenchatEn {
	_TranslationsFeaturesSafetyBlockedContactKrisenchatDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'krisenchat.de';
	@override String get sub => 'Chat-Beratung, kostenlos';
}

// Path: features.safetyBlocked.backButton
class _TranslationsFeaturesSafetyBlockedBackButtonDe extends TranslationsFeaturesSafetyBlockedBackButtonEn {
	_TranslationsFeaturesSafetyBlockedBackButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Zurück';
}

// Path: features.safetyCheck.header
class _TranslationsFeaturesSafetyCheckHeaderDe extends TranslationsFeaturesSafetyCheckHeaderEn {
	_TranslationsFeaturesSafetyCheckHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get eyebrow => 'Bevor wir beginnen';
	@override String get title => 'Eine kurze Sicherheitsabfrage.';
	@override String get body => 'Hypnose ist sicher für die meisten Menschen, aber nicht für alle. Bitte beantworte fünf kurze Fragen.';
}

// Path: features.safetyCheck.question1
class _TranslationsFeaturesSafetyCheckQuestion1De extends TranslationsFeaturesSafetyCheckQuestion1En {
	_TranslationsFeaturesSafetyCheckQuestion1De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Hast du eine Diagnose von Epilepsie oder Anfälle in der Vorgeschichte?';
}

// Path: features.safetyCheck.question2
class _TranslationsFeaturesSafetyCheckQuestion2De extends TranslationsFeaturesSafetyCheckQuestion2En {
	_TranslationsFeaturesSafetyCheckQuestion2De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Hattest du Psychosen, dissoziative Störungen oder schwere unbehandelte psychische Erkrankungen?';
}

// Path: features.safetyCheck.question3
class _TranslationsFeaturesSafetyCheckQuestion3De extends TranslationsFeaturesSafetyCheckQuestion3En {
	_TranslationsFeaturesSafetyCheckQuestion3De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Hast du derzeit Gedanken an Selbstverletzung oder Suizid?';
}

// Path: features.safetyCheck.question4
class _TranslationsFeaturesSafetyCheckQuestion4De extends TranslationsFeaturesSafetyCheckQuestion4En {
	_TranslationsFeaturesSafetyCheckQuestion4De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Bist du schwanger oder in den ersten Wochen nach der Geburt?';
}

// Path: features.safetyCheck.question5
class _TranslationsFeaturesSafetyCheckQuestion5De extends TranslationsFeaturesSafetyCheckQuestion5En {
	_TranslationsFeaturesSafetyCheckQuestion5De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Wirst du derzeit für eine schwere medizinische oder psychiatrische Erkrankung behandelt?';
}

// Path: features.safetyCheck.yesButton
class _TranslationsFeaturesSafetyCheckYesButtonDe extends TranslationsFeaturesSafetyCheckYesButtonEn {
	_TranslationsFeaturesSafetyCheckYesButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Ja';
}

// Path: features.safetyCheck.noButton
class _TranslationsFeaturesSafetyCheckNoButtonDe extends TranslationsFeaturesSafetyCheckNoButtonEn {
	_TranslationsFeaturesSafetyCheckNoButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Nein';
}

// Path: features.safetyCheck.confirmButton
class _TranslationsFeaturesSafetyCheckConfirmButtonDe extends TranslationsFeaturesSafetyCheckConfirmButtonEn {
	_TranslationsFeaturesSafetyCheckConfirmButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Bestätigen';
}

// Path: features.safetyCheck.footer
class _TranslationsFeaturesSafetyCheckFooterDe extends TranslationsFeaturesSafetyCheckFooterEn {
	_TranslationsFeaturesSafetyCheckFooterDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Diese Antworten werden nur lokal gespeichert.';
}

// Path: features.settings.appSection
class _TranslationsFeaturesSettingsAppSectionDe extends TranslationsFeaturesSettingsAppSectionEn {
	_TranslationsFeaturesSettingsAppSectionDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'App';
}

// Path: features.settings.appSectionTileAppearance
class _TranslationsFeaturesSettingsAppSectionTileAppearanceDe extends TranslationsFeaturesSettingsAppSectionTileAppearanceEn {
	_TranslationsFeaturesSettingsAppSectionTileAppearanceDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Darstellung';
}

// Path: features.settings.appSectionTileSystemLanguage
class _TranslationsFeaturesSettingsAppSectionTileSystemLanguageDe extends TranslationsFeaturesSettingsAppSectionTileSystemLanguageEn {
	_TranslationsFeaturesSettingsAppSectionTileSystemLanguageDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprache';
}

// Path: features.settings.deleteAccountButton
class _TranslationsFeaturesSettingsDeleteAccountButtonDe extends TranslationsFeaturesSettingsDeleteAccountButtonEn {
	_TranslationsFeaturesSettingsDeleteAccountButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konto löschen';
}

// Path: features.settings.header
class _TranslationsFeaturesSettingsHeaderDe extends TranslationsFeaturesSettingsHeaderEn {
	_TranslationsFeaturesSettingsHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen';
}

// Path: features.settings.legalSection
class _TranslationsFeaturesSettingsLegalSectionDe extends TranslationsFeaturesSettingsLegalSectionEn {
	_TranslationsFeaturesSettingsLegalSectionDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rechtliches';
}

// Path: features.settings.legalSectionTile
class _TranslationsFeaturesSettingsLegalSectionTileDe extends TranslationsFeaturesSettingsLegalSectionTileEn {
	_TranslationsFeaturesSettingsLegalSectionTileDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Datenschutzrichtlinie';
}

// Path: features.settings.signOutButton
class _TranslationsFeaturesSettingsSignOutButtonDe extends TranslationsFeaturesSettingsSignOutButtonEn {
	_TranslationsFeaturesSettingsSignOutButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abmelden';
}

// Path: features.settings.version
class _TranslationsFeaturesSettingsVersionDe extends TranslationsFeaturesSettingsVersionEn {
	_TranslationsFeaturesSettingsVersionDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String text({required Object version, required Object buildNumber}) => 'Version ${version} (${buildNumber})';
}

// Path: features.settingsAppearance.header
class _TranslationsFeaturesSettingsAppearanceHeaderDe extends TranslationsFeaturesSettingsAppearanceHeaderEn {
	_TranslationsFeaturesSettingsAppearanceHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Darstellung';
}

// Path: features.settingsSystemLanguage.header
class _TranslationsFeaturesSettingsSystemLanguageHeaderDe extends TranslationsFeaturesSettingsSystemLanguageHeaderEn {
	_TranslationsFeaturesSettingsSystemLanguageHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprache';
}

// Path: features.signUp.alreadyHaveAnAccount
class _TranslationsFeaturesSignUpAlreadyHaveAnAccountDe extends TranslationsFeaturesSignUpAlreadyHaveAnAccountEn {
	_TranslationsFeaturesSignUpAlreadyHaveAnAccountDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Bereits ein Konto?';
}

// Path: features.signUp.appleButton
class _TranslationsFeaturesSignUpAppleButtonDe extends TranslationsFeaturesSignUpAppleButtonEn {
	_TranslationsFeaturesSignUpAppleButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Mit Apple fortfahren';
}

// Path: features.signUp.emailButton
class _TranslationsFeaturesSignUpEmailButtonDe extends TranslationsFeaturesSignUpEmailButtonEn {
	_TranslationsFeaturesSignUpEmailButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Mit E-Mail fortfahren';
}

// Path: features.signUp.googleButton
class _TranslationsFeaturesSignUpGoogleButtonDe extends TranslationsFeaturesSignUpGoogleButtonEn {
	_TranslationsFeaturesSignUpGoogleButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Mit Google fortfahren';
}

// Path: features.signUp.logInLink
class _TranslationsFeaturesSignUpLogInLinkDe extends TranslationsFeaturesSignUpLogInLinkEn {
	_TranslationsFeaturesSignUpLogInLinkDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Anmelden';
}

// Path: features.signUp.title
class _TranslationsFeaturesSignUpTitleDe extends TranslationsFeaturesSignUpTitleEn {
	_TranslationsFeaturesSignUpTitleDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Registriere dich, um zu beginnen';
}

// Path: features.signUpPassword.emailButton
class _TranslationsFeaturesSignUpPasswordEmailButtonDe extends TranslationsFeaturesSignUpPasswordEmailButtonEn {
	_TranslationsFeaturesSignUpPasswordEmailButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Weiter';
}

// Path: features.signUpPassword.emailField
class _TranslationsFeaturesSignUpPasswordEmailFieldDe extends TranslationsFeaturesSignUpPasswordEmailFieldEn {
	_TranslationsFeaturesSignUpPasswordEmailFieldDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Bitte geben Sie Ihre E-Mail-Adresse ein.';
	@override String get label => 'E-Mail';
}

// Path: features.signUpPassword.header
class _TranslationsFeaturesSignUpPasswordHeaderDe extends TranslationsFeaturesSignUpPasswordHeaderEn {
	_TranslationsFeaturesSignUpPasswordHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Konto erstellen';
}

// Path: features.signUpPassword.passwordButton
class _TranslationsFeaturesSignUpPasswordPasswordButtonDe extends TranslationsFeaturesSignUpPasswordPasswordButtonEn {
	_TranslationsFeaturesSignUpPasswordPasswordButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Weiter';
}

// Path: features.signUpPassword.passwordField
class _TranslationsFeaturesSignUpPasswordPasswordFieldDe extends TranslationsFeaturesSignUpPasswordPasswordFieldEn {
	_TranslationsFeaturesSignUpPasswordPasswordFieldDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Wählen Sie ein sicheres Passwort.';
	@override String get label => 'Passwort';
}

// Path: features.today.header
class _TranslationsFeaturesTodayHeaderDe extends TranslationsFeaturesTodayHeaderEn {
	_TranslationsFeaturesTodayHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get greeting => 'Guten Abend, Anna';
	@override String get tagline => 'Wenige Minuten für dich.';
}

// Path: features.today.assessmentBanner
class _TranslationsFeaturesTodayAssessmentBannerDe extends TranslationsFeaturesTodayAssessmentBannerEn {
	_TranslationsFeaturesTodayAssessmentBannerDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mach den 5-Minuten-Test';
	@override String get subtitle => 'Persönliche Empfehlungen freischalten';
}

// Path: features.today.featuredCard
class _TranslationsFeaturesTodayFeaturedCardDe extends TranslationsFeaturesTodayFeaturedCardEn {
	_TranslationsFeaturesTodayFeaturedCardDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get badge => 'Beginne hier · kostenlos';
	@override String get listenButton => 'Anhören';
}

// Path: features.today.aiRecLabel
class _TranslationsFeaturesTodayAiRecLabelDe extends TranslationsFeaturesTodayAiRecLabelEn {
	_TranslationsFeaturesTodayAiRecLabelDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Für dich heute';
}

// Path: features.today.practiceNote
class _TranslationsFeaturesTodayPracticeNoteDe extends TranslationsFeaturesTodayPracticeNoteEn {
	_TranslationsFeaturesTodayPracticeNoteDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get eyebrow => 'Vom Praxisteam';
	@override String get quote => 'Drei Minuten Atmen vor dem Schlafen verändern oft mehr als eine Stunde Grübeln.';
	@override String get author => '— Anna Reiter, M.Sc.';
}

// Path: features.verifyEmail.body
class _TranslationsFeaturesVerifyEmailBodyDe extends TranslationsFeaturesVerifyEmailBodyEn {
	_TranslationsFeaturesVerifyEmailBodyDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Wir haben Ihnen einen Bestätigungslink per E-Mail geschickt. Klicken Sie auf den Link, um Ihr Konto zu bestätigen und fortzufahren.';
	@override String get title => 'Prüfen Sie Ihren Posteingang';
}

// Path: features.verifyEmail.header
class _TranslationsFeaturesVerifyEmailHeaderDe extends TranslationsFeaturesVerifyEmailHeaderEn {
	_TranslationsFeaturesVerifyEmailHeaderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'E-Mail bestätigen';
}

// Path: features.verifyEmail.sendButton
class _TranslationsFeaturesVerifyEmailSendButtonDe extends TranslationsFeaturesVerifyEmailSendButtonEn {
	_TranslationsFeaturesVerifyEmailSendButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get label => 'Verifizierungs-E-Mail senden';
}

// Path: features.welcome.slide1
class _TranslationsFeaturesWelcomeSlide1De extends TranslationsFeaturesWelcomeSlide1En {
	_TranslationsFeaturesWelcomeSlide1De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get eyebrow => 'Eine Praxis von Anna Reiter';
	@override String get title => 'Hypnose, ohne Esoterik.';
	@override String get body => 'Audiogeführte Sitzungen aus zwölf Jahren therapeutischer Arbeit. Für ruhigere Tage, leichtere Nächte, klarere Beziehungen.';
}

// Path: features.welcome.slide2
class _TranslationsFeaturesWelcomeSlide2De extends TranslationsFeaturesWelcomeSlide2En {
	_TranslationsFeaturesWelcomeSlide2De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get eyebrow => 'In drei Schritten';
	@override String get title => 'Ein kurzer Test.\nDann Sitzungen,\ndie zu dir passen.';
	@override String get body => '20 Fragen, etwa fünf Minuten. Du erhältst ein Profil mit Stärken und Wachstumsfeldern — in Alltagssprache, ohne Etiketten.';
}

// Path: features.welcome.slide3
class _TranslationsFeaturesWelcomeSlide3De extends TranslationsFeaturesWelcomeSlide3En {
	_TranslationsFeaturesWelcomeSlide3De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get eyebrow => 'Sicher und privat';
	@override String get title => 'Was du teilst,\nbleibt bei dir.';
	@override String get body => 'GDPR-konform, in Deutschland gehostet. Keine Werbung, kein Tracking. Die erste Sitzung ist kostenlos.';
}

// Path: features.welcome.continueButton
class _TranslationsFeaturesWelcomeContinueButtonDe extends TranslationsFeaturesWelcomeContinueButtonEn {
	_TranslationsFeaturesWelcomeContinueButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Weiter';
}

// Path: features.welcome.beginButton
class _TranslationsFeaturesWelcomeBeginButtonDe extends TranslationsFeaturesWelcomeBeginButtonEn {
	_TranslationsFeaturesWelcomeBeginButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Beginnen';
}

// Path: features.welcome.skipButton
class _TranslationsFeaturesWelcomeSkipButtonDe extends TranslationsFeaturesWelcomeSkipButtonEn {
	_TranslationsFeaturesWelcomeSkipButtonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Überspringen';
}

// Path: utils.domain.appData
class _TranslationsUtilsDomainAppDataDe extends TranslationsUtilsDomainAppDataEn {
	_TranslationsUtilsDomainAppDataDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUtilsDomainAppDataAppearanceDe appearance = _TranslationsUtilsDomainAppDataAppearanceDe._(_root);
}

// Path: utils.locale.de
class _TranslationsUtilsLocaleDeDe extends TranslationsUtilsLocaleDeEn {
	_TranslationsUtilsLocaleDeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'German';
}

// Path: utils.locale.en
class _TranslationsUtilsLocaleEnDe extends TranslationsUtilsLocaleEnEn {
	_TranslationsUtilsLocaleEnDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'English';
}

// Path: features.notFound.body.subtitle
class _TranslationsFeaturesNotFoundBodySubtitleDe extends TranslationsFeaturesNotFoundBodySubtitleEn {
	_TranslationsFeaturesNotFoundBodySubtitleDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Die gesuchte Seite existiert nicht.';
}

// Path: features.notFound.body.title
class _TranslationsFeaturesNotFoundBodyTitleDe extends TranslationsFeaturesNotFoundBodyTitleEn {
	_TranslationsFeaturesNotFoundBodyTitleDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text => 'Seite nicht gefunden';
}

// Path: utils.domain.appData.appearance
class _TranslationsUtilsDomainAppDataAppearanceDe extends TranslationsUtilsDomainAppDataAppearanceEn {
	_TranslationsUtilsDomainAppDataAppearanceDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUtilsDomainAppDataAppearanceDarkDe dark = _TranslationsUtilsDomainAppDataAppearanceDarkDe._(_root);
	@override late final _TranslationsUtilsDomainAppDataAppearanceLightDe light = _TranslationsUtilsDomainAppDataAppearanceLightDe._(_root);
	@override late final _TranslationsUtilsDomainAppDataAppearanceSystemDe system = _TranslationsUtilsDomainAppDataAppearanceSystemDe._(_root);
}

// Path: utils.domain.appData.appearance.dark
class _TranslationsUtilsDomainAppDataAppearanceDarkDe extends TranslationsUtilsDomainAppDataAppearanceDarkEn {
	_TranslationsUtilsDomainAppDataAppearanceDarkDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Dunkles Design verwenden';
	@override String get name => 'Dunkel';
}

// Path: utils.domain.appData.appearance.light
class _TranslationsUtilsDomainAppDataAppearanceLightDe extends TranslationsUtilsDomainAppDataAppearanceLightEn {
	_TranslationsUtilsDomainAppDataAppearanceLightDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Helles Design verwenden';
	@override String get name => 'Hell';
}

// Path: utils.domain.appData.appearance.system
class _TranslationsUtilsDomainAppDataAppearanceSystemDe extends TranslationsUtilsDomainAppDataAppearanceSystemEn {
	_TranslationsUtilsDomainAppDataAppearanceSystemDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Systemdesign folgen';
	@override String get name => 'System';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'features.accountCreate.createButton.label' => 'Konto erstellen',
			'features.accountCreate.failedToCreateAccount' => 'Konto konnte nicht erstellt werden',
			'features.accountCreate.header.title' => 'Konto erstellen',
			'features.accountCreate.nameField.description' => 'Wie sollen wir Sie nennen?',
			'features.accountCreate.nameField.label' => 'Name',
			'features.accountCreate.privacyItem.description' => 'Datenschutzrichtlinie lesen',
			'features.accountCreate.privacyItem.label' => 'Ich habe die Datenschutzrichtlinie gelesen',
			'features.accountCreate.requiredBadge.label' => 'Pflichtfeld',
			'features.accountCreate.termsItem.description' => 'Nutzungsbedingungen lesen',
			'features.accountCreate.termsItem.label' => 'Ich stimme den Nutzungsbedingungen zu',
			'features.assessment.header.axisStress' => 'Stressreaktion',
			'features.assessment.header.axisSleep' => 'Ruhe & Schlaf',
			'features.assessment.header.axisSelf' => 'Selbstbeziehung',
			'features.assessment.header.axisFocus' => 'Fokus & Durchhalten',
			'features.assessment.header.axisRelations' => 'Beziehungen',
			'features.assessment.header.axisBody' => 'Körperwahrnehmung',
			'features.assessment.footer.text' => 'Es gibt keine richtigen Antworten.',
			'features.assessment.likert.disagree' => 'Stimme nicht zu',
			'features.assessment.likert.agree' => 'Stimme zu',
			'features.assessment.likert.hint' => 'Tippe einen Kreis zum Antworten',
			'features.assessment.likert.stronglyDisagree' => 'Stimme gar nicht zu',
			'features.assessment.likert.neutral' => 'Neutral',
			'features.assessment.likert.stronglyAgree' => 'Stimme voll zu',
			'features.auth.loginButton.title' => 'Anmelden',
			'features.auth.signUpButton.title' => 'Kostenlos registrieren',
			'features.auth.title.text' => 'Finde deine Ruhe.\n Mit sayko.',
			'features.deleteAccountConfirm.cancelButton.text' => 'Abbrechen',
			'features.deleteAccountConfirm.confirmButton.text' => 'Konto löschen',
			'features.deleteAccountConfirm.subtitle' => 'Diese Aktion kann nicht rückgängig gemacht werden. Ihr Konto und alle Daten werden dauerhaft gelöscht.',
			'features.deleteAccountConfirm.title' => 'Konto löschen?',
			'features.home.header.title' => 'Start',
			'features.launchpad.bottomNavigationBar.today' => 'Heute',
			'features.launchpad.bottomNavigationBar.library' => 'Bibliothek',
			'features.launchpad.bottomNavigationBar.profile' => 'Profil',
			'features.launchpad.bottomNavigationBar.home' => 'Start',
			'features.launchpad.bottomNavigationBar.settings' => 'Einstellungen',
			'features.library.header.eyebrow' => 'Bibliothek',
			'features.library.header.title' => 'Was brauchst du heute?',
			'features.library.filterAll.label' => 'Alle',
			'features.library.filterStress.label' => 'Stress',
			'features.library.filterSleep.label' => 'Schlaf',
			'features.library.filterSelf.label' => 'Selbst',
			'features.library.filterRelations.label' => 'Beziehung',
			'features.library.filterFocus.label' => 'Fokus',
			'features.library.filterBody.label' => 'Körper',
			'features.library.todayPick.badge' => 'Heute empfohlen',
			'features.library.freeBadge.label' => 'Kostenlos',
			'features.library.allSessions.label' => 'Alle Sitzungen',
			'features.login.appleButton.text' => 'Mit Apple fortfahren',
			'features.login.dontHaveAnAccount.text' => 'Noch kein Konto?',
			'features.login.emailButton.text' => 'Mit E-Mail fortfahren',
			'features.login.googleButton.text' => 'Mit Google fortfahren',
			'features.login.signUpLink.text' => 'Registrieren',
			'features.login.title.text' => 'Bei Sayko anmelden',
			'features.loginPassword.emailField.label' => 'E-Mail',
			'features.loginPassword.failedToSignIn' => 'Anmeldung fehlgeschlagen',
			'features.loginPassword.header.title' => 'Anmelden',
			'features.loginPassword.passwordField.label' => 'Passwort',
			'features.loginPassword.passwordResetLink.link' => 'Passwort vergessen?',
			'features.loginPassword.signInButton.text' => 'Anmelden',
			'features.logoutConfirm.cancelButton.text' => 'Abbrechen',
			'features.logoutConfirm.confirmButton.text' => 'Abmelden',
			'features.logoutConfirm.title' => 'Abmelden?',
			'features.notFound.body.subtitle.text' => 'Die gesuchte Seite existiert nicht.',
			'features.notFound.body.title.text' => 'Seite nicht gefunden',
			'features.notFound.goHomeButton.title' => 'Zur Startseite',
			'features.passwordReset.button.label' => 'Link zum Zurücksetzen senden',
			'features.passwordReset.contactSupportButton.text' => 'Support kontaktieren',
			'features.passwordReset.emailField.label' => 'E-Mail-Adresse',
			'features.passwordReset.failedToSendPasswordResetEmail' => 'E-Mail zum Zurücksetzen des Passworts konnte nicht gesendet werden',
			'features.passwordReset.header.title' => 'Passwort zurücksetzen',
			'features.passwordReset.helpPrompt.text' => 'Benötigen Sie weitere Hilfe?',
			'features.passwordReset.sendPasswordResetEmailSucceeded' => 'Prüfen Sie Ihren Posteingang auf den Link zum Zurücksetzen',
			'features.paywall.header.title' => 'Die ganze Bibliothek freischalten.',
			'features.paywall.header.body' => 'Über 30 Sitzungen aus zwölf Jahren therapeutischer Praxis. Jede Woche neue Inhalte.',
			'features.paywall.annualPlan.title' => 'Jahresabo',
			'features.paywall.annualPlan.badge' => 'Beste Wahl',
			'features.paywall.singlePlan.title' => 'Einzelne Sitzung',
			'features.paywall.singlePlan.sub' => 'Lebenslanger Zugang',
			'features.paywall.feature1.label' => 'Über 30 Hypnose-Sitzungen',
			'features.paywall.feature2.label' => 'Auch offline anhören',
			'features.paywall.feature3.label' => 'KI-empfohlen, basierend auf deinem Profil',
			'features.paywall.feature4.label' => 'Jederzeit kündbar',
			'features.paywall.subscribeButton.text' => 'Jetzt abonnieren',
			'features.paywall.redeemButton.text' => 'Code einlösen',
			'features.player.nowPlaying.label' => 'Sitzung läuft',
			'features.profile.header.eyebrow' => 'Profil',
			'features.profile.header.name' => 'Anna M.',
			'features.profile.header.email' => 'anna@example.com',
			'features.profile.yourProfile.label' => 'Dein Profil',
			'features.profile.redoButton.text' => 'Erneut machen',
			'features.profile.savedRow.label' => 'Gemerkt',
			'features.profile.offlineRow.label' => 'Offline',
			'features.profile.languageRow.label' => 'Sprache',
			'features.profile.privacyRow.label' => 'Datenschutz',
			'features.profile.settingsRow.label' => 'Einstellungen',
			'features.profile.footer.text' => 'Eine Praxis von Anna Reiter. © 2026.',
			'features.results.header.eyebrow' => 'Dein Profil',
			'features.results.header.title' => 'Du trägst viel.\nLass uns leichter werden.',
			'features.results.strengths.label' => 'Stärken',
			'features.results.growth.label' => 'Wachstumsfelder',
			'features.results.recommended.title' => 'Empfohlen für dich',
			'features.results.continueButton.text' => 'Zur Bibliothek',
			'features.results.savePdfButton.text' => 'Profil als PDF speichern',
			'features.safetyBlocked.header.title' => 'Was du gerade durchmachst, verdient mehr als eine App.',
			'features.safetyBlocked.header.body' => 'Aufgrund deiner Antworten empfehlen wir, dich an eine Person zu wenden, die dich direkt unterstützen kann.',
			'features.safetyBlocked.acuteHelp.label' => 'Akute Hilfe',
			'features.safetyBlocked.contactSeelsorge.label' => 'Telefonseelsorge',
			'features.safetyBlocked.contactSeelsorge.sub' => '0800 111 0 111 — 24/7, kostenfrei',
			'features.safetyBlocked.contactEmergency.label' => 'Notruf',
			'features.safetyBlocked.contactEmergency.sub' => '112 — bei akuter Gefahr',
			'features.safetyBlocked.contactKrisenchat.label' => 'krisenchat.de',
			'features.safetyBlocked.contactKrisenchat.sub' => 'Chat-Beratung, kostenlos',
			'features.safetyBlocked.backButton.text' => 'Zurück',
			'features.safetyCheck.header.eyebrow' => 'Bevor wir beginnen',
			'features.safetyCheck.header.title' => 'Eine kurze Sicherheitsabfrage.',
			'features.safetyCheck.header.body' => 'Hypnose ist sicher für die meisten Menschen, aber nicht für alle. Bitte beantworte fünf kurze Fragen.',
			'features.safetyCheck.question1.text' => 'Hast du eine Diagnose von Epilepsie oder Anfälle in der Vorgeschichte?',
			'features.safetyCheck.question2.text' => 'Hattest du Psychosen, dissoziative Störungen oder schwere unbehandelte psychische Erkrankungen?',
			'features.safetyCheck.question3.text' => 'Hast du derzeit Gedanken an Selbstverletzung oder Suizid?',
			'features.safetyCheck.question4.text' => 'Bist du schwanger oder in den ersten Wochen nach der Geburt?',
			'features.safetyCheck.question5.text' => 'Wirst du derzeit für eine schwere medizinische oder psychiatrische Erkrankung behandelt?',
			'features.safetyCheck.yesButton.text' => 'Ja',
			'features.safetyCheck.noButton.text' => 'Nein',
			'features.safetyCheck.confirmButton.text' => 'Bestätigen',
			'features.safetyCheck.footer.text' => 'Diese Antworten werden nur lokal gespeichert.',
			'features.settings.appSection.title' => 'App',
			'features.settings.appSectionTileAppearance.title' => 'Darstellung',
			'features.settings.appSectionTileSystemLanguage.title' => 'Sprache',
			'features.settings.deleteAccountButton.title' => 'Konto löschen',
			'features.settings.header.title' => 'Einstellungen',
			'features.settings.legalSection.title' => 'Rechtliches',
			'features.settings.legalSectionTile.title' => 'Datenschutzrichtlinie',
			'features.settings.signOutButton.title' => 'Abmelden',
			'features.settings.version.text' => ({required Object version, required Object buildNumber}) => 'Version ${version} (${buildNumber})',
			'features.settingsAppearance.header.title' => 'Darstellung',
			'features.settingsSystemLanguage.header.title' => 'Sprache',
			'features.signUp.alreadyHaveAnAccount.text' => 'Bereits ein Konto?',
			'features.signUp.appleButton.text' => 'Mit Apple fortfahren',
			'features.signUp.emailButton.text' => 'Mit E-Mail fortfahren',
			'features.signUp.googleButton.text' => 'Mit Google fortfahren',
			'features.signUp.logInLink.text' => 'Anmelden',
			'features.signUp.title.text' => 'Registriere dich, um zu beginnen',
			'features.signUpPassword.emailButton.label' => 'Weiter',
			'features.signUpPassword.emailField.description' => 'Bitte geben Sie Ihre E-Mail-Adresse ein.',
			'features.signUpPassword.emailField.label' => 'E-Mail',
			'features.signUpPassword.failedToSignUp' => 'Konto konnte nicht erstellt werden',
			'features.signUpPassword.header.title' => 'Konto erstellen',
			'features.signUpPassword.passwordButton.label' => 'Weiter',
			'features.signUpPassword.passwordField.description' => 'Wählen Sie ein sicheres Passwort.',
			'features.signUpPassword.passwordField.label' => 'Passwort',
			'features.today.header.greeting' => 'Guten Abend, Anna',
			'features.today.header.tagline' => 'Wenige Minuten für dich.',
			'features.today.assessmentBanner.title' => 'Mach den 5-Minuten-Test',
			'features.today.assessmentBanner.subtitle' => 'Persönliche Empfehlungen freischalten',
			'features.today.featuredCard.badge' => 'Beginne hier · kostenlos',
			'features.today.featuredCard.listenButton' => 'Anhören',
			'features.today.aiRecLabel.text' => 'Für dich heute',
			'features.today.practiceNote.eyebrow' => 'Vom Praxisteam',
			'features.today.practiceNote.quote' => 'Drei Minuten Atmen vor dem Schlafen verändern oft mehr als eine Stunde Grübeln.',
			'features.today.practiceNote.author' => '— Anna Reiter, M.Sc.',
			'features.verifyEmail.body.description' => 'Wir haben Ihnen einen Bestätigungslink per E-Mail geschickt. Klicken Sie auf den Link, um Ihr Konto zu bestätigen und fortzufahren.',
			'features.verifyEmail.body.title' => 'Prüfen Sie Ihren Posteingang',
			'features.verifyEmail.header.title' => 'E-Mail bestätigen',
			'features.verifyEmail.sendButton.label' => 'Verifizierungs-E-Mail senden',
			'features.verifyEmail.sendVerifyEmailFailed' => 'Verifizierungs-E-Mail konnte nicht gesendet werden',
			'features.welcome.slide1.eyebrow' => 'Eine Praxis von Anna Reiter',
			'features.welcome.slide1.title' => 'Hypnose, ohne Esoterik.',
			'features.welcome.slide1.body' => 'Audiogeführte Sitzungen aus zwölf Jahren therapeutischer Arbeit. Für ruhigere Tage, leichtere Nächte, klarere Beziehungen.',
			'features.welcome.slide2.eyebrow' => 'In drei Schritten',
			'features.welcome.slide2.title' => 'Ein kurzer Test.\nDann Sitzungen,\ndie zu dir passen.',
			'features.welcome.slide2.body' => '20 Fragen, etwa fünf Minuten. Du erhältst ein Profil mit Stärken und Wachstumsfeldern — in Alltagssprache, ohne Etiketten.',
			'features.welcome.slide3.eyebrow' => 'Sicher und privat',
			'features.welcome.slide3.title' => 'Was du teilst,\nbleibt bei dir.',
			'features.welcome.slide3.body' => 'GDPR-konform, in Deutschland gehostet. Keine Werbung, kein Tracking. Die erste Sitzung ist kostenlos.',
			'features.welcome.continueButton.text' => 'Weiter',
			'features.welcome.beginButton.text' => 'Beginnen',
			'features.welcome.skipButton.text' => 'Überspringen',
			'utils.domain.appData.appearance.dark.description' => 'Dunkles Design verwenden',
			'utils.domain.appData.appearance.dark.name' => 'Dunkel',
			'utils.domain.appData.appearance.light.description' => 'Helles Design verwenden',
			'utils.domain.appData.appearance.light.name' => 'Hell',
			'utils.domain.appData.appearance.system.description' => 'Systemdesign folgen',
			'utils.domain.appData.appearance.system.name' => 'System',
			'utils.locale.de.name' => 'German',
			'utils.locale.en.name' => 'English',
			_ => null,
		};
	}
}

///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsFeaturesEn features = TranslationsFeaturesEn.internal(_root);
	late final TranslationsUtilsEn utils = TranslationsUtilsEn.internal(_root);
}

// Path: features
class TranslationsFeaturesEn {
	TranslationsFeaturesEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesAccountCreateEn accountCreate = TranslationsFeaturesAccountCreateEn.internal(_root);
	late final TranslationsFeaturesAssessmentEn assessment = TranslationsFeaturesAssessmentEn.internal(_root);
	late final TranslationsFeaturesAuthEn auth = TranslationsFeaturesAuthEn.internal(_root);
	late final TranslationsFeaturesDeleteAccountConfirmEn deleteAccountConfirm = TranslationsFeaturesDeleteAccountConfirmEn.internal(_root);
	late final TranslationsFeaturesHomeEn home = TranslationsFeaturesHomeEn.internal(_root);
	late final TranslationsFeaturesLaunchpadEn launchpad = TranslationsFeaturesLaunchpadEn.internal(_root);
	late final TranslationsFeaturesLibraryEn library = TranslationsFeaturesLibraryEn.internal(_root);
	late final TranslationsFeaturesLoginEn login = TranslationsFeaturesLoginEn.internal(_root);
	late final TranslationsFeaturesLoginPasswordEn loginPassword = TranslationsFeaturesLoginPasswordEn.internal(_root);
	late final TranslationsFeaturesLogoutConfirmEn logoutConfirm = TranslationsFeaturesLogoutConfirmEn.internal(_root);
	late final TranslationsFeaturesNotFoundEn notFound = TranslationsFeaturesNotFoundEn.internal(_root);
	late final TranslationsFeaturesPasswordResetEn passwordReset = TranslationsFeaturesPasswordResetEn.internal(_root);
	late final TranslationsFeaturesPaywallEn paywall = TranslationsFeaturesPaywallEn.internal(_root);
	late final TranslationsFeaturesPlayerEn player = TranslationsFeaturesPlayerEn.internal(_root);
	late final TranslationsFeaturesProfileEn profile = TranslationsFeaturesProfileEn.internal(_root);
	late final TranslationsFeaturesResultsEn results = TranslationsFeaturesResultsEn.internal(_root);
	late final TranslationsFeaturesSafetyBlockedEn safetyBlocked = TranslationsFeaturesSafetyBlockedEn.internal(_root);
	late final TranslationsFeaturesSafetyCheckEn safetyCheck = TranslationsFeaturesSafetyCheckEn.internal(_root);
	late final TranslationsFeaturesSettingsEn settings = TranslationsFeaturesSettingsEn.internal(_root);
	late final TranslationsFeaturesSettingsAppearanceEn settingsAppearance = TranslationsFeaturesSettingsAppearanceEn.internal(_root);
	late final TranslationsFeaturesSettingsSystemLanguageEn settingsSystemLanguage = TranslationsFeaturesSettingsSystemLanguageEn.internal(_root);
	late final TranslationsFeaturesSignUpEn signUp = TranslationsFeaturesSignUpEn.internal(_root);
	late final TranslationsFeaturesSignUpPasswordEn signUpPassword = TranslationsFeaturesSignUpPasswordEn.internal(_root);
	late final TranslationsFeaturesTodayEn today = TranslationsFeaturesTodayEn.internal(_root);
	late final TranslationsFeaturesVerifyEmailEn verifyEmail = TranslationsFeaturesVerifyEmailEn.internal(_root);
	late final TranslationsFeaturesWelcomeEn welcome = TranslationsFeaturesWelcomeEn.internal(_root);
}

// Path: utils
class TranslationsUtilsEn {
	TranslationsUtilsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUtilsDomainEn domain = TranslationsUtilsDomainEn.internal(_root);
	late final TranslationsUtilsLocaleEn locale = TranslationsUtilsLocaleEn.internal(_root);
}

// Path: features.accountCreate
class TranslationsFeaturesAccountCreateEn {
	TranslationsFeaturesAccountCreateEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesAccountCreateCreateButtonEn createButton = TranslationsFeaturesAccountCreateCreateButtonEn.internal(_root);

	/// en: 'Failed to create account'
	String get failedToCreateAccount => 'Failed to create account';

	late final TranslationsFeaturesAccountCreateHeaderEn header = TranslationsFeaturesAccountCreateHeaderEn.internal(_root);
	late final TranslationsFeaturesAccountCreateNameFieldEn nameField = TranslationsFeaturesAccountCreateNameFieldEn.internal(_root);
	late final TranslationsFeaturesAccountCreatePrivacyItemEn privacyItem = TranslationsFeaturesAccountCreatePrivacyItemEn.internal(_root);
	late final TranslationsFeaturesAccountCreateRequiredBadgeEn requiredBadge = TranslationsFeaturesAccountCreateRequiredBadgeEn.internal(_root);
	late final TranslationsFeaturesAccountCreateTermsItemEn termsItem = TranslationsFeaturesAccountCreateTermsItemEn.internal(_root);
}

// Path: features.assessment
class TranslationsFeaturesAssessmentEn {
	TranslationsFeaturesAssessmentEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesAssessmentHeaderEn header = TranslationsFeaturesAssessmentHeaderEn.internal(_root);
	late final TranslationsFeaturesAssessmentFooterEn footer = TranslationsFeaturesAssessmentFooterEn.internal(_root);
	late final TranslationsFeaturesAssessmentSkipButtonEn skipButton = TranslationsFeaturesAssessmentSkipButtonEn.internal(_root);
	late final TranslationsFeaturesAssessmentLikertEn likert = TranslationsFeaturesAssessmentLikertEn.internal(_root);
}

// Path: features.auth
class TranslationsFeaturesAuthEn {
	TranslationsFeaturesAuthEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesAuthLoginButtonEn loginButton = TranslationsFeaturesAuthLoginButtonEn.internal(_root);
	late final TranslationsFeaturesAuthSignUpButtonEn signUpButton = TranslationsFeaturesAuthSignUpButtonEn.internal(_root);
	late final TranslationsFeaturesAuthTitleEn title = TranslationsFeaturesAuthTitleEn.internal(_root);
}

// Path: features.deleteAccountConfirm
class TranslationsFeaturesDeleteAccountConfirmEn {
	TranslationsFeaturesDeleteAccountConfirmEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesDeleteAccountConfirmCancelButtonEn cancelButton = TranslationsFeaturesDeleteAccountConfirmCancelButtonEn.internal(_root);
	late final TranslationsFeaturesDeleteAccountConfirmConfirmButtonEn confirmButton = TranslationsFeaturesDeleteAccountConfirmConfirmButtonEn.internal(_root);

	/// en: 'This action cannot be undone. This will permanently delete your account and remove your data from our servers.'
	String get subtitle => 'This action cannot be undone. This will permanently delete your account and remove your data from our servers.';

	/// en: 'Delete Account?'
	String get title => 'Delete Account?';
}

// Path: features.home
class TranslationsFeaturesHomeEn {
	TranslationsFeaturesHomeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesHomeHeaderEn header = TranslationsFeaturesHomeHeaderEn.internal(_root);
}

// Path: features.launchpad
class TranslationsFeaturesLaunchpadEn {
	TranslationsFeaturesLaunchpadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesLaunchpadBottomNavigationBarEn bottomNavigationBar = TranslationsFeaturesLaunchpadBottomNavigationBarEn.internal(_root);
}

// Path: features.library
class TranslationsFeaturesLibraryEn {
	TranslationsFeaturesLibraryEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesLibraryHeaderEn header = TranslationsFeaturesLibraryHeaderEn.internal(_root);
	late final TranslationsFeaturesLibraryFilterAllEn filterAll = TranslationsFeaturesLibraryFilterAllEn.internal(_root);
	late final TranslationsFeaturesLibraryFilterStressEn filterStress = TranslationsFeaturesLibraryFilterStressEn.internal(_root);
	late final TranslationsFeaturesLibraryFilterSleepEn filterSleep = TranslationsFeaturesLibraryFilterSleepEn.internal(_root);
	late final TranslationsFeaturesLibraryFilterSelfEn filterSelf = TranslationsFeaturesLibraryFilterSelfEn.internal(_root);
	late final TranslationsFeaturesLibraryFilterRelationsEn filterRelations = TranslationsFeaturesLibraryFilterRelationsEn.internal(_root);
	late final TranslationsFeaturesLibraryFilterFocusEn filterFocus = TranslationsFeaturesLibraryFilterFocusEn.internal(_root);
	late final TranslationsFeaturesLibraryFilterBodyEn filterBody = TranslationsFeaturesLibraryFilterBodyEn.internal(_root);
	late final TranslationsFeaturesLibraryTodayPickEn todayPick = TranslationsFeaturesLibraryTodayPickEn.internal(_root);
	late final TranslationsFeaturesLibraryFreeBadgeEn freeBadge = TranslationsFeaturesLibraryFreeBadgeEn.internal(_root);
	late final TranslationsFeaturesLibraryAllSessionsEn allSessions = TranslationsFeaturesLibraryAllSessionsEn.internal(_root);
}

// Path: features.login
class TranslationsFeaturesLoginEn {
	TranslationsFeaturesLoginEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesLoginAppleButtonEn appleButton = TranslationsFeaturesLoginAppleButtonEn.internal(_root);
	late final TranslationsFeaturesLoginDontHaveAnAccountEn dontHaveAnAccount = TranslationsFeaturesLoginDontHaveAnAccountEn.internal(_root);
	late final TranslationsFeaturesLoginEmailButtonEn emailButton = TranslationsFeaturesLoginEmailButtonEn.internal(_root);
	late final TranslationsFeaturesLoginGoogleButtonEn googleButton = TranslationsFeaturesLoginGoogleButtonEn.internal(_root);
	late final TranslationsFeaturesLoginSignUpLinkEn signUpLink = TranslationsFeaturesLoginSignUpLinkEn.internal(_root);
	late final TranslationsFeaturesLoginTitleEn title = TranslationsFeaturesLoginTitleEn.internal(_root);
}

// Path: features.loginPassword
class TranslationsFeaturesLoginPasswordEn {
	TranslationsFeaturesLoginPasswordEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesLoginPasswordEmailFieldEn emailField = TranslationsFeaturesLoginPasswordEmailFieldEn.internal(_root);

	/// en: 'Failed to sign in'
	String get failedToSignIn => 'Failed to sign in';

	late final TranslationsFeaturesLoginPasswordHeaderEn header = TranslationsFeaturesLoginPasswordHeaderEn.internal(_root);
	late final TranslationsFeaturesLoginPasswordPasswordFieldEn passwordField = TranslationsFeaturesLoginPasswordPasswordFieldEn.internal(_root);
	late final TranslationsFeaturesLoginPasswordPasswordResetLinkEn passwordResetLink = TranslationsFeaturesLoginPasswordPasswordResetLinkEn.internal(_root);
	late final TranslationsFeaturesLoginPasswordSignInButtonEn signInButton = TranslationsFeaturesLoginPasswordSignInButtonEn.internal(_root);
}

// Path: features.logoutConfirm
class TranslationsFeaturesLogoutConfirmEn {
	TranslationsFeaturesLogoutConfirmEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesLogoutConfirmCancelButtonEn cancelButton = TranslationsFeaturesLogoutConfirmCancelButtonEn.internal(_root);
	late final TranslationsFeaturesLogoutConfirmConfirmButtonEn confirmButton = TranslationsFeaturesLogoutConfirmConfirmButtonEn.internal(_root);

	/// en: 'Sign out?'
	String get title => 'Sign out?';
}

// Path: features.notFound
class TranslationsFeaturesNotFoundEn {
	TranslationsFeaturesNotFoundEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesNotFoundBodyEn body = TranslationsFeaturesNotFoundBodyEn.internal(_root);
	late final TranslationsFeaturesNotFoundGoHomeButtonEn goHomeButton = TranslationsFeaturesNotFoundGoHomeButtonEn.internal(_root);
}

// Path: features.passwordReset
class TranslationsFeaturesPasswordResetEn {
	TranslationsFeaturesPasswordResetEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesPasswordResetButtonEn button = TranslationsFeaturesPasswordResetButtonEn.internal(_root);
	late final TranslationsFeaturesPasswordResetContactSupportButtonEn contactSupportButton = TranslationsFeaturesPasswordResetContactSupportButtonEn.internal(_root);
	late final TranslationsFeaturesPasswordResetEmailFieldEn emailField = TranslationsFeaturesPasswordResetEmailFieldEn.internal(_root);

	/// en: 'Failed to send password reset email'
	String get failedToSendPasswordResetEmail => 'Failed to send password reset email';

	late final TranslationsFeaturesPasswordResetHeaderEn header = TranslationsFeaturesPasswordResetHeaderEn.internal(_root);
	late final TranslationsFeaturesPasswordResetHelpPromptEn helpPrompt = TranslationsFeaturesPasswordResetHelpPromptEn.internal(_root);

	/// en: 'Check your inbox for the password reset link'
	String get sendPasswordResetEmailSucceeded => 'Check your inbox for the password reset link';
}

// Path: features.paywall
class TranslationsFeaturesPaywallEn {
	TranslationsFeaturesPaywallEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesPaywallSheetTitleEn sheetTitle = TranslationsFeaturesPaywallSheetTitleEn.internal(_root);
	late final TranslationsFeaturesPaywallHeaderEn header = TranslationsFeaturesPaywallHeaderEn.internal(_root);
	late final TranslationsFeaturesPaywallAnnualPlanEn annualPlan = TranslationsFeaturesPaywallAnnualPlanEn.internal(_root);
	late final TranslationsFeaturesPaywallSinglePlanEn singlePlan = TranslationsFeaturesPaywallSinglePlanEn.internal(_root);
	late final TranslationsFeaturesPaywallFeature1En feature1 = TranslationsFeaturesPaywallFeature1En.internal(_root);
	late final TranslationsFeaturesPaywallFeature2En feature2 = TranslationsFeaturesPaywallFeature2En.internal(_root);
	late final TranslationsFeaturesPaywallFeature3En feature3 = TranslationsFeaturesPaywallFeature3En.internal(_root);
	late final TranslationsFeaturesPaywallFeature4En feature4 = TranslationsFeaturesPaywallFeature4En.internal(_root);
	late final TranslationsFeaturesPaywallSubscribeButtonEn subscribeButton = TranslationsFeaturesPaywallSubscribeButtonEn.internal(_root);
	late final TranslationsFeaturesPaywallRedeemButtonEn redeemButton = TranslationsFeaturesPaywallRedeemButtonEn.internal(_root);
}

// Path: features.player
class TranslationsFeaturesPlayerEn {
	TranslationsFeaturesPlayerEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesPlayerNowPlayingEn nowPlaying = TranslationsFeaturesPlayerNowPlayingEn.internal(_root);
}

// Path: features.profile
class TranslationsFeaturesProfileEn {
	TranslationsFeaturesProfileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesProfileHeaderEn header = TranslationsFeaturesProfileHeaderEn.internal(_root);
	late final TranslationsFeaturesProfileYourProfileEn yourProfile = TranslationsFeaturesProfileYourProfileEn.internal(_root);
	late final TranslationsFeaturesProfileRedoButtonEn redoButton = TranslationsFeaturesProfileRedoButtonEn.internal(_root);
	late final TranslationsFeaturesProfileSavedRowEn savedRow = TranslationsFeaturesProfileSavedRowEn.internal(_root);
	late final TranslationsFeaturesProfileOfflineRowEn offlineRow = TranslationsFeaturesProfileOfflineRowEn.internal(_root);
	late final TranslationsFeaturesProfileLanguageRowEn languageRow = TranslationsFeaturesProfileLanguageRowEn.internal(_root);
	late final TranslationsFeaturesProfilePrivacyRowEn privacyRow = TranslationsFeaturesProfilePrivacyRowEn.internal(_root);
	late final TranslationsFeaturesProfileSettingsRowEn settingsRow = TranslationsFeaturesProfileSettingsRowEn.internal(_root);
	late final TranslationsFeaturesProfileFooterEn footer = TranslationsFeaturesProfileFooterEn.internal(_root);
}

// Path: features.results
class TranslationsFeaturesResultsEn {
	TranslationsFeaturesResultsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesResultsHeaderEn header = TranslationsFeaturesResultsHeaderEn.internal(_root);
	late final TranslationsFeaturesResultsStrengthsEn strengths = TranslationsFeaturesResultsStrengthsEn.internal(_root);
	late final TranslationsFeaturesResultsGrowthEn growth = TranslationsFeaturesResultsGrowthEn.internal(_root);
	late final TranslationsFeaturesResultsRecommendedEn recommended = TranslationsFeaturesResultsRecommendedEn.internal(_root);
	late final TranslationsFeaturesResultsContinueButtonEn continueButton = TranslationsFeaturesResultsContinueButtonEn.internal(_root);
	late final TranslationsFeaturesResultsSavePdfButtonEn savePdfButton = TranslationsFeaturesResultsSavePdfButtonEn.internal(_root);
}

// Path: features.safetyBlocked
class TranslationsFeaturesSafetyBlockedEn {
	TranslationsFeaturesSafetyBlockedEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesSafetyBlockedHeaderEn header = TranslationsFeaturesSafetyBlockedHeaderEn.internal(_root);
	late final TranslationsFeaturesSafetyBlockedAcuteHelpEn acuteHelp = TranslationsFeaturesSafetyBlockedAcuteHelpEn.internal(_root);
	late final TranslationsFeaturesSafetyBlockedContactSeelsorgeEn contactSeelsorge = TranslationsFeaturesSafetyBlockedContactSeelsorgeEn.internal(_root);
	late final TranslationsFeaturesSafetyBlockedContactEmergencyEn contactEmergency = TranslationsFeaturesSafetyBlockedContactEmergencyEn.internal(_root);
	late final TranslationsFeaturesSafetyBlockedContactKrisenchatEn contactKrisenchat = TranslationsFeaturesSafetyBlockedContactKrisenchatEn.internal(_root);
	late final TranslationsFeaturesSafetyBlockedBackButtonEn backButton = TranslationsFeaturesSafetyBlockedBackButtonEn.internal(_root);
}

// Path: features.safetyCheck
class TranslationsFeaturesSafetyCheckEn {
	TranslationsFeaturesSafetyCheckEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesSafetyCheckHeaderEn header = TranslationsFeaturesSafetyCheckHeaderEn.internal(_root);
	late final TranslationsFeaturesSafetyCheckQuestion1En question1 = TranslationsFeaturesSafetyCheckQuestion1En.internal(_root);
	late final TranslationsFeaturesSafetyCheckQuestion2En question2 = TranslationsFeaturesSafetyCheckQuestion2En.internal(_root);
	late final TranslationsFeaturesSafetyCheckQuestion3En question3 = TranslationsFeaturesSafetyCheckQuestion3En.internal(_root);
	late final TranslationsFeaturesSafetyCheckQuestion4En question4 = TranslationsFeaturesSafetyCheckQuestion4En.internal(_root);
	late final TranslationsFeaturesSafetyCheckQuestion5En question5 = TranslationsFeaturesSafetyCheckQuestion5En.internal(_root);
	late final TranslationsFeaturesSafetyCheckYesButtonEn yesButton = TranslationsFeaturesSafetyCheckYesButtonEn.internal(_root);
	late final TranslationsFeaturesSafetyCheckNoButtonEn noButton = TranslationsFeaturesSafetyCheckNoButtonEn.internal(_root);
	late final TranslationsFeaturesSafetyCheckConfirmButtonEn confirmButton = TranslationsFeaturesSafetyCheckConfirmButtonEn.internal(_root);
	late final TranslationsFeaturesSafetyCheckFooterEn footer = TranslationsFeaturesSafetyCheckFooterEn.internal(_root);
}

// Path: features.settings
class TranslationsFeaturesSettingsEn {
	TranslationsFeaturesSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesSettingsAppSectionEn appSection = TranslationsFeaturesSettingsAppSectionEn.internal(_root);
	late final TranslationsFeaturesSettingsAppSectionTileSubscriptionEn appSectionTileSubscription = TranslationsFeaturesSettingsAppSectionTileSubscriptionEn.internal(_root);
	late final TranslationsFeaturesSettingsAppSectionTileAppearanceEn appSectionTileAppearance = TranslationsFeaturesSettingsAppSectionTileAppearanceEn.internal(_root);
	late final TranslationsFeaturesSettingsAppSectionTileSystemLanguageEn appSectionTileSystemLanguage = TranslationsFeaturesSettingsAppSectionTileSystemLanguageEn.internal(_root);
	late final TranslationsFeaturesSettingsDeleteAccountButtonEn deleteAccountButton = TranslationsFeaturesSettingsDeleteAccountButtonEn.internal(_root);
	late final TranslationsFeaturesSettingsHeaderEn header = TranslationsFeaturesSettingsHeaderEn.internal(_root);
	late final TranslationsFeaturesSettingsLegalSectionEn legalSection = TranslationsFeaturesSettingsLegalSectionEn.internal(_root);
	late final TranslationsFeaturesSettingsLegalSectionTileEn legalSectionTile = TranslationsFeaturesSettingsLegalSectionTileEn.internal(_root);
	late final TranslationsFeaturesSettingsSignOutButtonEn signOutButton = TranslationsFeaturesSettingsSignOutButtonEn.internal(_root);
	late final TranslationsFeaturesSettingsVersionEn version = TranslationsFeaturesSettingsVersionEn.internal(_root);
}

// Path: features.settingsAppearance
class TranslationsFeaturesSettingsAppearanceEn {
	TranslationsFeaturesSettingsAppearanceEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesSettingsAppearanceHeaderEn header = TranslationsFeaturesSettingsAppearanceHeaderEn.internal(_root);
}

// Path: features.settingsSystemLanguage
class TranslationsFeaturesSettingsSystemLanguageEn {
	TranslationsFeaturesSettingsSystemLanguageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesSettingsSystemLanguageHeaderEn header = TranslationsFeaturesSettingsSystemLanguageHeaderEn.internal(_root);
}

// Path: features.signUp
class TranslationsFeaturesSignUpEn {
	TranslationsFeaturesSignUpEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesSignUpAlreadyHaveAnAccountEn alreadyHaveAnAccount = TranslationsFeaturesSignUpAlreadyHaveAnAccountEn.internal(_root);
	late final TranslationsFeaturesSignUpAppleButtonEn appleButton = TranslationsFeaturesSignUpAppleButtonEn.internal(_root);
	late final TranslationsFeaturesSignUpEmailButtonEn emailButton = TranslationsFeaturesSignUpEmailButtonEn.internal(_root);
	late final TranslationsFeaturesSignUpGoogleButtonEn googleButton = TranslationsFeaturesSignUpGoogleButtonEn.internal(_root);
	late final TranslationsFeaturesSignUpLogInLinkEn logInLink = TranslationsFeaturesSignUpLogInLinkEn.internal(_root);
	late final TranslationsFeaturesSignUpTitleEn title = TranslationsFeaturesSignUpTitleEn.internal(_root);
}

// Path: features.signUpPassword
class TranslationsFeaturesSignUpPasswordEn {
	TranslationsFeaturesSignUpPasswordEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesSignUpPasswordEmailButtonEn emailButton = TranslationsFeaturesSignUpPasswordEmailButtonEn.internal(_root);
	late final TranslationsFeaturesSignUpPasswordEmailFieldEn emailField = TranslationsFeaturesSignUpPasswordEmailFieldEn.internal(_root);

	/// en: 'Failed to create account'
	String get failedToSignUp => 'Failed to create account';

	late final TranslationsFeaturesSignUpPasswordHeaderEn header = TranslationsFeaturesSignUpPasswordHeaderEn.internal(_root);
	late final TranslationsFeaturesSignUpPasswordPasswordButtonEn passwordButton = TranslationsFeaturesSignUpPasswordPasswordButtonEn.internal(_root);
	late final TranslationsFeaturesSignUpPasswordPasswordFieldEn passwordField = TranslationsFeaturesSignUpPasswordPasswordFieldEn.internal(_root);
}

// Path: features.today
class TranslationsFeaturesTodayEn {
	TranslationsFeaturesTodayEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesTodayHeaderEn header = TranslationsFeaturesTodayHeaderEn.internal(_root);
	late final TranslationsFeaturesTodayAssessmentBannerEn assessmentBanner = TranslationsFeaturesTodayAssessmentBannerEn.internal(_root);
	late final TranslationsFeaturesTodayFeaturedCardEn featuredCard = TranslationsFeaturesTodayFeaturedCardEn.internal(_root);
	late final TranslationsFeaturesTodayAiRecLabelEn aiRecLabel = TranslationsFeaturesTodayAiRecLabelEn.internal(_root);
	late final TranslationsFeaturesTodayPracticeNoteEn practiceNote = TranslationsFeaturesTodayPracticeNoteEn.internal(_root);
}

// Path: features.verifyEmail
class TranslationsFeaturesVerifyEmailEn {
	TranslationsFeaturesVerifyEmailEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesVerifyEmailBodyEn body = TranslationsFeaturesVerifyEmailBodyEn.internal(_root);
	late final TranslationsFeaturesVerifyEmailHeaderEn header = TranslationsFeaturesVerifyEmailHeaderEn.internal(_root);
	late final TranslationsFeaturesVerifyEmailSendButtonEn sendButton = TranslationsFeaturesVerifyEmailSendButtonEn.internal(_root);

	/// en: 'Failed to send verification email'
	String get sendVerifyEmailFailed => 'Failed to send verification email';
}

// Path: features.welcome
class TranslationsFeaturesWelcomeEn {
	TranslationsFeaturesWelcomeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesWelcomeSlide1En slide1 = TranslationsFeaturesWelcomeSlide1En.internal(_root);
	late final TranslationsFeaturesWelcomeSlide2En slide2 = TranslationsFeaturesWelcomeSlide2En.internal(_root);
	late final TranslationsFeaturesWelcomeSlide3En slide3 = TranslationsFeaturesWelcomeSlide3En.internal(_root);
	late final TranslationsFeaturesWelcomeContinueButtonEn continueButton = TranslationsFeaturesWelcomeContinueButtonEn.internal(_root);
	late final TranslationsFeaturesWelcomeBeginButtonEn beginButton = TranslationsFeaturesWelcomeBeginButtonEn.internal(_root);
	late final TranslationsFeaturesWelcomeSkipButtonEn skipButton = TranslationsFeaturesWelcomeSkipButtonEn.internal(_root);
}

// Path: utils.domain
class TranslationsUtilsDomainEn {
	TranslationsUtilsDomainEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUtilsDomainAppDataEn appData = TranslationsUtilsDomainAppDataEn.internal(_root);
}

// Path: utils.locale
class TranslationsUtilsLocaleEn {
	TranslationsUtilsLocaleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUtilsLocaleDeEn de = TranslationsUtilsLocaleDeEn.internal(_root);
	late final TranslationsUtilsLocaleEnEn en = TranslationsUtilsLocaleEnEn.internal(_root);
}

// Path: features.accountCreate.createButton
class TranslationsFeaturesAccountCreateCreateButtonEn {
	TranslationsFeaturesAccountCreateCreateButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Create Account'
	String get label => 'Create Account';
}

// Path: features.accountCreate.header
class TranslationsFeaturesAccountCreateHeaderEn {
	TranslationsFeaturesAccountCreateHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Create Account'
	String get title => 'Create Account';
}

// Path: features.accountCreate.nameField
class TranslationsFeaturesAccountCreateNameFieldEn {
	TranslationsFeaturesAccountCreateNameFieldEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How should we call you?'
	String get description => 'How should we call you?';

	/// en: 'Name'
	String get label => 'Name';
}

// Path: features.accountCreate.privacyItem
class TranslationsFeaturesAccountCreatePrivacyItemEn {
	TranslationsFeaturesAccountCreatePrivacyItemEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Read Privacy Policy'
	String get description => 'Read Privacy Policy';

	/// en: 'I have read the Privacy Policy'
	String get label => 'I have read the Privacy Policy';
}

// Path: features.accountCreate.requiredBadge
class TranslationsFeaturesAccountCreateRequiredBadgeEn {
	TranslationsFeaturesAccountCreateRequiredBadgeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Required'
	String get label => 'Required';
}

// Path: features.accountCreate.termsItem
class TranslationsFeaturesAccountCreateTermsItemEn {
	TranslationsFeaturesAccountCreateTermsItemEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Read Terms of Use'
	String get description => 'Read Terms of Use';

	/// en: 'I agree to the Terms of Use'
	String get label => 'I agree to the Terms of Use';
}

// Path: features.assessment.header
class TranslationsFeaturesAssessmentHeaderEn {
	TranslationsFeaturesAssessmentHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Stress response'
	String get axisStress => 'Stress response';

	/// en: 'Rest & sleep'
	String get axisSleep => 'Rest & sleep';

	/// en: 'Self-relation'
	String get axisSelf => 'Self-relation';

	/// en: 'Focus & follow-through'
	String get axisFocus => 'Focus & follow-through';

	/// en: 'Relationships'
	String get axisRelations => 'Relationships';

	/// en: 'Body awareness'
	String get axisBody => 'Body awareness';
}

// Path: features.assessment.footer
class TranslationsFeaturesAssessmentFooterEn {
	TranslationsFeaturesAssessmentFooterEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'There are no right answers.'
	String get text => 'There are no right answers.';
}

// Path: features.assessment.skipButton
class TranslationsFeaturesAssessmentSkipButtonEn {
	TranslationsFeaturesAssessmentSkipButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Skip'
	String get text => 'Skip';
}

// Path: features.assessment.likert
class TranslationsFeaturesAssessmentLikertEn {
	TranslationsFeaturesAssessmentLikertEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Disagree'
	String get disagree => 'Disagree';

	/// en: 'Agree'
	String get agree => 'Agree';

	/// en: 'Tap a circle to answer'
	String get hint => 'Tap a circle to answer';

	/// en: 'Strongly disagree'
	String get stronglyDisagree => 'Strongly disagree';

	/// en: 'Neutral'
	String get neutral => 'Neutral';

	/// en: 'Strongly agree'
	String get stronglyAgree => 'Strongly agree';
}

// Path: features.auth.loginButton
class TranslationsFeaturesAuthLoginButtonEn {
	TranslationsFeaturesAuthLoginButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login'
	String get title => 'Login';
}

// Path: features.auth.signUpButton
class TranslationsFeaturesAuthSignUpButtonEn {
	TranslationsFeaturesAuthSignUpButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign up for free'
	String get title => 'Sign up for free';
}

// Path: features.auth.title
class TranslationsFeaturesAuthTitleEn {
	TranslationsFeaturesAuthTitleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Find your calm. With sayko.'
	String get text => 'Find your calm.\n With sayko.';
}

// Path: features.deleteAccountConfirm.cancelButton
class TranslationsFeaturesDeleteAccountConfirmCancelButtonEn {
	TranslationsFeaturesDeleteAccountConfirmCancelButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cancel'
	String get text => 'Cancel';
}

// Path: features.deleteAccountConfirm.confirmButton
class TranslationsFeaturesDeleteAccountConfirmConfirmButtonEn {
	TranslationsFeaturesDeleteAccountConfirmConfirmButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete Account'
	String get text => 'Delete Account';
}

// Path: features.home.header
class TranslationsFeaturesHomeHeaderEn {
	TranslationsFeaturesHomeHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get title => 'Home';
}

// Path: features.launchpad.bottomNavigationBar
class TranslationsFeaturesLaunchpadBottomNavigationBarEn {
	TranslationsFeaturesLaunchpadBottomNavigationBarEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today'
	String get today => 'Today';

	/// en: 'Library'
	String get library => 'Library';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Settings'
	String get settings => 'Settings';
}

// Path: features.library.header
class TranslationsFeaturesLibraryHeaderEn {
	TranslationsFeaturesLibraryHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Library'
	String get eyebrow => 'Library';

	/// en: 'What do you need today?'
	String get title => 'What do you need today?';
}

// Path: features.library.filterAll
class TranslationsFeaturesLibraryFilterAllEn {
	TranslationsFeaturesLibraryFilterAllEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'All'
	String get label => 'All';
}

// Path: features.library.filterStress
class TranslationsFeaturesLibraryFilterStressEn {
	TranslationsFeaturesLibraryFilterStressEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Stress'
	String get label => 'Stress';
}

// Path: features.library.filterSleep
class TranslationsFeaturesLibraryFilterSleepEn {
	TranslationsFeaturesLibraryFilterSleepEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sleep'
	String get label => 'Sleep';
}

// Path: features.library.filterSelf
class TranslationsFeaturesLibraryFilterSelfEn {
	TranslationsFeaturesLibraryFilterSelfEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Self'
	String get label => 'Self';
}

// Path: features.library.filterRelations
class TranslationsFeaturesLibraryFilterRelationsEn {
	TranslationsFeaturesLibraryFilterRelationsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Relationships'
	String get label => 'Relationships';
}

// Path: features.library.filterFocus
class TranslationsFeaturesLibraryFilterFocusEn {
	TranslationsFeaturesLibraryFilterFocusEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Focus'
	String get label => 'Focus';
}

// Path: features.library.filterBody
class TranslationsFeaturesLibraryFilterBodyEn {
	TranslationsFeaturesLibraryFilterBodyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Body'
	String get label => 'Body';
}

// Path: features.library.todayPick
class TranslationsFeaturesLibraryTodayPickEn {
	TranslationsFeaturesLibraryTodayPickEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today's pick'
	String get badge => 'Today\'s pick';
}

// Path: features.library.freeBadge
class TranslationsFeaturesLibraryFreeBadgeEn {
	TranslationsFeaturesLibraryFreeBadgeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Free'
	String get label => 'Free';
}

// Path: features.library.allSessions
class TranslationsFeaturesLibraryAllSessionsEn {
	TranslationsFeaturesLibraryAllSessionsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'All sessions'
	String get label => 'All sessions';
}

// Path: features.login.appleButton
class TranslationsFeaturesLoginAppleButtonEn {
	TranslationsFeaturesLoginAppleButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue with Apple'
	String get text => 'Continue with Apple';
}

// Path: features.login.dontHaveAnAccount
class TranslationsFeaturesLoginDontHaveAnAccountEn {
	TranslationsFeaturesLoginDontHaveAnAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Don't have an account?'
	String get text => 'Don\'t have an account?';
}

// Path: features.login.emailButton
class TranslationsFeaturesLoginEmailButtonEn {
	TranslationsFeaturesLoginEmailButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue with Email'
	String get text => 'Continue with Email';
}

// Path: features.login.googleButton
class TranslationsFeaturesLoginGoogleButtonEn {
	TranslationsFeaturesLoginGoogleButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue with Google'
	String get text => 'Continue with Google';
}

// Path: features.login.signUpLink
class TranslationsFeaturesLoginSignUpLinkEn {
	TranslationsFeaturesLoginSignUpLinkEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign Up'
	String get text => 'Sign Up';
}

// Path: features.login.title
class TranslationsFeaturesLoginTitleEn {
	TranslationsFeaturesLoginTitleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login to Sayko'
	String get text => 'Login to Sayko';
}

// Path: features.loginPassword.emailField
class TranslationsFeaturesLoginPasswordEmailFieldEn {
	TranslationsFeaturesLoginPasswordEmailFieldEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Email'
	String get label => 'Email';
}

// Path: features.loginPassword.header
class TranslationsFeaturesLoginPasswordHeaderEn {
	TranslationsFeaturesLoginPasswordHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign In'
	String get title => 'Sign In';
}

// Path: features.loginPassword.passwordField
class TranslationsFeaturesLoginPasswordPasswordFieldEn {
	TranslationsFeaturesLoginPasswordPasswordFieldEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Password'
	String get label => 'Password';
}

// Path: features.loginPassword.passwordResetLink
class TranslationsFeaturesLoginPasswordPasswordResetLinkEn {
	TranslationsFeaturesLoginPasswordPasswordResetLinkEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Forgot Password?'
	String get link => 'Forgot Password?';
}

// Path: features.loginPassword.signInButton
class TranslationsFeaturesLoginPasswordSignInButtonEn {
	TranslationsFeaturesLoginPasswordSignInButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign In'
	String get text => 'Sign In';
}

// Path: features.logoutConfirm.cancelButton
class TranslationsFeaturesLogoutConfirmCancelButtonEn {
	TranslationsFeaturesLogoutConfirmCancelButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cancel'
	String get text => 'Cancel';
}

// Path: features.logoutConfirm.confirmButton
class TranslationsFeaturesLogoutConfirmConfirmButtonEn {
	TranslationsFeaturesLogoutConfirmConfirmButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Logout'
	String get text => 'Logout';
}

// Path: features.notFound.body
class TranslationsFeaturesNotFoundBodyEn {
	TranslationsFeaturesNotFoundBodyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesNotFoundBodySubtitleEn subtitle = TranslationsFeaturesNotFoundBodySubtitleEn.internal(_root);
	late final TranslationsFeaturesNotFoundBodyTitleEn title = TranslationsFeaturesNotFoundBodyTitleEn.internal(_root);
}

// Path: features.notFound.goHomeButton
class TranslationsFeaturesNotFoundGoHomeButtonEn {
	TranslationsFeaturesNotFoundGoHomeButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Go Home'
	String get title => 'Go Home';
}

// Path: features.passwordReset.button
class TranslationsFeaturesPasswordResetButtonEn {
	TranslationsFeaturesPasswordResetButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Send Reset Link'
	String get label => 'Send Reset Link';
}

// Path: features.passwordReset.contactSupportButton
class TranslationsFeaturesPasswordResetContactSupportButtonEn {
	TranslationsFeaturesPasswordResetContactSupportButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Contact Support'
	String get text => 'Contact Support';
}

// Path: features.passwordReset.emailField
class TranslationsFeaturesPasswordResetEmailFieldEn {
	TranslationsFeaturesPasswordResetEmailFieldEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Email address'
	String get label => 'Email address';
}

// Path: features.passwordReset.header
class TranslationsFeaturesPasswordResetHeaderEn {
	TranslationsFeaturesPasswordResetHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reset Password'
	String get title => 'Reset Password';
}

// Path: features.passwordReset.helpPrompt
class TranslationsFeaturesPasswordResetHelpPromptEn {
	TranslationsFeaturesPasswordResetHelpPromptEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Need more help?'
	String get text => 'Need more help?';
}

// Path: features.paywall.sheetTitle
class TranslationsFeaturesPaywallSheetTitleEn {
	TranslationsFeaturesPaywallSheetTitleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Premium'
	String get text => 'Premium';
}

// Path: features.paywall.header
class TranslationsFeaturesPaywallHeaderEn {
	TranslationsFeaturesPaywallHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Unlock the full library.'
	String get title => 'Unlock the full library.';

	/// en: 'Over 30 sessions drawn from twelve years of therapeutic practice. New content every week.'
	String get body => 'Over 30 sessions drawn from twelve years of therapeutic practice. New content every week.';
}

// Path: features.paywall.annualPlan
class TranslationsFeaturesPaywallAnnualPlanEn {
	TranslationsFeaturesPaywallAnnualPlanEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Annual'
	String get title => 'Annual';

	/// en: 'Best value'
	String get badge => 'Best value';
}

// Path: features.paywall.singlePlan
class TranslationsFeaturesPaywallSinglePlanEn {
	TranslationsFeaturesPaywallSinglePlanEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Single session'
	String get title => 'Single session';

	/// en: 'Lifetime access'
	String get sub => 'Lifetime access';
}

// Path: features.paywall.feature1
class TranslationsFeaturesPaywallFeature1En {
	TranslationsFeaturesPaywallFeature1En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '30+ hypnosis sessions'
	String get label => '30+ hypnosis sessions';
}

// Path: features.paywall.feature2
class TranslationsFeaturesPaywallFeature2En {
	TranslationsFeaturesPaywallFeature2En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Listen offline'
	String get label => 'Listen offline';
}

// Path: features.paywall.feature3
class TranslationsFeaturesPaywallFeature3En {
	TranslationsFeaturesPaywallFeature3En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'AI-matched to your profile'
	String get label => 'AI-matched to your profile';
}

// Path: features.paywall.feature4
class TranslationsFeaturesPaywallFeature4En {
	TranslationsFeaturesPaywallFeature4En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cancel anytime'
	String get label => 'Cancel anytime';
}

// Path: features.paywall.subscribeButton
class TranslationsFeaturesPaywallSubscribeButtonEn {
	TranslationsFeaturesPaywallSubscribeButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Subscribe now'
	String get text => 'Subscribe now';
}

// Path: features.paywall.redeemButton
class TranslationsFeaturesPaywallRedeemButtonEn {
	TranslationsFeaturesPaywallRedeemButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Redeem a code'
	String get text => 'Redeem a code';
}

// Path: features.player.nowPlaying
class TranslationsFeaturesPlayerNowPlayingEn {
	TranslationsFeaturesPlayerNowPlayingEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Now playing'
	String get label => 'Now playing';
}

// Path: features.profile.header
class TranslationsFeaturesProfileHeaderEn {
	TranslationsFeaturesProfileHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile'
	String get eyebrow => 'Profile';

	/// en: 'Anna M.'
	String get name => 'Anna M.';

	/// en: 'anna@example.com'
	String get email => 'anna@example.com';
}

// Path: features.profile.yourProfile
class TranslationsFeaturesProfileYourProfileEn {
	TranslationsFeaturesProfileYourProfileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your profile'
	String get label => 'Your profile';
}

// Path: features.profile.redoButton
class TranslationsFeaturesProfileRedoButtonEn {
	TranslationsFeaturesProfileRedoButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Retake'
	String get text => 'Retake';
}

// Path: features.profile.savedRow
class TranslationsFeaturesProfileSavedRowEn {
	TranslationsFeaturesProfileSavedRowEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Saved'
	String get label => 'Saved';
}

// Path: features.profile.offlineRow
class TranslationsFeaturesProfileOfflineRowEn {
	TranslationsFeaturesProfileOfflineRowEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Downloaded'
	String get label => 'Downloaded';
}

// Path: features.profile.languageRow
class TranslationsFeaturesProfileLanguageRowEn {
	TranslationsFeaturesProfileLanguageRowEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Language'
	String get label => 'Language';
}

// Path: features.profile.privacyRow
class TranslationsFeaturesProfilePrivacyRowEn {
	TranslationsFeaturesProfilePrivacyRowEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Privacy'
	String get label => 'Privacy';
}

// Path: features.profile.settingsRow
class TranslationsFeaturesProfileSettingsRowEn {
	TranslationsFeaturesProfileSettingsRowEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get label => 'Settings';
}

// Path: features.profile.footer
class TranslationsFeaturesProfileFooterEn {
	TranslationsFeaturesProfileFooterEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'A practice from Anna Reiter. © 2026.'
	String get text => 'A practice from Anna Reiter. © 2026.';
}

// Path: features.results.header
class TranslationsFeaturesResultsHeaderEn {
	TranslationsFeaturesResultsHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your profile'
	String get eyebrow => 'Your profile';

	/// en: 'You're carrying a lot. Let's lighten the load.'
	String get title => 'You\'re carrying a lot.\nLet\'s lighten the load.';
}

// Path: features.results.strengths
class TranslationsFeaturesResultsStrengthsEn {
	TranslationsFeaturesResultsStrengthsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Strengths'
	String get label => 'Strengths';
}

// Path: features.results.growth
class TranslationsFeaturesResultsGrowthEn {
	TranslationsFeaturesResultsGrowthEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Areas to tend to'
	String get label => 'Areas to tend to';
}

// Path: features.results.recommended
class TranslationsFeaturesResultsRecommendedEn {
	TranslationsFeaturesResultsRecommendedEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Recommended for you'
	String get title => 'Recommended for you';
}

// Path: features.results.continueButton
class TranslationsFeaturesResultsContinueButtonEn {
	TranslationsFeaturesResultsContinueButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Go to library'
	String get text => 'Go to library';
}

// Path: features.results.savePdfButton
class TranslationsFeaturesResultsSavePdfButtonEn {
	TranslationsFeaturesResultsSavePdfButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Save profile as PDF'
	String get text => 'Save profile as PDF';
}

// Path: features.safetyBlocked.header
class TranslationsFeaturesSafetyBlockedHeaderEn {
	TranslationsFeaturesSafetyBlockedHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What you're going through deserves more than an app.'
	String get title => 'What you\'re going through deserves more than an app.';

	/// en: 'Based on your answers, we recommend reaching out to someone who can support you directly.'
	String get body => 'Based on your answers, we recommend reaching out to someone who can support you directly.';
}

// Path: features.safetyBlocked.acuteHelp
class TranslationsFeaturesSafetyBlockedAcuteHelpEn {
	TranslationsFeaturesSafetyBlockedAcuteHelpEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Acute help'
	String get label => 'Acute help';
}

// Path: features.safetyBlocked.contactSeelsorge
class TranslationsFeaturesSafetyBlockedContactSeelsorgeEn {
	TranslationsFeaturesSafetyBlockedContactSeelsorgeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Telefonseelsorge'
	String get label => 'Telefonseelsorge';

	/// en: '0800 111 0 111 — 24/7, free'
	String get sub => '0800 111 0 111 — 24/7, free';
}

// Path: features.safetyBlocked.contactEmergency
class TranslationsFeaturesSafetyBlockedContactEmergencyEn {
	TranslationsFeaturesSafetyBlockedContactEmergencyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Emergency'
	String get label => 'Emergency';

	/// en: '112 — for acute danger'
	String get sub => '112 — for acute danger';
}

// Path: features.safetyBlocked.contactKrisenchat
class TranslationsFeaturesSafetyBlockedContactKrisenchatEn {
	TranslationsFeaturesSafetyBlockedContactKrisenchatEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'krisenchat.de'
	String get label => 'krisenchat.de';

	/// en: 'Chat counseling, free'
	String get sub => 'Chat counseling, free';
}

// Path: features.safetyBlocked.backButton
class TranslationsFeaturesSafetyBlockedBackButtonEn {
	TranslationsFeaturesSafetyBlockedBackButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Review safety answers'
	String get text => 'Review safety answers';
}

// Path: features.safetyCheck.header
class TranslationsFeaturesSafetyCheckHeaderEn {
	TranslationsFeaturesSafetyCheckHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Before we begin'
	String get eyebrow => 'Before we begin';

	/// en: 'A short safety check.'
	String get title => 'A short safety check.';

	/// en: 'Hypnosis is safe for most people, but not all. Please answer two short questions.'
	String get body => 'Hypnosis is safe for most people, but not all. Please answer two short questions.';
}

// Path: features.safetyCheck.question1
class TranslationsFeaturesSafetyCheckQuestion1En {
	TranslationsFeaturesSafetyCheckQuestion1En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Do you have a diagnosis of epilepsy or a history of seizures?'
	String get text => 'Do you have a diagnosis of epilepsy or a history of seizures?';
}

// Path: features.safetyCheck.question2
class TranslationsFeaturesSafetyCheckQuestion2En {
	TranslationsFeaturesSafetyCheckQuestion2En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Have you experienced psychosis, dissociative disorders, or severe untreated mental illness?'
	String get text => 'Have you experienced psychosis, dissociative disorders, or severe untreated mental illness?';
}

// Path: features.safetyCheck.question3
class TranslationsFeaturesSafetyCheckQuestion3En {
	TranslationsFeaturesSafetyCheckQuestion3En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Are you currently experiencing thoughts of self-harm or suicide?'
	String get text => 'Are you currently experiencing thoughts of self-harm or suicide?';
}

// Path: features.safetyCheck.question4
class TranslationsFeaturesSafetyCheckQuestion4En {
	TranslationsFeaturesSafetyCheckQuestion4En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Are you pregnant or in the first weeks postpartum?'
	String get text => 'Are you pregnant or in the first weeks postpartum?';
}

// Path: features.safetyCheck.question5
class TranslationsFeaturesSafetyCheckQuestion5En {
	TranslationsFeaturesSafetyCheckQuestion5En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Are you currently being treated for a serious medical or psychiatric condition?'
	String get text => 'Are you currently being treated for a serious medical or psychiatric condition?';
}

// Path: features.safetyCheck.yesButton
class TranslationsFeaturesSafetyCheckYesButtonEn {
	TranslationsFeaturesSafetyCheckYesButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Yes'
	String get text => 'Yes';
}

// Path: features.safetyCheck.noButton
class TranslationsFeaturesSafetyCheckNoButtonEn {
	TranslationsFeaturesSafetyCheckNoButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No'
	String get text => 'No';
}

// Path: features.safetyCheck.confirmButton
class TranslationsFeaturesSafetyCheckConfirmButtonEn {
	TranslationsFeaturesSafetyCheckConfirmButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm'
	String get text => 'Confirm';
}

// Path: features.safetyCheck.footer
class TranslationsFeaturesSafetyCheckFooterEn {
	TranslationsFeaturesSafetyCheckFooterEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'These answers are stored only on your device.'
	String get text => 'These answers are stored only on your device.';
}

// Path: features.settings.appSection
class TranslationsFeaturesSettingsAppSectionEn {
	TranslationsFeaturesSettingsAppSectionEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'App'
	String get title => 'App';
}

// Path: features.settings.appSectionTileSubscription
class TranslationsFeaturesSettingsAppSectionTileSubscriptionEn {
	TranslationsFeaturesSettingsAppSectionTileSubscriptionEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Upgrade plan'
	String get title => 'Upgrade plan';
}

// Path: features.settings.appSectionTileAppearance
class TranslationsFeaturesSettingsAppSectionTileAppearanceEn {
	TranslationsFeaturesSettingsAppSectionTileAppearanceEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Appearance'
	String get title => 'Appearance';
}

// Path: features.settings.appSectionTileSystemLanguage
class TranslationsFeaturesSettingsAppSectionTileSystemLanguageEn {
	TranslationsFeaturesSettingsAppSectionTileSystemLanguageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Language'
	String get title => 'Language';
}

// Path: features.settings.deleteAccountButton
class TranslationsFeaturesSettingsDeleteAccountButtonEn {
	TranslationsFeaturesSettingsDeleteAccountButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete Account'
	String get title => 'Delete Account';
}

// Path: features.settings.header
class TranslationsFeaturesSettingsHeaderEn {
	TranslationsFeaturesSettingsHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => 'Settings';
}

// Path: features.settings.legalSection
class TranslationsFeaturesSettingsLegalSectionEn {
	TranslationsFeaturesSettingsLegalSectionEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Legal'
	String get title => 'Legal';
}

// Path: features.settings.legalSectionTile
class TranslationsFeaturesSettingsLegalSectionTileEn {
	TranslationsFeaturesSettingsLegalSectionTileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Privacy Policy'
	String get title => 'Privacy Policy';
}

// Path: features.settings.signOutButton
class TranslationsFeaturesSettingsSignOutButtonEn {
	TranslationsFeaturesSettingsSignOutButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign Out'
	String get title => 'Sign Out';
}

// Path: features.settings.version
class TranslationsFeaturesSettingsVersionEn {
	TranslationsFeaturesSettingsVersionEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Version $version ($buildNumber)'
	String text({required Object version, required Object buildNumber}) => 'Version ${version} (${buildNumber})';
}

// Path: features.settingsAppearance.header
class TranslationsFeaturesSettingsAppearanceHeaderEn {
	TranslationsFeaturesSettingsAppearanceHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Appearance'
	String get title => 'Appearance';
}

// Path: features.settingsSystemLanguage.header
class TranslationsFeaturesSettingsSystemLanguageHeaderEn {
	TranslationsFeaturesSettingsSystemLanguageHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Language'
	String get title => 'Language';
}

// Path: features.signUp.alreadyHaveAnAccount
class TranslationsFeaturesSignUpAlreadyHaveAnAccountEn {
	TranslationsFeaturesSignUpAlreadyHaveAnAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Already have an account?'
	String get text => 'Already have an account?';
}

// Path: features.signUp.appleButton
class TranslationsFeaturesSignUpAppleButtonEn {
	TranslationsFeaturesSignUpAppleButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue with Apple'
	String get text => 'Continue with Apple';
}

// Path: features.signUp.emailButton
class TranslationsFeaturesSignUpEmailButtonEn {
	TranslationsFeaturesSignUpEmailButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue with Email'
	String get text => 'Continue with Email';
}

// Path: features.signUp.googleButton
class TranslationsFeaturesSignUpGoogleButtonEn {
	TranslationsFeaturesSignUpGoogleButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue with Google'
	String get text => 'Continue with Google';
}

// Path: features.signUp.logInLink
class TranslationsFeaturesSignUpLogInLinkEn {
	TranslationsFeaturesSignUpLogInLinkEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Log In'
	String get text => 'Log In';
}

// Path: features.signUp.title
class TranslationsFeaturesSignUpTitleEn {
	TranslationsFeaturesSignUpTitleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign up to begin your practice'
	String get text => 'Sign up to begin your practice';
}

// Path: features.signUpPassword.emailButton
class TranslationsFeaturesSignUpPasswordEmailButtonEn {
	TranslationsFeaturesSignUpPasswordEmailButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue'
	String get label => 'Continue';
}

// Path: features.signUpPassword.emailField
class TranslationsFeaturesSignUpPasswordEmailFieldEn {
	TranslationsFeaturesSignUpPasswordEmailFieldEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter your email address.'
	String get description => 'Please enter your email address.';

	/// en: 'Email'
	String get label => 'Email';
}

// Path: features.signUpPassword.header
class TranslationsFeaturesSignUpPasswordHeaderEn {
	TranslationsFeaturesSignUpPasswordHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Create Account'
	String get title => 'Create Account';
}

// Path: features.signUpPassword.passwordButton
class TranslationsFeaturesSignUpPasswordPasswordButtonEn {
	TranslationsFeaturesSignUpPasswordPasswordButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue'
	String get label => 'Continue';
}

// Path: features.signUpPassword.passwordField
class TranslationsFeaturesSignUpPasswordPasswordFieldEn {
	TranslationsFeaturesSignUpPasswordPasswordFieldEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Choose a secure password.'
	String get description => 'Choose a secure password.';

	/// en: 'Password'
	String get label => 'Password';
}

// Path: features.today.header
class TranslationsFeaturesTodayHeaderEn {
	TranslationsFeaturesTodayHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Good evening, Anna'
	String get greeting => 'Good evening, Anna';

	/// en: 'A few minutes for you.'
	String get tagline => 'A few minutes for you.';
}

// Path: features.today.assessmentBanner
class TranslationsFeaturesTodayAssessmentBannerEn {
	TranslationsFeaturesTodayAssessmentBannerEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Take the 5-minute check-in'
	String get title => 'Take the 5-minute check-in';

	/// en: 'Unlock personalized recommendations'
	String get subtitle => 'Unlock personalized recommendations';
}

// Path: features.today.featuredCard
class TranslationsFeaturesTodayFeaturedCardEn {
	TranslationsFeaturesTodayFeaturedCardEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Start here · free'
	String get badge => 'Start here · free';

	/// en: 'Listen'
	String get listenButton => 'Listen';
}

// Path: features.today.aiRecLabel
class TranslationsFeaturesTodayAiRecLabelEn {
	TranslationsFeaturesTodayAiRecLabelEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'For you today'
	String get text => 'For you today';
}

// Path: features.today.practiceNote
class TranslationsFeaturesTodayPracticeNoteEn {
	TranslationsFeaturesTodayPracticeNoteEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'A note from the practice'
	String get eyebrow => 'A note from the practice';

	/// en: 'Three minutes of breath before sleep often changes more than an hour of rumination.'
	String get quote => 'Three minutes of breath before sleep often changes more than an hour of rumination.';

	/// en: '— Anna Reiter, M.Sc.'
	String get author => '— Anna Reiter, M.Sc.';
}

// Path: features.verifyEmail.body
class TranslationsFeaturesVerifyEmailBodyEn {
	TranslationsFeaturesVerifyEmailBodyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'We've sent a verification link to your email address. Click the link to verify your account and continue.'
	String get description => 'We\'ve sent a verification link to your email address. Click the link to verify your account and continue.';

	/// en: 'Check your inbox'
	String get title => 'Check your inbox';
}

// Path: features.verifyEmail.header
class TranslationsFeaturesVerifyEmailHeaderEn {
	TranslationsFeaturesVerifyEmailHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Verify Email'
	String get title => 'Verify Email';
}

// Path: features.verifyEmail.sendButton
class TranslationsFeaturesVerifyEmailSendButtonEn {
	TranslationsFeaturesVerifyEmailSendButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Send Verification Email'
	String get label => 'Send Verification Email';
}

// Path: features.welcome.slide1
class TranslationsFeaturesWelcomeSlide1En {
	TranslationsFeaturesWelcomeSlide1En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'A practice from Anna Reiter'
	String get eyebrow => 'A practice from Anna Reiter';

	/// en: 'Hypnosis, without the mystique.'
	String get title => 'Hypnosis, without the mystique.';

	/// en: 'Audio-led sessions drawn from twelve years of therapeutic practice. For quieter days, lighter nights, clearer relationships.'
	String get body => 'Audio-led sessions drawn from twelve years of therapeutic practice. For quieter days, lighter nights, clearer relationships.';
}

// Path: features.welcome.slide2
class TranslationsFeaturesWelcomeSlide2En {
	TranslationsFeaturesWelcomeSlide2En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'In three steps'
	String get eyebrow => 'In three steps';

	/// en: 'A short test. Then sessions that fit you.'
	String get title => 'A short test.\nThen sessions\nthat fit you.';

	/// en: '20 questions, about five minutes. You receive a profile of strengths and growth areas — in everyday language, without labels.'
	String get body => '20 questions, about five minutes. You receive a profile of strengths and growth areas — in everyday language, without labels.';
}

// Path: features.welcome.slide3
class TranslationsFeaturesWelcomeSlide3En {
	TranslationsFeaturesWelcomeSlide3En.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Safe and private'
	String get eyebrow => 'Safe and private';

	/// en: 'What you share stays with you.'
	String get title => 'What you share\nstays with you.';

	/// en: 'GDPR-compliant, hosted in Germany. No ads, no tracking. The first session is free.'
	String get body => 'GDPR-compliant, hosted in Germany. No ads, no tracking. The first session is free.';
}

// Path: features.welcome.continueButton
class TranslationsFeaturesWelcomeContinueButtonEn {
	TranslationsFeaturesWelcomeContinueButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue'
	String get text => 'Continue';
}

// Path: features.welcome.beginButton
class TranslationsFeaturesWelcomeBeginButtonEn {
	TranslationsFeaturesWelcomeBeginButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Begin'
	String get text => 'Begin';
}

// Path: features.welcome.skipButton
class TranslationsFeaturesWelcomeSkipButtonEn {
	TranslationsFeaturesWelcomeSkipButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Skip'
	String get text => 'Skip';
}

// Path: utils.domain.appData
class TranslationsUtilsDomainAppDataEn {
	TranslationsUtilsDomainAppDataEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUtilsDomainAppDataAppearanceEn appearance = TranslationsUtilsDomainAppDataAppearanceEn.internal(_root);
}

// Path: utils.locale.de
class TranslationsUtilsLocaleDeEn {
	TranslationsUtilsLocaleDeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'German'
	String get name => 'German';
}

// Path: utils.locale.en
class TranslationsUtilsLocaleEnEn {
	TranslationsUtilsLocaleEnEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'English'
	String get name => 'English';
}

// Path: features.notFound.body.subtitle
class TranslationsFeaturesNotFoundBodySubtitleEn {
	TranslationsFeaturesNotFoundBodySubtitleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The page you are looking for does not exist.'
	String get text => 'The page you are looking for does not exist.';
}

// Path: features.notFound.body.title
class TranslationsFeaturesNotFoundBodyTitleEn {
	TranslationsFeaturesNotFoundBodyTitleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Page not found'
	String get text => 'Page not found';
}

// Path: utils.domain.appData.appearance
class TranslationsUtilsDomainAppDataAppearanceEn {
	TranslationsUtilsDomainAppDataAppearanceEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUtilsDomainAppDataAppearanceDarkEn dark = TranslationsUtilsDomainAppDataAppearanceDarkEn.internal(_root);
	late final TranslationsUtilsDomainAppDataAppearanceLightEn light = TranslationsUtilsDomainAppDataAppearanceLightEn.internal(_root);
	late final TranslationsUtilsDomainAppDataAppearanceSystemEn system = TranslationsUtilsDomainAppDataAppearanceSystemEn.internal(_root);
}

// Path: utils.domain.appData.appearance.dark
class TranslationsUtilsDomainAppDataAppearanceDarkEn {
	TranslationsUtilsDomainAppDataAppearanceDarkEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Use dark theme'
	String get description => 'Use dark theme';

	/// en: 'Dark'
	String get name => 'Dark';
}

// Path: utils.domain.appData.appearance.light
class TranslationsUtilsDomainAppDataAppearanceLightEn {
	TranslationsUtilsDomainAppDataAppearanceLightEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Use light theme'
	String get description => 'Use light theme';

	/// en: 'Light'
	String get name => 'Light';
}

// Path: utils.domain.appData.appearance.system
class TranslationsUtilsDomainAppDataAppearanceSystemEn {
	TranslationsUtilsDomainAppDataAppearanceSystemEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Follow system theme'
	String get description => 'Follow system theme';

	/// en: 'System'
	String get name => 'System';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'features.accountCreate.createButton.label' => 'Create Account',
			'features.accountCreate.failedToCreateAccount' => 'Failed to create account',
			'features.accountCreate.header.title' => 'Create Account',
			'features.accountCreate.nameField.description' => 'How should we call you?',
			'features.accountCreate.nameField.label' => 'Name',
			'features.accountCreate.privacyItem.description' => 'Read Privacy Policy',
			'features.accountCreate.privacyItem.label' => 'I have read the Privacy Policy',
			'features.accountCreate.requiredBadge.label' => 'Required',
			'features.accountCreate.termsItem.description' => 'Read Terms of Use',
			'features.accountCreate.termsItem.label' => 'I agree to the Terms of Use',
			'features.assessment.header.axisStress' => 'Stress response',
			'features.assessment.header.axisSleep' => 'Rest & sleep',
			'features.assessment.header.axisSelf' => 'Self-relation',
			'features.assessment.header.axisFocus' => 'Focus & follow-through',
			'features.assessment.header.axisRelations' => 'Relationships',
			'features.assessment.header.axisBody' => 'Body awareness',
			'features.assessment.footer.text' => 'There are no right answers.',
			'features.assessment.skipButton.text' => 'Skip',
			'features.assessment.likert.disagree' => 'Disagree',
			'features.assessment.likert.agree' => 'Agree',
			'features.assessment.likert.hint' => 'Tap a circle to answer',
			'features.assessment.likert.stronglyDisagree' => 'Strongly disagree',
			'features.assessment.likert.neutral' => 'Neutral',
			'features.assessment.likert.stronglyAgree' => 'Strongly agree',
			'features.auth.loginButton.title' => 'Login',
			'features.auth.signUpButton.title' => 'Sign up for free',
			'features.auth.title.text' => 'Find your calm.\n With sayko.',
			'features.deleteAccountConfirm.cancelButton.text' => 'Cancel',
			'features.deleteAccountConfirm.confirmButton.text' => 'Delete Account',
			'features.deleteAccountConfirm.subtitle' => 'This action cannot be undone. This will permanently delete your account and remove your data from our servers.',
			'features.deleteAccountConfirm.title' => 'Delete Account?',
			'features.home.header.title' => 'Home',
			'features.launchpad.bottomNavigationBar.today' => 'Today',
			'features.launchpad.bottomNavigationBar.library' => 'Library',
			'features.launchpad.bottomNavigationBar.profile' => 'Profile',
			'features.launchpad.bottomNavigationBar.home' => 'Home',
			'features.launchpad.bottomNavigationBar.settings' => 'Settings',
			'features.library.header.eyebrow' => 'Library',
			'features.library.header.title' => 'What do you need today?',
			'features.library.filterAll.label' => 'All',
			'features.library.filterStress.label' => 'Stress',
			'features.library.filterSleep.label' => 'Sleep',
			'features.library.filterSelf.label' => 'Self',
			'features.library.filterRelations.label' => 'Relationships',
			'features.library.filterFocus.label' => 'Focus',
			'features.library.filterBody.label' => 'Body',
			'features.library.todayPick.badge' => 'Today\'s pick',
			'features.library.freeBadge.label' => 'Free',
			'features.library.allSessions.label' => 'All sessions',
			'features.login.appleButton.text' => 'Continue with Apple',
			'features.login.dontHaveAnAccount.text' => 'Don\'t have an account?',
			'features.login.emailButton.text' => 'Continue with Email',
			'features.login.googleButton.text' => 'Continue with Google',
			'features.login.signUpLink.text' => 'Sign Up',
			'features.login.title.text' => 'Login to Sayko',
			'features.loginPassword.emailField.label' => 'Email',
			'features.loginPassword.failedToSignIn' => 'Failed to sign in',
			'features.loginPassword.header.title' => 'Sign In',
			'features.loginPassword.passwordField.label' => 'Password',
			'features.loginPassword.passwordResetLink.link' => 'Forgot Password?',
			'features.loginPassword.signInButton.text' => 'Sign In',
			'features.logoutConfirm.cancelButton.text' => 'Cancel',
			'features.logoutConfirm.confirmButton.text' => 'Logout',
			'features.logoutConfirm.title' => 'Sign out?',
			'features.notFound.body.subtitle.text' => 'The page you are looking for does not exist.',
			'features.notFound.body.title.text' => 'Page not found',
			'features.notFound.goHomeButton.title' => 'Go Home',
			'features.passwordReset.button.label' => 'Send Reset Link',
			'features.passwordReset.contactSupportButton.text' => 'Contact Support',
			'features.passwordReset.emailField.label' => 'Email address',
			'features.passwordReset.failedToSendPasswordResetEmail' => 'Failed to send password reset email',
			'features.passwordReset.header.title' => 'Reset Password',
			'features.passwordReset.helpPrompt.text' => 'Need more help?',
			'features.passwordReset.sendPasswordResetEmailSucceeded' => 'Check your inbox for the password reset link',
			'features.paywall.sheetTitle.text' => 'Premium',
			'features.paywall.header.title' => 'Unlock the full library.',
			'features.paywall.header.body' => 'Over 30 sessions drawn from twelve years of therapeutic practice. New content every week.',
			'features.paywall.annualPlan.title' => 'Annual',
			'features.paywall.annualPlan.badge' => 'Best value',
			'features.paywall.singlePlan.title' => 'Single session',
			'features.paywall.singlePlan.sub' => 'Lifetime access',
			'features.paywall.feature1.label' => '30+ hypnosis sessions',
			'features.paywall.feature2.label' => 'Listen offline',
			'features.paywall.feature3.label' => 'AI-matched to your profile',
			'features.paywall.feature4.label' => 'Cancel anytime',
			'features.paywall.subscribeButton.text' => 'Subscribe now',
			'features.paywall.redeemButton.text' => 'Redeem a code',
			'features.player.nowPlaying.label' => 'Now playing',
			'features.profile.header.eyebrow' => 'Profile',
			'features.profile.header.name' => 'Anna M.',
			'features.profile.header.email' => 'anna@example.com',
			'features.profile.yourProfile.label' => 'Your profile',
			'features.profile.redoButton.text' => 'Retake',
			'features.profile.savedRow.label' => 'Saved',
			'features.profile.offlineRow.label' => 'Downloaded',
			'features.profile.languageRow.label' => 'Language',
			'features.profile.privacyRow.label' => 'Privacy',
			'features.profile.settingsRow.label' => 'Settings',
			'features.profile.footer.text' => 'A practice from Anna Reiter. © 2026.',
			'features.results.header.eyebrow' => 'Your profile',
			'features.results.header.title' => 'You\'re carrying a lot.\nLet\'s lighten the load.',
			'features.results.strengths.label' => 'Strengths',
			'features.results.growth.label' => 'Areas to tend to',
			'features.results.recommended.title' => 'Recommended for you',
			'features.results.continueButton.text' => 'Go to library',
			'features.results.savePdfButton.text' => 'Save profile as PDF',
			'features.safetyBlocked.header.title' => 'What you\'re going through deserves more than an app.',
			'features.safetyBlocked.header.body' => 'Based on your answers, we recommend reaching out to someone who can support you directly.',
			'features.safetyBlocked.acuteHelp.label' => 'Acute help',
			'features.safetyBlocked.contactSeelsorge.label' => 'Telefonseelsorge',
			'features.safetyBlocked.contactSeelsorge.sub' => '0800 111 0 111 — 24/7, free',
			'features.safetyBlocked.contactEmergency.label' => 'Emergency',
			'features.safetyBlocked.contactEmergency.sub' => '112 — for acute danger',
			'features.safetyBlocked.contactKrisenchat.label' => 'krisenchat.de',
			'features.safetyBlocked.contactKrisenchat.sub' => 'Chat counseling, free',
			'features.safetyBlocked.backButton.text' => 'Review safety answers',
			'features.safetyCheck.header.eyebrow' => 'Before we begin',
			'features.safetyCheck.header.title' => 'A short safety check.',
			'features.safetyCheck.header.body' => 'Hypnosis is safe for most people, but not all. Please answer two short questions.',
			'features.safetyCheck.question1.text' => 'Do you have a diagnosis of epilepsy or a history of seizures?',
			'features.safetyCheck.question2.text' => 'Have you experienced psychosis, dissociative disorders, or severe untreated mental illness?',
			'features.safetyCheck.question3.text' => 'Are you currently experiencing thoughts of self-harm or suicide?',
			'features.safetyCheck.question4.text' => 'Are you pregnant or in the first weeks postpartum?',
			'features.safetyCheck.question5.text' => 'Are you currently being treated for a serious medical or psychiatric condition?',
			'features.safetyCheck.yesButton.text' => 'Yes',
			'features.safetyCheck.noButton.text' => 'No',
			'features.safetyCheck.confirmButton.text' => 'Confirm',
			'features.safetyCheck.footer.text' => 'These answers are stored only on your device.',
			'features.settings.appSection.title' => 'App',
			'features.settings.appSectionTileSubscription.title' => 'Upgrade plan',
			'features.settings.appSectionTileAppearance.title' => 'Appearance',
			'features.settings.appSectionTileSystemLanguage.title' => 'Language',
			'features.settings.deleteAccountButton.title' => 'Delete Account',
			'features.settings.header.title' => 'Settings',
			'features.settings.legalSection.title' => 'Legal',
			'features.settings.legalSectionTile.title' => 'Privacy Policy',
			'features.settings.signOutButton.title' => 'Sign Out',
			'features.settings.version.text' => ({required Object version, required Object buildNumber}) => 'Version ${version} (${buildNumber})',
			'features.settingsAppearance.header.title' => 'Appearance',
			'features.settingsSystemLanguage.header.title' => 'Language',
			'features.signUp.alreadyHaveAnAccount.text' => 'Already have an account?',
			'features.signUp.appleButton.text' => 'Continue with Apple',
			'features.signUp.emailButton.text' => 'Continue with Email',
			'features.signUp.googleButton.text' => 'Continue with Google',
			'features.signUp.logInLink.text' => 'Log In',
			'features.signUp.title.text' => 'Sign up to begin your practice',
			'features.signUpPassword.emailButton.label' => 'Continue',
			'features.signUpPassword.emailField.description' => 'Please enter your email address.',
			'features.signUpPassword.emailField.label' => 'Email',
			'features.signUpPassword.failedToSignUp' => 'Failed to create account',
			'features.signUpPassword.header.title' => 'Create Account',
			'features.signUpPassword.passwordButton.label' => 'Continue',
			'features.signUpPassword.passwordField.description' => 'Choose a secure password.',
			'features.signUpPassword.passwordField.label' => 'Password',
			'features.today.header.greeting' => 'Good evening, Anna',
			'features.today.header.tagline' => 'A few minutes for you.',
			'features.today.assessmentBanner.title' => 'Take the 5-minute check-in',
			'features.today.assessmentBanner.subtitle' => 'Unlock personalized recommendations',
			'features.today.featuredCard.badge' => 'Start here · free',
			'features.today.featuredCard.listenButton' => 'Listen',
			'features.today.aiRecLabel.text' => 'For you today',
			'features.today.practiceNote.eyebrow' => 'A note from the practice',
			'features.today.practiceNote.quote' => 'Three minutes of breath before sleep often changes more than an hour of rumination.',
			'features.today.practiceNote.author' => '— Anna Reiter, M.Sc.',
			'features.verifyEmail.body.description' => 'We\'ve sent a verification link to your email address. Click the link to verify your account and continue.',
			'features.verifyEmail.body.title' => 'Check your inbox',
			'features.verifyEmail.header.title' => 'Verify Email',
			'features.verifyEmail.sendButton.label' => 'Send Verification Email',
			'features.verifyEmail.sendVerifyEmailFailed' => 'Failed to send verification email',
			'features.welcome.slide1.eyebrow' => 'A practice from Anna Reiter',
			'features.welcome.slide1.title' => 'Hypnosis, without the mystique.',
			'features.welcome.slide1.body' => 'Audio-led sessions drawn from twelve years of therapeutic practice. For quieter days, lighter nights, clearer relationships.',
			'features.welcome.slide2.eyebrow' => 'In three steps',
			'features.welcome.slide2.title' => 'A short test.\nThen sessions\nthat fit you.',
			'features.welcome.slide2.body' => '20 questions, about five minutes. You receive a profile of strengths and growth areas — in everyday language, without labels.',
			'features.welcome.slide3.eyebrow' => 'Safe and private',
			'features.welcome.slide3.title' => 'What you share\nstays with you.',
			'features.welcome.slide3.body' => 'GDPR-compliant, hosted in Germany. No ads, no tracking. The first session is free.',
			'features.welcome.continueButton.text' => 'Continue',
			'features.welcome.beginButton.text' => 'Begin',
			'features.welcome.skipButton.text' => 'Skip',
			'utils.domain.appData.appearance.dark.description' => 'Use dark theme',
			'utils.domain.appData.appearance.dark.name' => 'Dark',
			'utils.domain.appData.appearance.light.description' => 'Use light theme',
			'utils.domain.appData.appearance.light.name' => 'Light',
			'utils.domain.appData.appearance.system.description' => 'Follow system theme',
			'utils.domain.appData.appearance.system.name' => 'System',
			'utils.locale.de.name' => 'German',
			'utils.locale.en.name' => 'English',
			_ => null,
		};
	}
}

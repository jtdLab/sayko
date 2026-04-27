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
	late final TranslationsFeaturesAuthEn auth = TranslationsFeaturesAuthEn.internal(_root);
	late final TranslationsFeaturesDeleteAccountConfirmEn deleteAccountConfirm = TranslationsFeaturesDeleteAccountConfirmEn.internal(_root);
	late final TranslationsFeaturesHomeEn home = TranslationsFeaturesHomeEn.internal(_root);
	late final TranslationsFeaturesLaunchpadEn launchpad = TranslationsFeaturesLaunchpadEn.internal(_root);
	late final TranslationsFeaturesLoginEn login = TranslationsFeaturesLoginEn.internal(_root);
	late final TranslationsFeaturesLoginPasswordEn loginPassword = TranslationsFeaturesLoginPasswordEn.internal(_root);
	late final TranslationsFeaturesLogoutConfirmEn logoutConfirm = TranslationsFeaturesLogoutConfirmEn.internal(_root);
	late final TranslationsFeaturesNotFoundEn notFound = TranslationsFeaturesNotFoundEn.internal(_root);
	late final TranslationsFeaturesPasswordResetEn passwordReset = TranslationsFeaturesPasswordResetEn.internal(_root);
	late final TranslationsFeaturesSettingsEn settings = TranslationsFeaturesSettingsEn.internal(_root);
	late final TranslationsFeaturesSettingsAppearanceEn settingsAppearance = TranslationsFeaturesSettingsAppearanceEn.internal(_root);
	late final TranslationsFeaturesSettingsSystemLanguageEn settingsSystemLanguage = TranslationsFeaturesSettingsSystemLanguageEn.internal(_root);
	late final TranslationsFeaturesSignUpEn signUp = TranslationsFeaturesSignUpEn.internal(_root);
	late final TranslationsFeaturesSignUpPasswordEn signUpPassword = TranslationsFeaturesSignUpPasswordEn.internal(_root);
	late final TranslationsFeaturesVerifyEmailEn verifyEmail = TranslationsFeaturesVerifyEmailEn.internal(_root);
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

// Path: features.settings
class TranslationsFeaturesSettingsEn {
	TranslationsFeaturesSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFeaturesSettingsAppSectionEn appSection = TranslationsFeaturesSettingsAppSectionEn.internal(_root);
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

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Settings'
	String get settings => 'Settings';
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

// Path: features.settings.appSection
class TranslationsFeaturesSettingsAppSectionEn {
	TranslationsFeaturesSettingsAppSectionEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'App'
	String get title => 'App';
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
			'features.auth.loginButton.title' => 'Login',
			'features.auth.signUpButton.title' => 'Sign up for free',
			'features.auth.title.text' => 'Find your calm.\n With sayko.',
			'features.deleteAccountConfirm.cancelButton.text' => 'Cancel',
			'features.deleteAccountConfirm.confirmButton.text' => 'Delete Account',
			'features.deleteAccountConfirm.subtitle' => 'This action cannot be undone. This will permanently delete your account and remove your data from our servers.',
			'features.deleteAccountConfirm.title' => 'Delete Account?',
			'features.home.header.title' => 'Home',
			'features.launchpad.bottomNavigationBar.home' => 'Home',
			'features.launchpad.bottomNavigationBar.settings' => 'Settings',
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
			'features.settings.appSection.title' => 'App',
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
			'features.verifyEmail.body.description' => 'We\'ve sent a verification link to your email address. Click the link to verify your account and continue.',
			'features.verifyEmail.body.title' => 'Check your inbox',
			'features.verifyEmail.header.title' => 'Verify Email',
			'features.verifyEmail.sendButton.label' => 'Send Verification Email',
			'features.verifyEmail.sendVerifyEmailFailed' => 'Failed to send verification email',
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

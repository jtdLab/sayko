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
	@override late final _TranslationsFeaturesAuthDe auth = _TranslationsFeaturesAuthDe._(_root);
	@override late final _TranslationsFeaturesDeleteAccountConfirmDe deleteAccountConfirm = _TranslationsFeaturesDeleteAccountConfirmDe._(_root);
	@override late final _TranslationsFeaturesHomeDe home = _TranslationsFeaturesHomeDe._(_root);
	@override late final _TranslationsFeaturesLaunchpadDe launchpad = _TranslationsFeaturesLaunchpadDe._(_root);
	@override late final _TranslationsFeaturesLoginDe login = _TranslationsFeaturesLoginDe._(_root);
	@override late final _TranslationsFeaturesLoginPasswordDe loginPassword = _TranslationsFeaturesLoginPasswordDe._(_root);
	@override late final _TranslationsFeaturesLogoutConfirmDe logoutConfirm = _TranslationsFeaturesLogoutConfirmDe._(_root);
	@override late final _TranslationsFeaturesNotFoundDe notFound = _TranslationsFeaturesNotFoundDe._(_root);
	@override late final _TranslationsFeaturesPasswordResetDe passwordReset = _TranslationsFeaturesPasswordResetDe._(_root);
	@override late final _TranslationsFeaturesSettingsDe settings = _TranslationsFeaturesSettingsDe._(_root);
	@override late final _TranslationsFeaturesSettingsAppearanceDe settingsAppearance = _TranslationsFeaturesSettingsAppearanceDe._(_root);
	@override late final _TranslationsFeaturesSettingsSystemLanguageDe settingsSystemLanguage = _TranslationsFeaturesSettingsSystemLanguageDe._(_root);
	@override late final _TranslationsFeaturesSignUpDe signUp = _TranslationsFeaturesSignUpDe._(_root);
	@override late final _TranslationsFeaturesSignUpPasswordDe signUpPassword = _TranslationsFeaturesSignUpPasswordDe._(_root);
	@override late final _TranslationsFeaturesVerifyEmailDe verifyEmail = _TranslationsFeaturesVerifyEmailDe._(_root);
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
	@override String get home => 'Start';
	@override String get settings => 'Einstellungen';
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
			'features.auth.loginButton.title' => 'Anmelden',
			'features.auth.signUpButton.title' => 'Kostenlos registrieren',
			'features.auth.title.text' => 'Finde deine Ruhe.\n Mit sayko.',
			'features.deleteAccountConfirm.cancelButton.text' => 'Abbrechen',
			'features.deleteAccountConfirm.confirmButton.text' => 'Konto löschen',
			'features.deleteAccountConfirm.subtitle' => 'Diese Aktion kann nicht rückgängig gemacht werden. Ihr Konto und alle Daten werden dauerhaft gelöscht.',
			'features.deleteAccountConfirm.title' => 'Konto löschen?',
			'features.home.header.title' => 'Start',
			'features.launchpad.bottomNavigationBar.home' => 'Start',
			'features.launchpad.bottomNavigationBar.settings' => 'Einstellungen',
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
			'features.verifyEmail.body.description' => 'Wir haben Ihnen einen Bestätigungslink per E-Mail geschickt. Klicken Sie auf den Link, um Ihr Konto zu bestätigen und fortzufahren.',
			'features.verifyEmail.body.title' => 'Prüfen Sie Ihren Posteingang',
			'features.verifyEmail.header.title' => 'E-Mail bestätigen',
			'features.verifyEmail.sendButton.label' => 'Verifizierungs-E-Mail senden',
			'features.verifyEmail.sendVerifyEmailFailed' => 'Verifizierungs-E-Mail konnte nicht gesendet werden',
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

# --- WireDatabaseBackup {"time":"2018-09-21 11:47:29","user":"developer","dbName":"cw40247_mercedes","description":"","tables":[],"excludeTables":[],"excludeCreateTables":[],"excludeExportTables":[]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('Modules.wire/modules/', 'Markup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupRSS.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPageArray.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterStripTags.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterNewlineBR.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nPageRender.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nAdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeURL.module\nFieldtype/FieldtypeImage.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeFieldsetOpen.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nImage/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nLazyCron.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/LanguageSupportPageNames.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldCheckbox.module\nInputfield/InputfieldURL.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldName.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldText.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nFileCompilerTags.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nPagePaths.module\nPagePathHistory.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessUser/ProcessUser.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessForgotPassword.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessPageView.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessList.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessPageClone.module\nProcess/ProcessHome.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nPage/PageFrontEdit/PageFrontEdit.module\nPagePermissions.module', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__efec87c8dad7bcbbf202ac5e1a515a52', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CopyTableFieldRowsToOtherPage.action.php\",\"hash\":\"02c09c95a5e235d374cd8e573af510f9\",\"size\":5209,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CopyTableFieldRowsToOtherPage.action.php\",\"hash\":\"c165b2b67a0fd7862ed4894f352af9b1\",\"size\":5235,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('ModulesUninstalled.info', '{\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1536741852,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"created\":1536741853,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1536741853,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"permanent\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1536741854,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":130,\"versionStr\":\"1.3.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1536741854,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1536741854,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1536741854,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1536741854,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1536741854,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1536741853,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1536741853,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeFieldsetPage\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"created\":1536741849,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":107,\"versionStr\":\"1.0.7\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1536741849,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1536741849,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1536741849,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1536741849,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeOptions\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores single and multi select options.\",\"created\":1536741849,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1536741849,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1536741849,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1536741849,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1536741849,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1536741852,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1536741852,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"useNavJSON\":true},\"ProcessLanguageTranslator\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"created\":1536741852,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupportFields\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language fields.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1536741852,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextareaLanguage\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1536741852,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":114,\"versionStr\":\"1.1.4\",\"author\":\"adamspruijt, ryan\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1536741852,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupport\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"ProcessWire multi-language support.\",\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1536741852,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"addFlag\":32},\"FieldtypeTextLanguage\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a single line of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1536741852,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTitleLanguage\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"created\":1536741852,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":9,\"versionStr\":\"0.0.9\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1536741852,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1536741853,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1536741853,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":13,\"versionStr\":\"0.1.3\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1536741852,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":112,\"versionStr\":\"1.1.2\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"created\":1536741851,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1536741849,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.\",\"autoload\":true,\"singular\":true,\"created\":1536741853,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":2,\"versionStr\":\"0.0.2\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1536741853,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1536741853,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1536741853,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":8,\"versionStr\":\"0.0.8\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1536741853,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a \\\"copy\\\" option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1536741853,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1536741853,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"license\":\"MPL 2.0\"},\"Helloworld\":{\"name\":\"Helloworld\",\"title\":\"Hello World\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"An example module used for demonstration purposes.\",\"href\":\"https:\\/\\/processwire.com\",\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1536741846,\"installed\":false}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('ModulesVerbose.info', '{\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.2\"},\"113\":{\"summary\":\"Adds a render() method to all PageArray instances for basic unordered list generation of PageArrays.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"125\":{\"summary\":\"Throttles the frequency of logins for a given account, helps to reduce dictionary attacks by introducing an exponential delay between logins.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"163\":{\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"author\":\"Tom Reno (Renobird)\",\"core\":true,\"versionStr\":\"0.1.7\"},\"160\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.2.4\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.5\"},\"170\":{\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"169\":{\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.4\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.1\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.1\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.4\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.0\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"89\":{\"summary\":\"Field that stores a floating point (decimal) number\",\"core\":true,\"versionStr\":\"1.0.5\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.0\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.1.6\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.5\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.7\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.4\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.6\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.2\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn\'t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.5\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.5\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.2\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.1\"},\"155\":{\"summary\":\"CKEditor textarea rich text editor.\",\"core\":true,\"versionStr\":\"1.6.0\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.3\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"1.2.1\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.7\"},\"162\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.2\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.2\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"http:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.9.6\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"http:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.8.3\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/\",\"core\":true,\"versionStr\":\"0.0.1\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"http:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.2.1\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.0.8\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.0.8\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.1.8\"},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.4\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"161\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.1\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.4\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.0\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.2\"},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.2\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"159\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"12\":{\"summary\":\"List pages in a hierarchal tree structure\",\"core\":true,\"versionStr\":\"1.1.9\"},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.4\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"164\":{\"summary\":\"ProcessWire admin tweaks to boost productivity.\",\"author\":\"Roland Toth\",\"href\":\"https:\\/\\/processwire.com\\/talk\\/topic\\/13389-adminonsteroids\\/\",\"versionStr\":\"1.9.8\"},\"165\":{\"summary\":\"Create and\\/or restore database backups from ProcessWire admin.\",\"author\":\"Ryan Cramer\",\"versionStr\":\"0.0.4\",\"permissions\":{\"db-backup\":\"Manage database backups (recommended for superuser only)\"},\"page\":{\"name\":\"db-backups\",\"parent\":\"setup\",\"title\":\"DB Backups\"}},\"167\":{\"summary\":\"Tracy debugger from Nette with several PW specific custom tools.\",\"author\":\"Adrian Jones\",\"href\":\"https:\\/\\/processwire.com\\/talk\\/topic\\/12208-tracy-debugger\\/\",\"versionStr\":\"4.10.25\"},\"173\":{\"summary\":\"Control panel for running various admin actions\",\"author\":\"Adrian Jones\",\"versionStr\":\"0.6.12\",\"permissions\":{\"admin-actions\":\"Run selected AdminActions actions\",\"admin-actions-restore\":\"Run AdminActions restore feature\"},\"page\":{\"name\":\"admin-actions\",\"parent\":\"setup\",\"title\":\"Admin Actions\"}},\"171\":{\"summary\":\"Field that lets you define a database table of custom fields.\",\"versionStr\":\"0.1.9\"},\"172\":{\"summary\":\"Field that lets you define a database table of custom inputs.\",\"versionStr\":\"0.1.9\"},\"166\":{\"summary\":\"AIOM+ (All In One Minify) is a module to easily improve the performance of your website. By a simple function call Stylesheets, LESS  and Javascript files can be parsed, minimized and combined into one single file. This reduces the server requests, loading time and minimizes the traffic. In addition, the generated HTML source code can be minimized and all generated files can be loaded over a cookieless domain (domain sharding).\",\"author\":\"David Karich & Conclurer GbR\",\"href\":\"https:\\/\\/github.com\\/conclurer\\/ProcessWire-AIOM-All-In-One-Minify\",\"versionStr\":\"3.2.3\"},\"174\":{\"summary\":\"Turns any Fieldtype into a multiple-value version of itself.\",\"versionStr\":\"0.1.3\"},\"175\":{\"summary\":\"Multiplies single inputs with a fixed quantity.\",\"versionStr\":\"0.1.1\"}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('Modules.site/modules/', 'AdminOnSteroids/AdminOnSteroids.module\nHelloworld/Helloworld.module\nProcessDatabaseBackups/ProcessDatabaseBackups.module\nTracyDebugger/TracyDebugger.module\nProcessAdminActions/ProcessAdminActions.module\nFieldtypeTable/FieldtypeTable.module\nFieldtypeTable/InputfieldTable.module\nFieldtypeMultiplier/InputfieldMultiplier.module\nFieldtypeMultiplier/FieldtypeMultiplier.module\nAllInOneMinify/AllInOneMinify.module', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__0593e89d160bd54b887a4d289649d975', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/TracyDebugger.module\",\"hash\":\"0c0d67b78ff1ef7bfcbe96f4580e979c\",\"size\":156342,\"time\":1536741846,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/TracyDebugger.module\",\"hash\":\"6fb7e5ec7ee9113d6cb09c23de1ff4f9\",\"size\":180008,\"time\":1536741846}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__d2426e3e29befca64b46823650b1e3bb', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"07537956dfb391fc13a4bfdf84ffbd56\",\"size\":58985,\"time\":1536741846,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"5f323461c889312b69caa7b19ab98807\",\"size\":60829,\"time\":1536741846}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__abffee257007390b4105e2537fd35cc8', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/tracy.php\",\"hash\":\"9e38a388e52571fe8debe480d77ab704\",\"size\":607,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/tracy.php\",\"hash\":\"24a17a050265c9f8900aa91c282dd075\",\"size\":3055,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__15e8035ad64b9eb6995b8e63e41d5557', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/IBarPanel.php\",\"hash\":\"cfc6be010f12ae6b332954f1eb2049e9\",\"size\":397,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/IBarPanel.php\",\"hash\":\"cfc6be010f12ae6b332954f1eb2049e9\",\"size\":397,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__c5d1a84218cc43f93a1f69ea9defd56f', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Bar.php\",\"hash\":\"68234af3f4f71078604f6e7d33aff6d1\",\"size\":7323,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Bar.php\",\"hash\":\"4625e0db34cb2ff706e2755d8be4ddc7\",\"size\":8367,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__e51b89716bf8455ac20080a6122ca985', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/BlueScreen.php\",\"hash\":\"c40a7a6dee29ef2a97ff4e3f23f79589\",\"size\":8747,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/BlueScreen.php\",\"hash\":\"29faa579a6f148ca782509c7a358e5f2\",\"size\":9390,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__9b86f24959ef96ab02b3a3096e8cd453', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/DefaultBarPanel.php\",\"hash\":\"c6e2d462463f6bcb9fbbe95c79645535\",\"size\":895,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/DefaultBarPanel.php\",\"hash\":\"7984a03fd01a6aed1ee0d5aa25079c2e\",\"size\":1156,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__bce42ac36ea98a3b945ae170cfef3f5f', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Dumper.php\",\"hash\":\"f1e57a6e591720225d0729bdb75e1c89\",\"size\":17609,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Dumper.php\",\"hash\":\"f1e57a6e591720225d0729bdb75e1c89\",\"size\":17609,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__73e39bbf2fbe985250fb462dda658b04', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/ILogger.php\",\"hash\":\"458e933552d158d0e9ee9e4c7c430cd5\",\"size\":380,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/ILogger.php\",\"hash\":\"458e933552d158d0e9ee9e4c7c430cd5\",\"size\":380,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__218b982c3c8e24fccfb9e564bcf48546', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/FireLogger.php\",\"hash\":\"9e562c9ac3680b50b75397c016945399\",\"size\":4807,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/FireLogger.php\",\"hash\":\"9e562c9ac3680b50b75397c016945399\",\"size\":4807,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__264a336640e3b98d758cfe18c01c853d', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Helpers.php\",\"hash\":\"2062ea9eda994e34385690e16e424e75\",\"size\":7765,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Helpers.php\",\"hash\":\"2062ea9eda994e34385690e16e424e75\",\"size\":7765,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__99ba9d0bb060370112992a0ff00e9bfc', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Logger.php\",\"hash\":\"54e04c50c70ae0d21a620f6e25cd980c\",\"size\":6008,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Logger.php\",\"hash\":\"54e04c50c70ae0d21a620f6e25cd980c\",\"size\":6008,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__32185d4e5657af5e72db18324c5f52f3', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Debugger.php\",\"hash\":\"93de3ca7c5fce3bafb137e69a8cbd1e8\",\"size\":17624,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Debugger.php\",\"hash\":\"0027994b593d356e8899151688dde032\",\"size\":17711,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__62e0f30b8fde24a5b335cbafc40392cd', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/OutputDebugger.php\",\"hash\":\"7e4459c26f9c4d6dce1f3c3ea23e4345\",\"size\":1868,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/OutputDebugger.php\",\"hash\":\"7e4459c26f9c4d6dce1f3c3ea23e4345\",\"size\":1868,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__ad4bbbac77fa6afcd1e87efc6f355b7b', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/shortcuts.php\",\"hash\":\"35fd8c0c1bc0b92c8443d375c70c0b56\",\"size\":758,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/shortcuts.php\",\"hash\":\"35fd8c0c1bc0b92c8443d375c70c0b56\",\"size\":758,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__32fef9e983aaeced26b00361a1845abd', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/includes\\/TD.php\",\"hash\":\"86d90672fd3771cfeb0581e78852c1ba\",\"size\":6957,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/TD.php\",\"hash\":\"7c748c09f4cddc2fa61069f0bf7d7d19\",\"size\":6983,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__4ad1ae28d90a02f3648622e39a6abb62', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/includes\\/ShortcutMethods.php\",\"hash\":\"7498aa5e85c90eaaa0001470d4e960d1\",\"size\":6312,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/ShortcutMethods.php\",\"hash\":\"7498aa5e85c90eaaa0001470d4e960d1\",\"size\":6312,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__d70d5278475b8047d367b0c5e50507c0', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/common\\/_init.php\",\"hash\":\"a240b146613abf13e37d36b231a5b7f1\",\"size\":1204,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_init.php\",\"hash\":\"f0e84c9bb6d6a4423f6333d222553957\",\"size\":1444,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__8fd2fdf3ead3a32caa35d203d9f27fd2', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/common\\/_done.php\",\"hash\":\"8bc853780db722d05418f79f0842c83a\",\"size\":27174,\"time\":1537435031,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_done.php\",\"hash\":\"8bc853780db722d05418f79f0842c83a\",\"size\":27174,\"time\":1537435031}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__aa3411a2be11c6afa1fa9299b7b48bf5', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/home.php\",\"hash\":\"4241bc013a24633e2bcacd80aa05f766\",\"size\":68,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"11d30b97c62c7ac7ad1e9ee090c813c8\",\"size\":188,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__36dfc5375d0825a5d0b566f228fac29a', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/common\\/_functions.php\",\"hash\":\"1773b688a79b642fa6e42d2ae7f3c13a\",\"size\":3441,\"time\":1537435031,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_functions.php\",\"hash\":\"1773b688a79b642fa6e42d2ae7f3c13a\",\"size\":3441,\"time\":1537435031}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__d9bfbf485f975366e71be228be7270c5', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/common\\/_forms.php\",\"hash\":\"e08b8ba995655883174e7e34f8dca887\",\"size\":2440,\"time\":1536741847,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_forms.php\",\"hash\":\"e08b8ba995655883174e7e34f8dca887\",\"size\":2440,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__75f5732373d07d650a8746e241129c74', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/common\\/_delegate.php\",\"hash\":\"03f379b32592fe132891e4035469aa3f\",\"size\":209,\"time\":1536741847,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_delegate.php\",\"hash\":\"03f379b32592fe132891e4035469aa3f\",\"size\":209,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__c3781f4772eeb0d28510b7a7a52af01e', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1536741847,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__cbf9d8566fb84307f3e776a1ab6803d8', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/TracyDebugger.module\",\"hash\":\"0c0d67b78ff1ef7bfcbe96f4580e979c\",\"size\":156342,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/TracyDebugger.module\",\"hash\":\"6fb7e5ec7ee9113d6cb09c23de1ff4f9\",\"size\":180008,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__596aa10f187f19884264d7e112cd04c6', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"07537956dfb391fc13a4bfdf84ffbd56\",\"size\":58985,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"5f323461c889312b69caa7b19ab98807\",\"size\":60829,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__6235745f9572f107d21e6f3636a761a8', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/includes\\/DummyTracyDebuggerClass.php\",\"hash\":\"cf0e8ac4ea2a0139363d3c6dc02126fc\",\"size\":326,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/DummyTracyDebuggerClass.php\",\"hash\":\"cf0e8ac4ea2a0139363d3c6dc02126fc\",\"size\":326,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__418e6252559e46f602cc150a2ac74bdc', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/includes\\/TD.php\",\"hash\":\"86d90672fd3771cfeb0581e78852c1ba\",\"size\":6957,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/TD.php\",\"hash\":\"7c748c09f4cddc2fa61069f0bf7d7d19\",\"size\":6983,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__5efda7a92621b1ddaebd86f1cea431e9', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/includes\\/ShortcutMethods.php\",\"hash\":\"7498aa5e85c90eaaa0001470d4e960d1\",\"size\":6312,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/ShortcutMethods.php\",\"hash\":\"7498aa5e85c90eaaa0001470d4e960d1\",\"size\":6312,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__8f05c91d94475071ff225bcb84ba287a', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/common\\/_init.php\",\"hash\":\"a240b146613abf13e37d36b231a5b7f1\",\"size\":1204,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_init.php\",\"hash\":\"f0e84c9bb6d6a4423f6333d222553957\",\"size\":1444,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__df2424126f162e5351b1bf097f9b40a7', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/common\\/_done.php\",\"hash\":\"8bc853780db722d05418f79f0842c83a\",\"size\":27174,\"time\":1537434989,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_done.php\",\"hash\":\"8bc853780db722d05418f79f0842c83a\",\"size\":27174,\"time\":1537434989}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__edb41d1510f08aa26fe42304c2558143', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/home.php\",\"hash\":\"4241bc013a24633e2bcacd80aa05f766\",\"size\":68,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"11d30b97c62c7ac7ad1e9ee090c813c8\",\"size\":188,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__f73a16690116066a0b7b392ea63acb24', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/common\\/_functions.php\",\"hash\":\"1773b688a79b642fa6e42d2ae7f3c13a\",\"size\":3441,\"time\":1537434944,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_functions.php\",\"hash\":\"1773b688a79b642fa6e42d2ae7f3c13a\",\"size\":3441,\"time\":1537434944}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__a67080b6d6c81d4c6fba412a4ef5dc7f', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/common\\/_forms.php\",\"hash\":\"e08b8ba995655883174e7e34f8dca887\",\"size\":2440,\"time\":1536742272,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_forms.php\",\"hash\":\"e08b8ba995655883174e7e34f8dca887\",\"size\":2440,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__3aa8ba9adeeb0a852fb9a5bd8889917c', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/common\\/_delegate.php\",\"hash\":\"03f379b32592fe132891e4035469aa3f\",\"size\":209,\"time\":1536742272,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_delegate.php\",\"hash\":\"03f379b32592fe132891e4035469aa3f\",\"size\":209,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__f1ba25fd7e9e4fabf695b647a9be388b', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/modules\\/TracyDebugger\\/TracyDebugger.module\",\"hash\":\"0c0d67b78ff1ef7bfcbe96f4580e979c\",\"size\":156342,\"time\":1536742634,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/TracyDebugger.module\",\"hash\":\"6fb7e5ec7ee9113d6cb09c23de1ff4f9\",\"size\":180008,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__910d7e88d213b6335af109f13bbfb6b0', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"e0cc2246d394679a6990491624bfa2a7\",\"size\":60006,\"time\":1536742634,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"d543e9790c7b06a4a8497ee06a933000\",\"size\":61850,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__3e97a368c2eb69c8fe5fc3df22cfe2f4', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/modules\\/TracyDebugger\\/includes\\/DummyTracyDebuggerClass.php\",\"hash\":\"f8c2806467e40a42b88248b7c8448edf\",\"size\":352,\"time\":1536742634,\"ns\":\"Tracy\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/DummyTracyDebuggerClass.php\",\"hash\":\"f8c2806467e40a42b88248b7c8448edf\",\"size\":352,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__269da8933941cde894cb1f7d859cd9c6', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/modules\\/TracyDebugger\\/includes\\/TD.php\",\"hash\":\"74af0c527ccb809eee5a15103c53ce90\",\"size\":7140,\"time\":1536742634,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/TD.php\",\"hash\":\"25bd9b284fb908f9eee86f9c109366cf\",\"size\":7166,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__4607f3397b60c28cb9f72027e723af1c', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/modules\\/TracyDebugger\\/includes\\/ShortcutMethods.php\",\"hash\":\"003ce6e312d0d61bdc3ea48545a44780\",\"size\":6541,\"time\":1536742634,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/ShortcutMethods.php\",\"hash\":\"003ce6e312d0d61bdc3ea48545a44780\",\"size\":6541,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__e2fcdd2ea2a0e4ef54e14b5242a549b2', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/common\\/_init.php\",\"hash\":\"cea0ab310cef180e62495d080823d599\",\"size\":1247,\"time\":1536742634,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_init.php\",\"hash\":\"fa69feacb71a8b7df3eed6898d2bd2b7\",\"size\":1487,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__5bcd8d46ec06ca27eec9e0c0dab70c3b', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/home.php\",\"hash\":\"a6dc2ecda021698d6c0dea7aa6b7a4b5\",\"size\":71,\"time\":1536742634,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"eab2c08e48ec3cd540299a67fb167e1f\",\"size\":191,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__7620d9fd45a53e50b48e50c7d2060b27', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/common\\/_functions.php\",\"hash\":\"b770fdb861497f1d91263dc56946101e\",\"size\":3546,\"time\":1537327189,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_functions.php\",\"hash\":\"b770fdb861497f1d91263dc56946101e\",\"size\":3546,\"time\":1537327189}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__6500a8077603fe42ca8ddbfe5cdc12b6', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/common\\/_forms.php\",\"hash\":\"cd009fec3f69c3180c2fcedb3d401d9a\",\"size\":2523,\"time\":1536742634,\"ns\":\"Processwire\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_forms.php\",\"hash\":\"cd009fec3f69c3180c2fcedb3d401d9a\",\"size\":2523,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__8cf56db82a86af09d54fd4b3d1656173', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/common\\/_delegate.php\",\"hash\":\"42d19bb22ede32b9cb2c07641dcb6945\",\"size\":215,\"time\":1536742634,\"ns\":\"Processwire\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_delegate.php\",\"hash\":\"42d19bb22ede32b9cb2c07641dcb6945\",\"size\":215,\"time\":1536742634}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__947976c09d752214bfb0067849414736', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1536742272,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__f7a711a66938ed6a4d61815e562504d7', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/tracy.php\",\"hash\":\"9e38a388e52571fe8debe480d77ab704\",\"size\":607,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/tracy.php\",\"hash\":\"24a17a050265c9f8900aa91c282dd075\",\"size\":3055,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__640e30944bd2e9708cc3c8ee887e5559', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/IBarPanel.php\",\"hash\":\"cfc6be010f12ae6b332954f1eb2049e9\",\"size\":397,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/IBarPanel.php\",\"hash\":\"cfc6be010f12ae6b332954f1eb2049e9\",\"size\":397,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__55179622c5c034259eadcd3f04aa8b54', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Bar.php\",\"hash\":\"68234af3f4f71078604f6e7d33aff6d1\",\"size\":7323,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Bar.php\",\"hash\":\"4625e0db34cb2ff706e2755d8be4ddc7\",\"size\":8367,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__02e718a34848b133a8d814adb09e2c58', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/BlueScreen.php\",\"hash\":\"c40a7a6dee29ef2a97ff4e3f23f79589\",\"size\":8747,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/BlueScreen.php\",\"hash\":\"29faa579a6f148ca782509c7a358e5f2\",\"size\":9390,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__3a03eeab6b29856e44565260bb3ecba5', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/DefaultBarPanel.php\",\"hash\":\"c6e2d462463f6bcb9fbbe95c79645535\",\"size\":895,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/DefaultBarPanel.php\",\"hash\":\"7984a03fd01a6aed1ee0d5aa25079c2e\",\"size\":1156,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__39fc844c55b4115e8efbe668e02d8ab8', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Dumper.php\",\"hash\":\"f1e57a6e591720225d0729bdb75e1c89\",\"size\":17609,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Dumper.php\",\"hash\":\"f1e57a6e591720225d0729bdb75e1c89\",\"size\":17609,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__8ab79b8ede0576d13ab7aaa948ce2bdf', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/ILogger.php\",\"hash\":\"458e933552d158d0e9ee9e4c7c430cd5\",\"size\":380,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/ILogger.php\",\"hash\":\"458e933552d158d0e9ee9e4c7c430cd5\",\"size\":380,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__d85e31dfd0e688359c2ed70c5bb49ad4', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/FireLogger.php\",\"hash\":\"9e562c9ac3680b50b75397c016945399\",\"size\":4807,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/FireLogger.php\",\"hash\":\"9e562c9ac3680b50b75397c016945399\",\"size\":4807,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__181192782c4b05daca63a094ebe4dee3', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Helpers.php\",\"hash\":\"2062ea9eda994e34385690e16e424e75\",\"size\":7765,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Helpers.php\",\"hash\":\"2062ea9eda994e34385690e16e424e75\",\"size\":7765,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__293e2c028ae132dcc834169a928f1c49', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Logger.php\",\"hash\":\"54e04c50c70ae0d21a620f6e25cd980c\",\"size\":6008,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Logger.php\",\"hash\":\"54e04c50c70ae0d21a620f6e25cd980c\",\"size\":6008,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__342225c1ad2fb0a309befe25c5f39aba', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Debugger.php\",\"hash\":\"93de3ca7c5fce3bafb137e69a8cbd1e8\",\"size\":17624,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Debugger.php\",\"hash\":\"0027994b593d356e8899151688dde032\",\"size\":17711,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__21407fed9905a4d139b6caabd877f26e', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/OutputDebugger.php\",\"hash\":\"7e4459c26f9c4d6dce1f3c3ea23e4345\",\"size\":1868,\"time\":1536742272,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/OutputDebugger.php\",\"hash\":\"7e4459c26f9c4d6dce1f3c3ea23e4345\",\"size\":1868,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__0df9faf88aac9f09492ce9ed09712356', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/shortcuts.php\",\"hash\":\"35fd8c0c1bc0b92c8443d375c70c0b56\",\"size\":758,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/shortcuts.php\",\"hash\":\"35fd8c0c1bc0b92c8443d375c70c0b56\",\"size\":758,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__44a5bb46e479796f4768ac4c31eed9bb', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/includes\\/BasePanel.php\",\"hash\":\"62144229ff86c556c8547a041205cef7\",\"size\":212,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/BasePanel.php\",\"hash\":\"650ae3265317097bd79be45391627b98\",\"size\":225,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__6b05ed6e93348a81d58b385898af4346', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireInfoPanel.php\",\"hash\":\"b49567d2702bdacef008a9bcc187595a\",\"size\":45101,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireInfoPanel.php\",\"hash\":\"6729e107da7091b95a1b89e35d81413f\",\"size\":45153,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__5a53c9d535188d571284cd3e5443f89c', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/RequestInfoPanel.php\",\"hash\":\"5907fdf5d194928252af8e7f89e9d261\",\"size\":36880,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/RequestInfoPanel.php\",\"hash\":\"803ef8f152f78978cdccaf8734439292\",\"size\":37036,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__bb81c745217a6086e050e45eec9ebddc', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireLogsPanel.php\",\"hash\":\"aa346c81c55caa8356a8335cfd6cdfea\",\"size\":6205,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireLogsPanel.php\",\"hash\":\"b07e970b8239ab7bd2a55ffa32356ec1\",\"size\":6218,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__53c48e0b635df573b18a95f3e86ce652', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyLogsPanel.php\",\"hash\":\"4102edf5633088dd84221628f93a3a22\",\"size\":12545,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyLogsPanel.php\",\"hash\":\"6acb8f83bed550968f59c5c742d7d81b\",\"size\":12571,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__9b7c5dbb1b322f807777aa06fcc28cfa', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/MethodsInfoPanel.php\",\"hash\":\"e84304636523f039a5298906833300dc\",\"size\":5885,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/MethodsInfoPanel.php\",\"hash\":\"e84304636523f039a5298906833300dc\",\"size\":5885,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__7a5b7b615678d1a8ff04a183a3b369b4', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/DebugModePanel.php\",\"hash\":\"b6b0ef5395ea5147c22f845c3bd81b82\",\"size\":22831,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/DebugModePanel.php\",\"hash\":\"a21470bf2bf81162caf654aedaff0eb0\",\"size\":22922,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__398a814b2ea2b357099c13d9f69e3c02', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/ConsolePanel.php\",\"hash\":\"4aec14e77d1b1185971f10c003503ff6\",\"size\":37887,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ConsolePanel.php\",\"hash\":\"4aec14e77d1b1185971f10c003503ff6\",\"size\":37887,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__f6e496f31a5e8da27606d034ce962e83', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyTogglerPanel.php\",\"hash\":\"45df865a00f533bb0ecdce7106a1ecb5\",\"size\":2136,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyTogglerPanel.php\",\"hash\":\"45df865a00f533bb0ecdce7106a1ecb5\",\"size\":2136,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__7c0cbb416081925edcd9fc2e8b183bcd', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/PanelSelectorPanel.php\",\"hash\":\"741a102d9fd33c1eb1bdec57d2e70672\",\"size\":10682,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/PanelSelectorPanel.php\",\"hash\":\"741a102d9fd33c1eb1bdec57d2e70672\",\"size\":10682,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__2e855d6fb304d5c562beb92aa972550e', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/DumpsPanel.php\",\"hash\":\"59e820bd4349f469fa896694c4b1bab6\",\"size\":4358,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/DumpsPanel.php\",\"hash\":\"ec75ce29a494c13fd723a867fd1f816d\",\"size\":4384,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__2748d6d683f62ca74ae589c9f3652ba3', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/layout_class.php\",\"hash\":\"3c2e62bd0999074685c22532adf2c52a\",\"size\":69,\"time\":1536901329,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_class.php\",\"hash\":\"4f44c88063f5390a982a25a38aa8d918\",\"size\":189,\"time\":1536901329}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__406454fedaa4fc7a7cb49dc292b42ed0', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/layout_class.php\",\"hash\":\"0c6e8a838d391fc645042fac65e9e866\",\"size\":67,\"time\":1536826167,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_class.php\",\"hash\":\"2ef8c65d3731452f0f245580503d63fc\",\"size\":187,\"time\":1536826167}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__6f3c2ed0f83def27d230d78412336d26', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/includes\\/CodeProcessor.php\",\"hash\":\"bb276a7d9da131aaae081b1ba60e1738\",\"size\":10494,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/CodeProcessor.php\",\"hash\":\"44f3ce2e7ad957f09692e13395bcbea5\",\"size\":11302,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__74652c17b213330beeca280a3d112c15', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/TracyDebugger\\/consoleCode.php\",\"hash\":\"6685599a9d0a71f6b328ce4c383c76cc\",\"size\":130,\"time\":1537295109,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/assets\\/cache\\/TracyDebugger\\/consoleCode.php\",\"hash\":\"6685599a9d0a71f6b328ce4c383c76cc\",\"size\":130,\"time\":1537295109}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__2afd620a2aefc3269faa8ec0f4397cbe', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/includes\\/BasePanel.php\",\"hash\":\"62144229ff86c556c8547a041205cef7\",\"size\":212,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/BasePanel.php\",\"hash\":\"650ae3265317097bd79be45391627b98\",\"size\":225,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__259077d2e96355a590be9f5bae5a7d0d', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireInfoPanel.php\",\"hash\":\"b49567d2702bdacef008a9bcc187595a\",\"size\":45101,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireInfoPanel.php\",\"hash\":\"6729e107da7091b95a1b89e35d81413f\",\"size\":45153,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__0c14a492717aab4cde8d7bd59971c259', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/RequestInfoPanel.php\",\"hash\":\"5907fdf5d194928252af8e7f89e9d261\",\"size\":36880,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/RequestInfoPanel.php\",\"hash\":\"803ef8f152f78978cdccaf8734439292\",\"size\":37036,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__4c2269964f2128a3f7bc683696afd54e', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireLogsPanel.php\",\"hash\":\"aa346c81c55caa8356a8335cfd6cdfea\",\"size\":6205,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireLogsPanel.php\",\"hash\":\"b07e970b8239ab7bd2a55ffa32356ec1\",\"size\":6218,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__cebe834bb0e37fe64177b3d6efb9a271', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyLogsPanel.php\",\"hash\":\"4102edf5633088dd84221628f93a3a22\",\"size\":12545,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyLogsPanel.php\",\"hash\":\"6acb8f83bed550968f59c5c742d7d81b\",\"size\":12571,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__dc62b0e044db42684f7a5c0a9c258985', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/MethodsInfoPanel.php\",\"hash\":\"e84304636523f039a5298906833300dc\",\"size\":5885,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/MethodsInfoPanel.php\",\"hash\":\"e84304636523f039a5298906833300dc\",\"size\":5885,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__4ad26860c59db4dd68f5f75199af3c17', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/DebugModePanel.php\",\"hash\":\"b6b0ef5395ea5147c22f845c3bd81b82\",\"size\":22831,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/DebugModePanel.php\",\"hash\":\"a21470bf2bf81162caf654aedaff0eb0\",\"size\":22922,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__7867b9005b19a36c69aa15dde0bfe142', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/ConsolePanel.php\",\"hash\":\"4aec14e77d1b1185971f10c003503ff6\",\"size\":37887,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ConsolePanel.php\",\"hash\":\"4aec14e77d1b1185971f10c003503ff6\",\"size\":37887,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__ae9eb330d9be83fae8c9f7f8c78e6982', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyTogglerPanel.php\",\"hash\":\"45df865a00f533bb0ecdce7106a1ecb5\",\"size\":2136,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyTogglerPanel.php\",\"hash\":\"45df865a00f533bb0ecdce7106a1ecb5\",\"size\":2136,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__b18104097c745e5c6de310451391fb58', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/PanelSelectorPanel.php\",\"hash\":\"741a102d9fd33c1eb1bdec57d2e70672\",\"size\":10682,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/PanelSelectorPanel.php\",\"hash\":\"741a102d9fd33c1eb1bdec57d2e70672\",\"size\":10682,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__654dcb7fad64d6a0c8893080dbced3e6', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/panels\\/DumpsPanel.php\",\"hash\":\"59e820bd4349f469fa896694c4b1bab6\",\"size\":4358,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/DumpsPanel.php\",\"hash\":\"ec75ce29a494c13fd723a867fd1f816d\",\"size\":4384,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__1d4ace70a26ade1e84d98f45adb51d12', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/includes\\/CodeProcessor.php\",\"hash\":\"bb276a7d9da131aaae081b1ba60e1738\",\"size\":10494,\"time\":1536741847,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/CodeProcessor.php\",\"hash\":\"44f3ce2e7ad957f09692e13395bcbea5\",\"size\":11302,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__7bd07af86982142c05faa6ff7b4e2bcd', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/TracyDebugger\\/consoleCode.php\",\"hash\":\"5a9611fa646a3ad97e7b782a7b44746b\",\"size\":559,\"time\":1536837046,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/assets\\/cache\\/TracyDebugger\\/consoleCode.php\",\"hash\":\"5a9611fa646a3ad97e7b782a7b44746b\",\"size\":559,\"time\":1536837046}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__8cce0fc16ba33d296e83188fbcb7cb4d', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/TracyDebugger\\/includes\\/DummyTracyDebuggerClass.php\",\"hash\":\"cf0e8ac4ea2a0139363d3c6dc02126fc\",\"size\":326,\"time\":1536741847,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/DummyTracyDebuggerClass.php\",\"hash\":\"cf0e8ac4ea2a0139363d3c6dc02126fc\",\"size\":326,\"time\":1536741847}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__69ab7f0783600ed86be03d0c096c54d1', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/PageManipulator.action.php\",\"hash\":\"c1b45b25693cf89beac4665b56f2e004\",\"size\":4508,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/PageManipulator.action.php\",\"hash\":\"4a4e1d3ed11a7c559ec33b5b65eacaf5\",\"size\":4612,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__0bd5550a2a8e80ba118026c676bc1869', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/layout_class.php\",\"hash\":\"0c6e8a838d391fc645042fac65e9e866\",\"size\":67,\"time\":1536836932,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_class.php\",\"hash\":\"2ef8c65d3731452f0f245580503d63fc\",\"size\":187,\"time\":1536836932}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__a64b870a6de201ce86da1c806c42287b', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/layout_contacts.php\",\"hash\":\"3c2e62bd0999074685c22532adf2c52a\",\"size\":69,\"time\":1537194903,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_contacts.php\",\"hash\":\"4f44c88063f5390a982a25a38aa8d918\",\"size\":189,\"time\":1537194903}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__1053817d7dbcd3352fee9e641b7a5f4e', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/common\\/_done.php\",\"hash\":\"70c06a8c29a64cc3ab0e65278ae43c6b\",\"size\":27669,\"time\":1537347427,\"ns\":\"Processwire\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_done.php\",\"hash\":\"70c06a8c29a64cc3ab0e65278ae43c6b\",\"size\":27669,\"time\":1537347427}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__2e94ac3b69620b265b749f7b7e0f89a9', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/layout_carInfo.php\",\"hash\":\"4241bc013a24633e2bcacd80aa05f766\",\"size\":68,\"time\":1537181086,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_carInfo.php\",\"hash\":\"11d30b97c62c7ac7ad1e9ee090c813c8\",\"size\":188,\"time\":1537181086}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__332168f81ce84a3eaf983c427d75917a', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/modules\\/TracyDebugger\\/panels\\/MailInterceptorPanel.php\",\"hash\":\"1a7655b2d24c865ac86e8afc609458fc\",\"size\":10936,\"time\":1536742272,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/MailInterceptorPanel.php\",\"hash\":\"1a7655b2d24c865ac86e8afc609458fc\",\"size\":10936,\"time\":1536742272}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__3f211a4bc17a87c6a39530386fad0bb2', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/ajax-handler.php\",\"hash\":\"5820854f62a6eb3d38ba7ba0d1b3ea75\",\"size\":20,\"time\":1537240062,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/ajax-handler.php\",\"hash\":\"5820854f62a6eb3d38ba7ba0d1b3ea75\",\"size\":20,\"time\":1537240062}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__be7cf454710e0eed069db6e841948cf9', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/layout_privacy.php\",\"hash\":\"01506afeadb58219dda7f8aae5ba490c\",\"size\":21250,\"time\":1537339181,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_privacy.php\",\"hash\":\"01506afeadb58219dda7f8aae5ba490c\",\"size\":21250,\"time\":1537339181}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__65742bc47d1eb291e542abe62a5a7396', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/ProcessAdminActions.module\",\"hash\":\"f07f780b224ba8a6340efcbb8b1c03ba\",\"size\":40662,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/ProcessAdminActions.module\",\"hash\":\"c785a371ea43de6ac166d2bfdb5aaccd\",\"size\":41800,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__860f443fb7633b63c38b93291aa14c5c', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/TemplateRolesBatcher.action.php\",\"hash\":\"f30cbf59939b693b8c70a0f5a85c56bb\",\"size\":5618,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/TemplateRolesBatcher.action.php\",\"hash\":\"44c057d8d92a5ad9a08e6fa82173e1a4\",\"size\":5631,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__63722e6c1ff9a1b000f94e5788aacb6c', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CopyRepeaterItemsToOtherPage.action.php\",\"hash\":\"0ce82910df9981fb0a741b8a8a5557c5\",\"size\":4989,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CopyRepeaterItemsToOtherPage.action.php\",\"hash\":\"2e1c92f594977708b5bd502a401bd957\",\"size\":5002,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__9338544ff6d23acc7bd3d8e78daeebd0', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/PageActiveLanguagesBatcher.action.php\",\"hash\":\"682814a9ed93fb0246be15d360dd51ce\",\"size\":2818,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/PageActiveLanguagesBatcher.action.php\",\"hash\":\"cbbd414097080f063b41bb7bbb3c9326\",\"size\":2831,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__dd7eac9b5d3a0ef47d494871f86a39ec', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/DeleteUnusedTemplates.action.php\",\"hash\":\"586724e1f6b173bc8ad9bb9fdef2a63a\",\"size\":1895,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/DeleteUnusedTemplates.action.php\",\"hash\":\"bba5c466d0465ccd8b12cfcc16f128b2\",\"size\":1921,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__3c8ad6d768bf6218876349e9cc3418a8', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CopyContentToOtherField.action.php\",\"hash\":\"043ce66e8677b5270b45158a0ce40300\",\"size\":2643,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CopyContentToOtherField.action.php\",\"hash\":\"2070d76d3efb221ea40152b7670b5881\",\"size\":2656,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__8080407d47479f0aeb6e1e6b6a90fb70', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/TemplateFieldsBatcher.action.php\",\"hash\":\"09562c52f656e667e7bba72ba0f5ba70\",\"size\":2898,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/TemplateFieldsBatcher.action.php\",\"hash\":\"42a77032440e733dd589a80f7157dc72\",\"size\":2976,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__9e77d675c546edb7259f055203a832e5', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/EmailBatcher.action.php\",\"hash\":\"cc53db093fe1a7a12aaa0a04bc8cc466\",\"size\":8651,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/EmailBatcher.action.php\",\"hash\":\"d5fbbcee0a8a8e01a332af9534f26efb\",\"size\":8677,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__522d34a8d915d99f470fe217123ad63a', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/UserRolesPermissionsBatcher.action.php\",\"hash\":\"5b42b367541d73665fda362e9a148f3d\",\"size\":4043,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/UserRolesPermissionsBatcher.action.php\",\"hash\":\"5b42b367541d73665fda362e9a148f3d\",\"size\":4043,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__1b6f1d60e9e6efc24493061ca495b8b4', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/DeleteUnusedFields.action.php\",\"hash\":\"7d858d44434c6e391a17faddc4d1578b\",\"size\":1779,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/DeleteUnusedFields.action.php\",\"hash\":\"56f0d35f3f4b340a368fd50daf87c9da\",\"size\":1831,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__91bf63ff76cf252ab04db7722b45648c', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/FieldSetOrSearchAndReplace.action.php\",\"hash\":\"5d1339c0683e1c5ed6f6329d7185886e\",\"size\":5347,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/FieldSetOrSearchAndReplace.action.php\",\"hash\":\"14f8e646d5d8d892cd20e705b645478b\",\"size\":5399,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__b9c7b9591906f43e81ac5c2666b3fe40', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/FtpFilesToPage.action.php\",\"hash\":\"137cf2ea0617f121ebfcce5a126ef88e\",\"size\":3405,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/FtpFilesToPage.action.php\",\"hash\":\"67ca22ab380a2b881aecdead80d8b2d2\",\"size\":3418,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__efffa988663f4314a7e467781e940e30', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CopyFieldContentToOtherPage.action.php\",\"hash\":\"a62707da48123a4302e519ebe7c27733\",\"size\":2226,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CopyFieldContentToOtherPage.action.php\",\"hash\":\"a62707da48123a4302e519ebe7c27733\",\"size\":2226,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__b87e70c32d51e648326b67950eeedc16', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/PageTableToRepeaterMatrix.action.php\",\"hash\":\"0a0c64fcb181439aea4c723f1c8cf946\",\"size\":17391,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/PageTableToRepeaterMatrix.action.php\",\"hash\":\"3e6a65d2cd8085836197c689796a9dcb\",\"size\":17469,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__d5da0a5ac29e51284fa24c8df075adc7', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CreateUsersBatcher.action.php\",\"hash\":\"f223a3084b84973f8d7624e3af1c3a07\",\"size\":7143,\"time\":1537247476,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/ProcessAdminActions\\/actions\\/CreateUsersBatcher.action.php\",\"hash\":\"fc02e1ebddf7045e0e44f784cfe382dc\",\"size\":7358,\"time\":1537247476}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('Permissions.names', '{\"admin-actions\":1674,\"admin-actions-restore\":1675,\"db-backup\":1016,\"logs-edit\":1014,\"logs-view\":1013,\"page-delete\":34,\"page-edit\":32,\"page-edit-recent\":1011,\"page-lister\":1006,\"page-lock\":54,\"page-move\":35,\"page-sort\":50,\"page-template\":51,\"page-view\":36,\"profile-edit\":53,\"user-admin\":52}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__e008c448f89583701bc01318eb4dec78', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/templates\\/layout_carInfo.php\",\"hash\":\"a6dc2ecda021698d6c0dea7aa6b7a4b5\",\"size\":71,\"time\":1537241748,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_carInfo.php\",\"hash\":\"eab2c08e48ec3cd540299a67fb167e1f\",\"size\":191,\"time\":1537241748}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__79f042ea14bef59404274d530a13cf45', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/layout_contacts.php\",\"hash\":\"0c6e8a838d391fc645042fac65e9e866\",\"size\":67,\"time\":1537245159,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_contacts.php\",\"hash\":\"2ef8c65d3731452f0f245580503d63fc\",\"size\":187,\"time\":1537245159}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__e71d6eaa912a5c08c9ae6f4ebb52213a', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/templates\\/layout_contacts.php\",\"hash\":\"0c6e8a838d391fc645042fac65e9e866\",\"size\":67,\"time\":1537180342,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_contacts.php\",\"hash\":\"2ef8c65d3731452f0f245580503d63fc\",\"size\":187,\"time\":1537180342}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__a59a31c4d3601205ffdba4de7e2a1f17', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/templates\\/layout_carInfo.php\",\"hash\":\"4241bc013a24633e2bcacd80aa05f766\",\"size\":68,\"time\":1537245159,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_carInfo.php\",\"hash\":\"11d30b97c62c7ac7ad1e9ee090c813c8\",\"size\":188,\"time\":1537245159}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('Modules.info', '{\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":492,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":102,\"autoload\":\"function\",\"singular\":true,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1532080770,\"configurable\":19,\"namespace\":\"ProcessWire\\\\\"},\"163\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1532080875,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"160\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":24,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.94\"]},\"autoload\":\"template=admin\",\"created\":1532080784,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\"},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":105,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"170\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":106,\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1532081125,\"namespace\":\"ProcessWire\\\\\"},\"169\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":106,\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"singular\":true,\"created\":1532081125,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":104,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":101,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":1,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":101,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":104,\"autoload\":true,\"singular\":true,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":100,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":101,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":1,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":106,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":105,\"singular\":1,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":100,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":1,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":16,\"singular\":true,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":105,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":107,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":107,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":104,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":106,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":102,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":105,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":102,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":125,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":122,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":101,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"155\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":160,\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":103,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":121,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":27,\"autoload\":\"template=admin\",\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"162\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":2,\"created\":1532080789,\"namespace\":\"ProcessWire\\\\\"},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":102,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":196,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":183,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":1,\"singular\":1,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":221,\"singular\":1,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\"},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":108,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":108,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1532080770,\"configurable\":\"ProcessUserConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":118,\"permission\":\"module-admin\",\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":104,\"permission\":\"page-view\",\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":108,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":103,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":106,\"permission\":\"page-edit\",\"singular\":1,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":108,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"161\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":1,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1532080789,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":104,\"permission\":\"page-view\",\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":120,\"permission\":\"page-edit\",\"singular\":1,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":102,\"singular\":1,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":112,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"159\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1532080783,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":119,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1532080770,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":24,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1532080770,\"configurable\":true,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1532080770,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"164\":{\"name\":\"AdminOnSteroids\",\"title\":\"AdminOnSteroids\",\"version\":\"1.9.8\",\"icon\":\"medkit\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.8.0\"],\"PHP\":[\">=\",\"5.3.8\"]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1532080931,\"configurable\":3,\"class\":\"AdminOnSteroids\"},\"165\":{\"name\":\"ProcessDatabaseBackups\",\"title\":\"Database Backups\",\"version\":4,\"icon\":\"database\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.62\"]},\"permission\":\"db-backup\",\"singular\":1,\"created\":1532080977,\"nav\":[{\"url\":\".\\/\",\"label\":\"View\",\"icon\":\"list\"},{\"url\":\"backup\\/\",\"label\":\"Backup\",\"icon\":\"plus-circle\"},{\"url\":\"upload\\/\",\"label\":\"Upload\",\"icon\":\"cloud-upload\"}]},\"167\":{\"name\":\"TracyDebugger\",\"title\":\"Tracy Debugger\",\"version\":\"4.10.25\",\"icon\":\"bug\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.7.2\"],\"PHP\":[\">=\",\"5.4.4\"]},\"autoload\":true,\"singular\":true,\"created\":1532081058,\"configurable\":3,\"namespace\":\"\\\\\"},\"173\":{\"name\":\"ProcessAdminActions\",\"title\":\"Admin Actions\",\"version\":\"0.6.12\",\"icon\":\"cog\",\"permission\":\"page-view\",\"singular\":true,\"created\":1537240279,\"configurable\":3,\"namespace\":\"\\\\\",\"useNavJSON\":true,\"permissionMethod\":\"permissionCheck\"},\"171\":{\"name\":\"FieldtypeTable\",\"title\":\"ProFields: Table\",\"version\":19,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.42\"]},\"installs\":[\"InputfieldTable\"],\"singular\":true,\"created\":1536827364},\"172\":{\"name\":\"InputfieldTable\",\"title\":\"ProFields: Table\",\"version\":19,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.8.27\"]},\"created\":1536827364},\"166\":{\"name\":\"AllInOneMinify\",\"title\":\"AIOM+ (All In One Minify) for CSS, LESS, JS and HTML\",\"version\":323,\"autoload\":true,\"singular\":true,\"created\":1532081011,\"configurable\":true,\"namespace\":\"\\\\\"},\"174\":{\"name\":\"FieldtypeMultiplier\",\"title\":\"ProFields: Multiplier\",\"version\":13,\"installs\":[\"InputfieldMultiplier\"],\"singular\":true},\"175\":{\"name\":\"InputfieldMultiplier\",\"title\":\"ProFields: Multiplier\",\"version\":11,\"requiresVersions\":{\"FieldtypeMultiplier\":[\">=\",0]}}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__08c72d8a042c5e5126c896d340470efc', '{\"source\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/ready.php\",\"hash\":\"25177c9507410ec09442b92dad82acdb\",\"size\":1394,\"time\":1537434706,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/ready.php\",\"hash\":\"25177c9507410ec09442b92dad82acdb\",\"size\":1394,\"time\":1537434706}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__fde2cbe4b5ff571559d3c656301678b1', '{\"source\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/ready.php\",\"hash\":\"25177c9507410ec09442b92dad82acdb\",\"size\":1394,\"time\":1537435031,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/home\\/c\\/cw40247\\/mercedes\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/ready.php\",\"hash\":\"25177c9507410ec09442b92dad82acdb\",\"size\":1394,\"time\":1537435031}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__7e58e20fa6082e546bf5d54cb63a3b80', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/TracyDebugger.module\",\"hash\":\"0c0d67b78ff1ef7bfcbe96f4580e979c\",\"size\":156342,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/TracyDebugger.module\",\"hash\":\"6fb7e5ec7ee9113d6cb09c23de1ff4f9\",\"size\":180008,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__1579077079bed02d052e80f6909cd661', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"07537956dfb391fc13a4bfdf84ffbd56\",\"size\":58985,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"5f323461c889312b69caa7b19ab98807\",\"size\":60829,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__73f1d5cb69832d8e64f40f0ce392d3ca', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/includes\\/DummyTracyDebuggerClass.php\",\"hash\":\"cf0e8ac4ea2a0139363d3c6dc02126fc\",\"size\":326,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/DummyTracyDebuggerClass.php\",\"hash\":\"cf0e8ac4ea2a0139363d3c6dc02126fc\",\"size\":326,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__4da2b721bf774087d432196607979267', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/includes\\/TD.php\",\"hash\":\"86d90672fd3771cfeb0581e78852c1ba\",\"size\":6957,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/TD.php\",\"hash\":\"7c748c09f4cddc2fa61069f0bf7d7d19\",\"size\":6983,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__38cf2de0c201d1273feeacae9f61eac4', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/includes\\/ShortcutMethods.php\",\"hash\":\"7498aa5e85c90eaaa0001470d4e960d1\",\"size\":6312,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/ShortcutMethods.php\",\"hash\":\"7498aa5e85c90eaaa0001470d4e960d1\",\"size\":6312,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__1e820c2590d7bf6e2daed238c59dbf26', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/ready.php\",\"hash\":\"edd9021011b21f03c6c3fa7fd1ba5486\",\"size\":1243,\"time\":1537433019,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/ready.php\",\"hash\":\"edd9021011b21f03c6c3fa7fd1ba5486\",\"size\":1243,\"time\":1537433019}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__12d5ad060b6ae736cd011da8191e2dc7', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/templates\\/common\\/_init.php\",\"hash\":\"a240b146613abf13e37d36b231a5b7f1\",\"size\":1204,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_init.php\",\"hash\":\"f0e84c9bb6d6a4423f6333d222553957\",\"size\":1444,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__8f8749b0467a90ce694538983a5ce8aa', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/templates\\/common\\/_done.php\",\"hash\":\"8bc853780db722d05418f79f0842c83a\",\"size\":27174,\"time\":1537429496,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_done.php\",\"hash\":\"8bc853780db722d05418f79f0842c83a\",\"size\":27174,\"time\":1537429496}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__54ea4b7fe43a4479746335e26881b5db', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/templates\\/home.php\",\"hash\":\"4241bc013a24633e2bcacd80aa05f766\",\"size\":68,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"11d30b97c62c7ac7ad1e9ee090c813c8\",\"size\":188,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__de47ca04d8473c0daa2ef08b9f1751bd', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/templates\\/common\\/_functions.php\",\"hash\":\"3e018e17f76cd070a56db5d9a5f1c0df\",\"size\":3434,\"time\":1537356599,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_functions.php\",\"hash\":\"3e018e17f76cd070a56db5d9a5f1c0df\",\"size\":3434,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__50b92a4ebceeee6f003bc713104a265f', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/templates\\/common\\/_forms.php\",\"hash\":\"e08b8ba995655883174e7e34f8dca887\",\"size\":2440,\"time\":1537356599,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_forms.php\",\"hash\":\"e08b8ba995655883174e7e34f8dca887\",\"size\":2440,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__31e85f317a2329513c59694ac9cdb5ac', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/templates\\/common\\/_delegate.php\",\"hash\":\"03f379b32592fe132891e4035469aa3f\",\"size\":209,\"time\":1537356599,\"ns\":\"Processwire\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/common\\/_delegate.php\",\"hash\":\"03f379b32592fe132891e4035469aa3f\",\"size\":209,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__a921f46c6cc041ca334c8f7de60c6eba', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1537356599,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__14f11c25317f0521eae8ad9ba083793f', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/tracy.php\",\"hash\":\"9e38a388e52571fe8debe480d77ab704\",\"size\":607,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/tracy.php\",\"hash\":\"24a17a050265c9f8900aa91c282dd075\",\"size\":3055,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__4462960323854d3ea13992d7959ff19a', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/IBarPanel.php\",\"hash\":\"cfc6be010f12ae6b332954f1eb2049e9\",\"size\":397,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/IBarPanel.php\",\"hash\":\"cfc6be010f12ae6b332954f1eb2049e9\",\"size\":397,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__9833d6d6d63e57a993e5d8c89a3df232', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Bar.php\",\"hash\":\"68234af3f4f71078604f6e7d33aff6d1\",\"size\":7323,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Bar.php\",\"hash\":\"4625e0db34cb2ff706e2755d8be4ddc7\",\"size\":8367,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__98c6df7bf328b72c48aa9a9df6d2600c', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/BlueScreen.php\",\"hash\":\"c40a7a6dee29ef2a97ff4e3f23f79589\",\"size\":8747,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/BlueScreen.php\",\"hash\":\"29faa579a6f148ca782509c7a358e5f2\",\"size\":9390,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__4435000294bc5cf4b002dce23543c5a0', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/DefaultBarPanel.php\",\"hash\":\"c6e2d462463f6bcb9fbbe95c79645535\",\"size\":895,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/DefaultBarPanel.php\",\"hash\":\"7984a03fd01a6aed1ee0d5aa25079c2e\",\"size\":1156,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__97263fd70005acbabe45844fb6be277d', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Dumper.php\",\"hash\":\"f1e57a6e591720225d0729bdb75e1c89\",\"size\":17609,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Dumper.php\",\"hash\":\"f1e57a6e591720225d0729bdb75e1c89\",\"size\":17609,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__979a4b62004819f21ca1cc6194f363e5', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/ILogger.php\",\"hash\":\"458e933552d158d0e9ee9e4c7c430cd5\",\"size\":380,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/ILogger.php\",\"hash\":\"458e933552d158d0e9ee9e4c7c430cd5\",\"size\":380,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__3f339ece8e7ea7fc30a592a3f50e9f23', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/FireLogger.php\",\"hash\":\"9e562c9ac3680b50b75397c016945399\",\"size\":4807,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/FireLogger.php\",\"hash\":\"9e562c9ac3680b50b75397c016945399\",\"size\":4807,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__f0bbe1965fbb2637ee77bdb39bb856ee', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Helpers.php\",\"hash\":\"2062ea9eda994e34385690e16e424e75\",\"size\":7765,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Helpers.php\",\"hash\":\"2062ea9eda994e34385690e16e424e75\",\"size\":7765,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__e47251349cb777fd595389b1250c35b5', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Logger.php\",\"hash\":\"54e04c50c70ae0d21a620f6e25cd980c\",\"size\":6008,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Logger.php\",\"hash\":\"54e04c50c70ae0d21a620f6e25cd980c\",\"size\":6008,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__0ffa299e1a3ffba0ea9bc9d0c42651e4', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Debugger.php\",\"hash\":\"93de3ca7c5fce3bafb137e69a8cbd1e8\",\"size\":17624,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/Debugger.php\",\"hash\":\"0027994b593d356e8899151688dde032\",\"size\":17711,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__c6e11a65e49779e8fd5b0f3eef2e51bb', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/OutputDebugger.php\",\"hash\":\"7e4459c26f9c4d6dce1f3c3ea23e4345\",\"size\":1868,\"time\":1537356599,\"ns\":\"Tracy\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/Tracy\\/OutputDebugger.php\",\"hash\":\"7e4459c26f9c4d6dce1f3c3ea23e4345\",\"size\":1868,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__1af6b2adb321de1860a1d6b339e8b75b', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/shortcuts.php\",\"hash\":\"35fd8c0c1bc0b92c8443d375c70c0b56\",\"size\":758,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/tracy-master\\/src\\/shortcuts.php\",\"hash\":\"35fd8c0c1bc0b92c8443d375c70c0b56\",\"size\":758,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__f37326d1c116229f9bd2ab3bc60e6185', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/includes\\/BasePanel.php\",\"hash\":\"62144229ff86c556c8547a041205cef7\",\"size\":212,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/includes\\/BasePanel.php\",\"hash\":\"650ae3265317097bd79be45391627b98\",\"size\":225,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__95281312650c0ea69198edaab76bff92', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireInfoPanel.php\",\"hash\":\"b49567d2702bdacef008a9bcc187595a\",\"size\":45101,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireInfoPanel.php\",\"hash\":\"6729e107da7091b95a1b89e35d81413f\",\"size\":45153,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__9ef5b4aed48ae9b143936d408d6c51bb', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/RequestInfoPanel.php\",\"hash\":\"5907fdf5d194928252af8e7f89e9d261\",\"size\":36880,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/RequestInfoPanel.php\",\"hash\":\"803ef8f152f78978cdccaf8734439292\",\"size\":37036,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__f4410eb4753ee10a7d54a4dfbc78fb2b', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireLogsPanel.php\",\"hash\":\"aa346c81c55caa8356a8335cfd6cdfea\",\"size\":6205,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ProcesswireLogsPanel.php\",\"hash\":\"b07e970b8239ab7bd2a55ffa32356ec1\",\"size\":6218,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__01052b77ea20c9c663acc605acc9f92c', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyLogsPanel.php\",\"hash\":\"4102edf5633088dd84221628f93a3a22\",\"size\":12545,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyLogsPanel.php\",\"hash\":\"6acb8f83bed550968f59c5c742d7d81b\",\"size\":12571,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__52b34af3c6453bdd60d7a0dc655bd842', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/MethodsInfoPanel.php\",\"hash\":\"e84304636523f039a5298906833300dc\",\"size\":5885,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/MethodsInfoPanel.php\",\"hash\":\"e84304636523f039a5298906833300dc\",\"size\":5885,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__3822182bd502e22edf2b461dfd22b349', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/DebugModePanel.php\",\"hash\":\"b6b0ef5395ea5147c22f845c3bd81b82\",\"size\":22831,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/DebugModePanel.php\",\"hash\":\"a21470bf2bf81162caf654aedaff0eb0\",\"size\":22922,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__75d19b437c6a543034eae8f43e2bd7f0', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/ConsolePanel.php\",\"hash\":\"4aec14e77d1b1185971f10c003503ff6\",\"size\":37887,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/ConsolePanel.php\",\"hash\":\"4aec14e77d1b1185971f10c003503ff6\",\"size\":37887,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__cba176c9f9424b59f9620028f036cf63', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyTogglerPanel.php\",\"hash\":\"45df865a00f533bb0ecdce7106a1ecb5\",\"size\":2136,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/TracyTogglerPanel.php\",\"hash\":\"45df865a00f533bb0ecdce7106a1ecb5\",\"size\":2136,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__b4c4d8dc221d94cb96a9df6847a3cbe1', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/PanelSelectorPanel.php\",\"hash\":\"741a102d9fd33c1eb1bdec57d2e70672\",\"size\":10682,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/PanelSelectorPanel.php\",\"hash\":\"741a102d9fd33c1eb1bdec57d2e70672\",\"size\":10682,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__e1c9ea9ab41a842c089976509872d2dd', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/modules\\/TracyDebugger\\/panels\\/DumpsPanel.php\",\"hash\":\"59e820bd4349f469fa896694c4b1bab6\",\"size\":4358,\"time\":1537356599,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TracyDebugger\\/panels\\/DumpsPanel.php\",\"hash\":\"ec75ce29a494c13fd723a867fd1f816d\",\"size\":4384,\"time\":1537356599}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__b2b17b9058aa7838abe6988d1e525859', '{\"source\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/ready.php\",\"hash\":\"719b0b55e402e5526b3535af1a28eda7\",\"size\":441,\"time\":1537417775,\"ns\":\"Processwire\"},\"target\":{\"file\":\"C:\\/Users\\/Vasilstar\\/Documents\\/Work\\/mercedes\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/ready.php\",\"hash\":\"719b0b55e402e5526b3535af1a28eda7\",\"size\":441,\"time\":1537417775}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES('FileCompiler__50abb1fd1a5abc0c395d9e5e80b5806f', '{\"source\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/templates\\/layout_pdf.php\",\"hash\":\"152b3dd0e3394a3768b4ccd363df9e15\",\"size\":14849,\"time\":1537436594,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"\\/Users\\/GK\\/Projects\\/mercedes.loc\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/layout_pdf.php\",\"hash\":\"152b3dd0e3394a3768b4ccd363df9e15\",\"size\":14849,\"time\":1537436594}}', '2010-04-08 03:10:10');

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_aos_column_break`;
CREATE TABLE `field_aos_column_break` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_benefit_description`;
CREATE TABLE `field_benefit_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1652', 'В дилерском центре «Каскад - Авто» работает зона отдыха и кафе где Вы в комфортной обстановке сможете отдохнуть.');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1653', 'Квалификация наших сотрудников подтверждена официальными сертификатами «Мерседес - Бенц» и многолетним успешным опытом работы.');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1654', 'Вместе с автомобилем семейства S - Класса мы предлагаем Вам не только эксклюзивный продукт, но и ощущение исключительного комфорта и удобства. Став участником программы S - Lounge, Вы откроете для себя мир уникальных привилегий и премиального сервиса, который позволит Вам в полной мере насладиться философией современной роскоши от «Мерседес - Бенц».');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1655', 'Прямо в дилерском центре Вы можете выбрать премиальные аксессуары для жизни в стиле «Мерседес - Бенц».');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1656', 'Онлайн-запись  на сервис 24 часа');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1657', 'Персональный консультант');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1658', 'Обслуживание без ожидания и очередей');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1659', 'Нормо-час от 1 100 руб для постгарантийных автомобилей и от 2400 руб. для автомобилей на гарантии');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1660', 'Программа «Мерседес-Бенц» Service Привилегия 3+');
INSERT INTO `field_benefit_description` (`pages_id`, `data`) VALUES('1661', 'Возможность отслеживать статус ремонта');

DROP TABLE IF EXISTS `field_benefit_image`;
CREATE TABLE `field_benefit_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_benefit_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1652', 'premser4_2x.jpg', '0', '', '2018-09-17 08:32:53', '2018-09-17 08:32:53', '');
INSERT INTO `field_benefit_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1653', 'premser3_2x.jpg', '0', '', '2018-09-17 08:32:53', '2018-09-17 08:32:53', '');
INSERT INTO `field_benefit_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1654', 'premser2_2x.jpg', '0', '', '2018-09-17 08:32:53', '2018-09-17 08:32:53', '');
INSERT INTO `field_benefit_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1655', 'premser1_2x.jpg', '0', '', '2018-09-17 08:32:53', '2018-09-17 08:32:53', '');

DROP TABLE IF EXISTS `field_benefit_title`;
CREATE TABLE `field_benefit_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_benefit_title` (`pages_id`, `data`) VALUES('1652', 'Зона отдыха и кафе');
INSERT INTO `field_benefit_title` (`pages_id`, `data`) VALUES('1653', 'Сертифицированный персонал');
INSERT INTO `field_benefit_title` (`pages_id`, `data`) VALUES('1654', '«Мерседес - Бенц» S - Lounge');
INSERT INTO `field_benefit_title` (`pages_id`, `data`) VALUES('1655', 'Бутик аксессуаров');

DROP TABLE IF EXISTS `field_benefits`;
CREATE TABLE `field_benefits` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_benefits` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1656,1657,1658,1659,1660,1661', '6', '1650');

DROP TABLE IF EXISTS `field_benefitswithpic`;
CREATE TABLE `field_benefitswithpic` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_benefitswithpic` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1652,1653,1654,1655', '4', '1651');

DROP TABLE IF EXISTS `field_car_accessories`;
CREATE TABLE `field_car_accessories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_accessories` (`pages_id`, `data`) VALUES('1622', '03B,03B,08U,09U,14U,15U,165,16U,17U,1B1,218,235,258,26U,270,274');
INSERT INTO `field_car_accessories` (`pages_id`, `data`) VALUES('1623', '03B,08U,09U,14U,15U,165,16P');

DROP TABLE IF EXISTS `field_car_cabin`;
CREATE TABLE `field_car_cabin` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_cabin` (`pages_id`, `data`) VALUES('1622', 'Искусcтвенная кожа Artico / микроволокно Dinamica черная');
INSERT INTO `field_car_cabin` (`pages_id`, `data`) VALUES('1623', 'Искусcтвенная кожа Artico, черный');

DROP TABLE IF EXISTS `field_car_color`;
CREATE TABLE `field_car_color` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_color` (`pages_id`, `data`) VALUES('1622', 'Белый');
INSERT INTO `field_car_color` (`pages_id`, `data`) VALUES('1623', 'Белый');

DROP TABLE IF EXISTS `field_car_id`;
CREATE TABLE `field_car_id` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_id` (`pages_id`, `data`) VALUES('1622', '0852413571');
INSERT INTO `field_car_id` (`pages_id`, `data`) VALUES('1623', '0753425814');

DROP TABLE IF EXISTS `field_car_instock`;
CREATE TABLE `field_car_instock` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_car_modification_id`;
CREATE TABLE `field_car_modification_id` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_modification_id` (`pages_id`, `data`) VALUES('1622', '1');
INSERT INTO `field_car_modification_id` (`pages_id`, `data`) VALUES('1623', '2');

DROP TABLE IF EXISTS `field_car_photos`;
CREATE TABLE `field_car_photos` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1622', '15162526162180001-1920x800_resize.jpg', '7', '', '2018-09-18 14:58:39', '2018-09-18 14:58:39', '');
INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1622', '15162525834670004-1920x800_resize.jpeg', '6', '', '2018-09-18 14:58:39', '2018-09-18 14:58:39', '');
INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1622', '15162525834550003-1920x800_resize.jpeg', '5', '', '2018-09-18 14:58:39', '2018-09-18 14:58:39', '');
INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1622', '15162525834430002-1920x800_resize.jpeg', '4', '', '2018-09-18 14:58:39', '2018-09-18 14:58:39', '');
INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1622', '15162525834080001-1920x800_resize.jpg', '3', '', '2018-09-18 14:58:39', '2018-09-18 14:58:39', '');
INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1622', '15162525493050003-1920x800_resize.jpg', '2', '', '2018-09-18 14:58:39', '2018-09-18 14:58:39', '');
INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1622', '15162525492950002-1920x800_resize.jpg', '1', '', '2018-09-18 14:58:39', '2018-09-18 14:58:39', '');
INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1622', '15162525492730001-1920x800_resize.jpg', '0', '', '2018-09-18 14:58:39', '2018-09-18 14:58:39', '');
INSERT INTO `field_car_photos` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1677', 'no_image-1200x750_crop-1.jpg', '0', '', '2018-09-18 23:10:35', '2018-09-18 23:10:35', '');

DROP TABLE IF EXISTS `field_car_price`;
CREATE TABLE `field_car_price` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_price` (`pages_id`, `data`) VALUES('1622', '2 660 000');
INSERT INTO `field_car_price` (`pages_id`, `data`) VALUES('1623', '3 069 084');
INSERT INTO `field_car_price` (`pages_id`, `data`) VALUES('1644', '3 089 828');

DROP TABLE IF EXISTS `field_car_special_proposal`;
CREATE TABLE `field_car_special_proposal` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_special_proposal` (`pages_id`, `data`) VALUES('1622', '2 606 800');
INSERT INTO `field_car_special_proposal` (`pages_id`, `data`) VALUES('1623', '3 038 393');

DROP TABLE IF EXISTS `field_car_year`;
CREATE TABLE `field_car_year` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_car_year` (`pages_id`, `data`) VALUES('1622', '2018');
INSERT INTO `field_car_year` (`pages_id`, `data`) VALUES('1623', '2018');

DROP TABLE IF EXISTS `field_class_capacity`;
CREATE TABLE `field_class_capacity` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_capacity` (`pages_id`, `data`) VALUES('1620', '1595 см3');
INSERT INTO `field_class_capacity` (`pages_id`, `data`) VALUES('1621', '1991 см3');

DROP TABLE IF EXISTS `field_class_cylinders`;
CREATE TABLE `field_class_cylinders` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_cylinders` (`pages_id`, `data`) VALUES('1620', '4');
INSERT INTO `field_class_cylinders` (`pages_id`, `data`) VALUES('1621', '4');

DROP TABLE IF EXISTS `field_class_fuel`;
CREATE TABLE `field_class_fuel` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_fuel` (`pages_id`, `data`) VALUES('1620', 'Бензин');
INSERT INTO `field_class_fuel` (`pages_id`, `data`) VALUES('1621', 'Бензин');

DROP TABLE IF EXISTS `field_class_fuel_consumption`;
CREATE TABLE `field_class_fuel_consumption` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_fuel_consumption` (`pages_id`, `data`) VALUES('1620', '5.9-6.3 л/100км');
INSERT INTO `field_class_fuel_consumption` (`pages_id`, `data`) VALUES('1621', '6.8-7.2 л/100км');

DROP TABLE IF EXISTS `field_class_gear`;
CREATE TABLE `field_class_gear` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_gear` (`pages_id`, `data`) VALUES('1620', 'Задний');
INSERT INTO `field_class_gear` (`pages_id`, `data`) VALUES('1621', 'Полный');

DROP TABLE IF EXISTS `field_class_id`;
CREATE TABLE `field_class_id` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_id` (`pages_id`, `data`) VALUES('1620', '1');
INSERT INTO `field_class_id` (`pages_id`, `data`) VALUES('1621', '2');

DROP TABLE IF EXISTS `field_class_images`;
CREATE TABLE `field_class_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '15162526162180001-1920x800_resize.jpg', '7', '', '2018-09-14 11:15:16', '2018-09-14 11:15:16', '');
INSERT INTO `field_class_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '15162525834670004-1920x800_resize.jpeg', '6', '', '2018-09-14 11:15:16', '2018-09-14 11:15:16', '');
INSERT INTO `field_class_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '15162525834550003-1920x800_resize.jpeg', '5', '', '2018-09-14 11:15:16', '2018-09-14 11:15:16', '');
INSERT INTO `field_class_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '15162525834430002-1920x800_resize.jpeg', '4', '', '2018-09-14 11:15:16', '2018-09-14 11:15:16', '');
INSERT INTO `field_class_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '15162525834080001-1920x800_resize.jpg', '3', '', '2018-09-14 11:15:16', '2018-09-14 11:15:16', '');
INSERT INTO `field_class_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '15162525493050003-1920x800_resize.jpg', '2', '', '2018-09-14 11:15:16', '2018-09-14 11:15:16', '');
INSERT INTO `field_class_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '15162525492950002-1920x800_resize.jpg', '1', '', '2018-09-14 11:15:16', '2018-09-14 11:15:16', '');
INSERT INTO `field_class_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '15162525492730001-1920x800_resize.jpg', '0', '', '2018-09-14 11:15:16', '2018-09-14 11:15:16', '');

DROP TABLE IF EXISTS `field_class_name`;
CREATE TABLE `field_class_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_name` (`pages_id`, `data`) VALUES('1620', 'C 180 Седан Sport');
INSERT INTO `field_class_name` (`pages_id`, `data`) VALUES('1621', 'C 200 4MATIC Sport');

DROP TABLE IF EXISTS `field_class_power`;
CREATE TABLE `field_class_power` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_power` (`pages_id`, `data`) VALUES('1620', '150 л.с.');
INSERT INTO `field_class_power` (`pages_id`, `data`) VALUES('1621', '184 л.с.');

DROP TABLE IF EXISTS `field_class_preview`;
CREATE TABLE `field_class_preview` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_preview` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1537', '0004-272x153_resize-1.png', '0', '', '2018-09-14 14:24:57', '2018-09-14 14:24:57', '');
INSERT INTO `field_class_preview` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1538', 'c-coupe.png', '0', '', '2018-09-14 15:02:36', '2018-09-14 15:02:36', '');
INSERT INTO `field_class_preview` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1677', 'no_image-1200x750_crop.jpg', '0', '', '2018-09-18 22:28:37', '2018-09-18 22:28:37', '');

DROP TABLE IF EXISTS `field_class_rated_power`;
CREATE TABLE `field_class_rated_power` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_rated_power` (`pages_id`, `data`) VALUES('1620', '110 (150) кВт [л. с.] / 5300 об/мин');
INSERT INTO `field_class_rated_power` (`pages_id`, `data`) VALUES('1621', '135 (184) кВт [л. с.] / 5500 об/мин');

DROP TABLE IF EXISTS `field_class_transmission`;
CREATE TABLE `field_class_transmission` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_class_transmission` (`pages_id`, `data`) VALUES('1620', 'АКПП');
INSERT INTO `field_class_transmission` (`pages_id`, `data`) VALUES('1621', 'АКПП');

DROP TABLE IF EXISTS `field_contacts_address`;
CREATE TABLE `field_contacts_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_address` (`pages_id`, `data`) VALUES('1664', '625015, Тюмень, ул. Беляева, 35 (Тобольский тракт)');

DROP TABLE IF EXISTS `field_contacts_company_name`;
CREATE TABLE `field_contacts_company_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_company_name` (`pages_id`, `data`) VALUES('1664', 'Астерион');

DROP TABLE IF EXISTS `field_contacts_email`;
CREATE TABLE `field_contacts_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_email` (`pages_id`, `data`) VALUES('1664', 'mercedes@mb-asterion.ru');

DROP TABLE IF EXISTS `field_contacts_header_image`;
CREATE TABLE `field_contacts_header_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_header_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1664', '60406493.jpg', '0', '', '2018-09-19 09:43:37', '2018-09-19 09:43:37', '');

DROP TABLE IF EXISTS `field_contacts_phone`;
CREATE TABLE `field_contacts_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_phone` (`pages_id`, `data`) VALUES('1664', '+7 (3452) 500-528');

DROP TABLE IF EXISTS `field_contacts_team`;
CREATE TABLE `field_contacts_team` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_team` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1684', '1689', '1', '1685');
INSERT INTO `field_contacts_team` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1686', '1688', '1', '1687');

DROP TABLE IF EXISTS `field_contacts_team_title`;
CREATE TABLE `field_contacts_team_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_team_title` (`pages_id`, `data`) VALUES('1684', 'Ваши менеджеры');
INSERT INTO `field_contacts_team_title` (`pages_id`, `data`) VALUES('1686', 'Ваши финансовые консультанты');

DROP TABLE IF EXISTS `field_contacts_teammate_mail`;
CREATE TABLE `field_contacts_teammate_mail` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_teammate_mail` (`pages_id`, `data`) VALUES('1681', '');
INSERT INTO `field_contacts_teammate_mail` (`pages_id`, `data`) VALUES('1688', 'mail@mail.ru');
INSERT INTO `field_contacts_teammate_mail` (`pages_id`, `data`) VALUES('1689', 'artem.brovko@kaskad-auto.ru');

DROP TABLE IF EXISTS `field_contacts_teammate_name`;
CREATE TABLE `field_contacts_teammate_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_teammate_name` (`pages_id`, `data`) VALUES('1688', 'Краснощекова Виктория');
INSERT INTO `field_contacts_teammate_name` (`pages_id`, `data`) VALUES('1689', 'Бровко Артем');

DROP TABLE IF EXISTS `field_contacts_teammate_phone`;
CREATE TABLE `field_contacts_teammate_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_teammate_phone` (`pages_id`, `data`) VALUES('1688', '89199232432');
INSERT INTO `field_contacts_teammate_phone` (`pages_id`, `data`) VALUES('1689', '+7 (3532) 673-140');

DROP TABLE IF EXISTS `field_contacts_teammate_photo`;
CREATE TABLE `field_contacts_teammate_photo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_teammate_photo` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1688', 'krasnoschekova-110x110_crop.jpg', '0', '', '2018-09-19 09:18:07', '2018-09-19 09:18:07', '');
INSERT INTO `field_contacts_teammate_photo` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1689', 'brovko-110x110_crop.jpg', '0', '', '2018-09-19 09:20:11', '2018-09-19 09:20:11', '');

DROP TABLE IF EXISTS `field_contacts_teammate_position`;
CREATE TABLE `field_contacts_teammate_position` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_teammate_position` (`pages_id`, `data`) VALUES('1688', 'Специалист по кредитованию');
INSERT INTO `field_contacts_teammate_position` (`pages_id`, `data`) VALUES('1689', 'Директор по продажам лекговых автомобилей и автомобилей с пробегом');

DROP TABLE IF EXISTS `field_contacts_teams`;
CREATE TABLE `field_contacts_teams` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_contacts_teams` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1664', '1684,1686', '2', '1683');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_email` (`pages_id`, `data`) VALUES('41', 'nikon72ru@gmail.com');

DROP TABLE IF EXISTS `field_equipment_file`;
CREATE TABLE `field_equipment_file` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_equipment_file` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1625', 'accessories.xls', '0', '', '2018-09-20 13:39:08', '2018-09-20 13:39:08', '');

DROP TABLE IF EXISTS `field_equipments`;
CREATE TABLE `field_equipments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL,
  `code` text,
  `name` text,
  PRIMARY KEY (`data`),
  UNIQUE KEY `pages_id` (`pages_id`,`sort`),
  FULLTEXT KEY `code` (`code`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `field_equipments` (`pages_id`, `data`, `sort`, `code`, `name`) VALUES('1625', '18', '0', 'code', 'name');
INSERT INTO `field_equipments` (`pages_id`, `data`, `sort`, `code`, `name`) VALUES('1625', '19', '1', '03B', 'инструкция');
INSERT INTO `field_equipments` (`pages_id`, `data`, `sort`, `code`, `name`) VALUES('1625', '20', '2', '08U', 'покрышки');

DROP TABLE IF EXISTS `field_home_credits_title`;
CREATE TABLE `field_home_credits_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_home_promo_image`;
CREATE TABLE `field_home_promo_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_promo_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1720', '15160174998798049-3840x1824_crop.jpg', '0', '', '2018-09-21 09:41:57', '2018-09-21 09:41:57', '');
INSERT INTO `field_home_promo_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1721', '2019-mercedes-amg-e53.jpg', '0', '', '2018-09-21 09:52:03', '2018-09-21 09:52:03', '');

DROP TABLE IF EXISTS `field_home_promo_subtitle`;
CREATE TABLE `field_home_promo_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_promo_subtitle` (`pages_id`, `data`) VALUES('1720', 'Особые условия на приобретение автомобилей «Мерседес-Бенц» от официального дилера.');
INSERT INTO `field_home_promo_subtitle` (`pages_id`, `data`) VALUES('1721', 'Купи машину - получи подарок');

DROP TABLE IF EXISTS `field_home_promo_title`;
CREATE TABLE `field_home_promo_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_promo_title` (`pages_id`, `data`) VALUES('1720', 'Автомобили «Мерседес-Бенц»');
INSERT INTO `field_home_promo_title` (`pages_id`, `data`) VALUES('1721', 'Новый мерседес');

DROP TABLE IF EXISTS `field_home_promos`;
CREATE TABLE `field_home_promos` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_promos` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1720,1721', '2', '1719');

DROP TABLE IF EXISTS `field_home_show_categories`;
CREATE TABLE `field_home_show_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_show_categories` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1631,1633', '2', '1630');

DROP TABLE IF EXISTS `field_home_show_category`;
CREATE TABLE `field_home_show_category` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_show_category` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1631', '1643,1640', '2', '1632');
INSERT INTO `field_home_show_category` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1633', '1635', '1', '1634');

DROP TABLE IF EXISTS `field_home_show_isamg`;
CREATE TABLE `field_home_show_isamg` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_show_isamg` (`pages_id`, `data`) VALUES('1633', '1');

DROP TABLE IF EXISTS `field_home_show_link`;
CREATE TABLE `field_home_show_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1643', '1537', '0');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1640', '1538', '0');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1635', '1542', '0');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1640', '1545', '1');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1640', '1551', '2');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1643', '1555', '1');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1635', '1561', '1');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1640', '1574', '3');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1640', '1580', '4');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1643', '1589', '2');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1640', '1590', '5');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1643', '1592', '3');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1635', '1594', '2');
INSERT INTO `field_home_show_link` (`pages_id`, `data`, `sort`) VALUES('1640', '1610', '6');

DROP TABLE IF EXISTS `field_home_show_preview`;
CREATE TABLE `field_home_show_preview` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_home_show_title`;
CREATE TABLE `field_home_show_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_home_show_title` (`pages_id`, `data`) VALUES('1631', 'Все модели');
INSERT INTO `field_home_show_title` (`pages_id`, `data`) VALUES('1633', 'Модели AMG');
INSERT INTO `field_home_show_title` (`pages_id`, `data`) VALUES('1640', 'Купе');
INSERT INTO `field_home_show_title` (`pages_id`, `data`) VALUES('1635', 'Седаны');
INSERT INTO `field_home_show_title` (`pages_id`, `data`) VALUES('1643', 'Седан');

DROP TABLE IF EXISTS `field_import_accessories`;
CREATE TABLE `field_import_accessories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_import_accessories` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1714', 'accessories.xls', '0', '', '2018-09-20 09:30:52', '2018-09-20 09:30:52', '');

DROP TABLE IF EXISTS `field_isamg`;
CREATE TABLE `field_isamg` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1541', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1532', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1547', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1552', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1560', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1566', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1570', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1575', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1581', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1586', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1593', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1599', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1603', '1');
INSERT INTO `field_isamg` (`pages_id`, `data`) VALUES('1609', '1');

DROP TABLE IF EXISTS `field_modifications`;
CREATE TABLE `field_modifications` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_modifications` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1536', '', '0', '1616');
INSERT INTO `field_modifications` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1712', '', '0', '1713');
INSERT INTO `field_modifications` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1537', '1620,1621', '2', '1619');

DROP TABLE IF EXISTS `field_modifications2`;
CREATE TABLE `field_modifications2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL,
  `id` text,
  `capacity` text,
  `fuel` text,
  `fuel_consumption` text,
  `gear` text,
  `name` text,
  `power` text,
  `rated_power` text,
  `transmission` text,
  `cylinders` text,
  PRIMARY KEY (`data`),
  UNIQUE KEY `pages_id` (`pages_id`,`sort`),
  FULLTEXT KEY `id` (`id`),
  FULLTEXT KEY `capacity` (`capacity`),
  FULLTEXT KEY `fuel` (`fuel`),
  FULLTEXT KEY `fuel_consumption` (`fuel_consumption`),
  FULLTEXT KEY `gear` (`gear`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `power` (`power`),
  FULLTEXT KEY `rated_power` (`rated_power`),
  FULLTEXT KEY `transmission` (`transmission`),
  FULLTEXT KEY `cylinders` (`cylinders`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

INSERT INTO `field_pass` (`pages_id`, `data`, `salt`) VALUES('41', 'KMGFmKV0BUK9MxyVShEZghBrM/4QEKu', '$2y$11$v.VUItgDRLoDbbq13pKoru');
INSERT INTO `field_pass` (`pages_id`, `data`, `salt`) VALUES('40', '', '');

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '32', '1');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '34', '2');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '35', '3');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('37', '36', '0');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '36', '0');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '50', '4');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '51', '5');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '52', '7');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '53', '8');
INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES('38', '54', '6');

DROP TABLE IF EXISTS `field_privacy_data`;
CREATE TABLE `field_privacy_data` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_privacy_email`;
CREATE TABLE `field_privacy_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_privacy_image`;
CREATE TABLE `field_privacy_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '165');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1673', '173');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES('40', '37', '0');
INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES('41', '37', '0');
INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES('41', '38', '2');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Главная');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'DB Backups');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Manage database backups (recommended for superuser only)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1696', '1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1697', 'amg2');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1698', 'amg17');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1699', 'amg30');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1700', 'amg40');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1701', 'amg45');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1702', 'gle48');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1703', 'amg51');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1704', 'amg56');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1705', 'amg63');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1706', 'amg69');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1707', 'amg73');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1708', 'amg79');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1709', '53');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1710', '52');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1711', '37');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1712', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1713', 'suv');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1714', 'Страница импорта');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1715', 'pdf');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1716', 'Модификации');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1717', 'all-terrain28');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1718', 'home_promos');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1719', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1675', 'Run AdminActions restore feature');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1691', 'amg11');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1692', 'amg22');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1687', '1537330387-2127-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1673', 'Admin Actions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1674', 'Run selected AdminActions actions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1685', '1537330383-2619-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1695', 'Политика обработки персональных данных');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1668', '10');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1669', '9');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1670', 'Страница автомобиля');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1671', '55');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1672', 'Страница обработки AJAX запросов');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1694', '13');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1693', '23');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1646', '15');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1647', '12');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1648', 'benefitsWithPic');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1649', 'benefits');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1650', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1651', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1662', 'http404');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1663', 'http404');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1664', 'Контакты');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1665', '35');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1666', 'g-34');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1641', '8');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1642', 'http404');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1644', 'C 200 4MATIC Sport Купе_ 0753426217');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1667', 'amg36');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1630', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1632', '1536904122-2533-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1634', '1536904124-5622-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1639', '5');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1624', 'b-4');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1625', 'Комплектации');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1626', 'catalog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1627', 'a-0');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1628', 'home_show_categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1629', 'home_show_category');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1622', 'C 180 Sport NEW_0852413571');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1623', 'C 200 4MATIC Sport NEW_0753425814');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1678', '59');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1683', 'contacts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1614', 'modifications');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1682', 'contacts_teams');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1616', 'c-6');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1619', '7');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1605', 'X-Класс');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1606', 'Пикап');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1607', 'V-Класс');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1608', 'Минивен');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1609', 'AMG GT');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1610', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1611', 'Родстер');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1612', 'Каталог');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1680', 'contacts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1604', 'Родстер');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1679', 'contacts_team');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1677', 'Стандартные значения');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1530', 'A-Класс');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1531', 'Хэтчбек');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1532', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1533', 'Хэтчбек');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1534', 'B-Класс');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1535', 'Хэтчбек');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1536', 'C-Класс');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1537', 'Седан');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1538', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1539', 'Универсал');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1540', 'Кабриолет');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1541', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1542', 'Седан');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1543', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1544', 'CLA');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1545', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1546', 'Shooting');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1547', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1548', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1549', 'Shooting');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1550', 'CLS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1551', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1552', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1553', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1554', 'E-Класс');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1555', 'Седан');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1556', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1557', 'Универсал');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1558', 'All-Terrain');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1559', 'Кабриолет');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1560', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1561', 'Седан');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1562', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1563', 'Кабриолет');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1564', 'G-Класс');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1565', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1566', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1567', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1568', 'GLA');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1569', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1570', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1571', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1572', 'GLC');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1573', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1574', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1575', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1576', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1577', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1578', 'GLE');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1579', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1580', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1581', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1582', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1583', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1584', 'GLS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1585', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1586', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1587', 'Внедорожник');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1588', 'S-Класс');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1589', 'Седан');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1590', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1591', 'Кабриолет');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1592', 'Maybach');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1593', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1594', 'Седан');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1595', 'Купе');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1596', 'Кабриолет');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1597', 'SL');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1598', 'Родстер');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1599', 'AMG');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1600', 'Родстер');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1601', 'SLC');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1602', 'Родстер');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1603', 'AMG');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'layout_class');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'layout_car');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'repeater_modifications');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'layout_equipment');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'repeater_home_show_categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'repeater_home_show_category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'repeater_benefitsWithPic');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'repeater_benefits');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'layout_contacts');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'layout_carInfo');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'ajax-handler');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'layout_default');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'repeater_contacts_team');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'repeater_contacts_teams');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'layout_privacy');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'layout_import');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'layout_pdf');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('114', 'layout_modifications');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('115', 'repeater_home_promos');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '134', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '103', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '121', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '120', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '125', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '123', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '112', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '116', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '110', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '119', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '136', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '115', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '105', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '102', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '106', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '104', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '99', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '108', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '113', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '117', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '122', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '124', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '129', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '109', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '147', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '107', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '155', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '125', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '131', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '132', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '132', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '149', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '137', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '100', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '101', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '133', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '111', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '160', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '127', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '146', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '143', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '142', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '148', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '136', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '140', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '144', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '139', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '145', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '126', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '158', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '150', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '154', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '153', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '151', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '138', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '127', '1', '{\"flagsAdd\":32,\"viewRoles\":[37]}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '152', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '156', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '159', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '157', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '130', '4', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeText', 'aos_column_break', '0', '', '{\"skipLabel\":true,\"collapsed\":8,\"tags\":\"-aos\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeText', 'class_id', '0', 'Идентификатор', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeText', 'class_name', '0', 'Наименование', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeText', 'class_power', '0', 'Мощность', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeText', 'class_fuel', '0', 'Тип топлива', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'class_transmission', '0', 'Трансмиссия', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeText', 'class_gear', '0', 'Привод', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeText', 'class_cylinders', '0', 'Расположение и количество цилиндров', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeText', 'class_fuel_consumption', '0', 'Расход топлива смешанный', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeText', 'class_rated_power', '0', 'Номинальная мощность', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeText', 'class_capacity', '0', 'Рабочий объем', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeText', 'car_id', '0', 'Идентификатор', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeText', 'car_year', '0', 'Год выпуска', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeText', 'car_cabin', '0', 'Салон', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeText', 'car_color', '0', 'Цвет', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeText', 'car_accessories', '0', 'Комплектация', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('137', 'FieldtypeCheckbox', 'car_inStock', '0', 'В наличии', '{\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeText', 'car_price', '0', 'Цена', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeText', 'car_special_proposal', '0', 'Специальное предложение', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeRepeater', 'modifications', '0', 'Модификации', '{\"template_id\":45,\"parent_id\":1614,\"repeaterFields\":[108,105,102,106,104,99,100,101,107,103],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeInteger', 'car_modification_id', '0', 'Идентификатор модификации', '{\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeTable', 'equipments', '0', 'Комплектации', '{\"maxCols\":2,\"col1sort\":1,\"col2sort\":2,\"col3sort\":3,\"paginationLimit\":0,\"collapsed\":0,\"col1name\":\"code\",\"col1label\":\"\\u041a\\u043e\\u0434\",\"col1type\":\"text\",\"col1width\":30,\"col2name\":\"name\",\"col2label\":\"\\u041d\\u0430\\u0438\\u043c\\u0435\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\",\"col2type\":\"text\",\"col2width\":70}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeFile', 'equipment_file', '0', 'Файл комплектаций', '{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeRepeater', 'home_show_categories', '0', 'Категории на главной странице', '{\"template_id\":47,\"parent_id\":1628,\"repeaterFields\":[125,123,129],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterTitle\":\"{home_show_title}\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeRepeater', 'home_show_category', '0', 'Категория', '{\"template_id\":48,\"parent_id\":1629,\"repeaterFields\":[125,124],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterTitle\":\"{home_show_title}\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypePage', 'home_show_link', '0', 'Категория', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":0,\"template_id\":43,\"labelFieldName\":\".\",\"collapsed\":0,\"size\":10,\"optionColumns\":0,\"usePageEdit\":0,\"findPagesSelector\":\"template=layout_class, name!=catalog\",\"labelFieldFormat\":\"product-uses-custom-title\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeText', 'home_show_title', '0', 'Заголовок', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('126', 'FieldtypeImage', 'class_images', '0', 'Изображения для шапки', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeImage', 'class_preview', '0', 'Превью-изображение класса', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":1677,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeImage', 'home_show_preview', '0', 'Превью', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeCheckbox', 'home_show_isAmg', '0', 'AMG', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypeRepeater', 'benefitsWithPic', '0', 'Блок преимуществ с картинками', '{\"template_id\":49,\"parent_id\":1648,\"repeaterFields\":[131,132,133],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('131', 'FieldtypeText', 'benefit_title', '0', 'Заголовок', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('132', 'FieldtypeText', 'benefit_description', '0', 'Описание', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('133', 'FieldtypeImage', 'benefit_image', '0', 'Изображение', '{\"extensions\":\"gif jpg jpeg png png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('134', 'FieldtypeRepeater', 'benefits', '0', 'Блок преимуществ', '{\"template_id\":50,\"parent_id\":1649,\"repeaterFields\":[132],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"repeaterMaxItems\":6,\"repeaterMinItems\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('135', 'FieldtypeText', 'home_credits_title', '0', 'Заголовок кредитной программы', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('136', 'FieldtypeImage', 'car_photos', '0', 'Изображения', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":1677,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('138', 'FieldtypeFile', 'import_accessories', '0', 'Файл комплектаций', '{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('139', 'FieldtypeText', 'contacts_teammate_name', '0', 'Имя', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('140', 'FieldtypeText', 'contacts_teammate_position', '0', 'Должность', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('141', 'FieldtypeText', 'contacts_teammate_phone', '0', 'Телефон', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('142', 'FieldtypeEmail', 'contacts_teammate_mail', '0', 'E-Mail', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('143', 'FieldtypeImage', 'contacts_teammate_photo', '0', 'Фото', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('144', 'FieldtypeRepeater', 'contacts_team', '0', 'Команда', '{\"template_id\":55,\"parent_id\":1679,\"repeaterFields\":[139,140,141,142,143],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('145', 'FieldtypeRepeater', 'contacts_teams', '0', 'Команда', '{\"template_id\":56,\"parent_id\":1682,\"repeaterFields\":[144,146],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('146', 'FieldtypeText', 'contacts_team_title', '0', 'Название', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('147', 'FieldtypeImage', 'contacts_header_image', '0', 'Изображение в шапке', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('148', 'FieldtypeText', 'contacts_company_name', '0', 'Название компании', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('149', 'FieldtypeText', 'contacts_address', '0', 'Адрес', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('150', 'FieldtypeEmail', 'contacts_email', '0', 'E-Mail Address', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":512,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('151', 'FieldtypeText', 'contacts_phone', '0', 'Телефон', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('152', 'FieldtypeMultiplier', 'privacy_data', '0', 'Данные', '{\"fieldtypeClass\":\"FieldtypeText\",\"schemaClass\":\"FieldtypeText\",\"qtyMin\":1,\"qtyMax\":10,\"maxlength\":2048,\"inputfieldConfigNames\":\"themeOffset,themeBorder,themeColor,requiredAttr,minlength,maxlength,showCount,size,stripTags,placeholder,pattern\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('153', 'FieldtypeText', 'privacy_email', '0', 'E-мейл', '{\"maxlength\":2048}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('154', 'FieldtypeImage', 'privacy_image', '0', 'Логотип', '{\"fileSchema\":6,\"extensions\":\"gif jpg jpeg png\",\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"clientQuality\":90}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('155', 'FieldtypeCheckbox', 'isAmg', '0', 'AMG', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('156', 'FieldtypeTable', 'modifications2', '0', 'Модификации', '{\"fieldtypeClass\":\"FieldtypeText\",\"qtyMin\":3,\"qtyMax\":3,\"sortable\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"inputfieldConfigNames\":\"themeOffset,themeBorder,themeColor,requiredAttr,minlength,maxlength,showCount,size,stripTags,placeholder,pattern\",\"schemaClass\":\"FieldtypeText\",\"maxCols\":10,\"col1sort\":1,\"col2sort\":2,\"col3sort\":3,\"paginationLimit\":0,\"collapsed\":0,\"col1name\":\"id\",\"col1label\":\"\\u0418\\u0434\\u0435\\u043d\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440 \\u043c\\u043e\\u0434\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438\",\"col1type\":\"text\",\"col1width\":5,\"col2name\":\"capacity\",\"col2label\":\"\\u0420\\u0430\\u0431\\u043e\\u0447\\u0438\\u0439 \\u043e\\u0431\\u044a\\u0435\\u043c\",\"col2type\":\"text\",\"col2width\":5,\"col3name\":\"fuel\",\"col3label\":\"\\u0422\\u0438\\u043f \\u0442\\u043e\\u043f\\u043b\\u0438\\u0432\\u0430\",\"col3type\":\"text\",\"col3width\":5,\"col4name\":\"fuel_consumption\",\"col4label\":\"\\u0420\\u0430\\u0441\\u0445\\u043e\\u0434\",\"col4type\":\"text\",\"col4width\":10,\"col4sort\":4,\"col5name\":\"gear\",\"col5label\":\"\\u041f\\u0440\\u0438\\u0432\\u043e\\u0434\",\"col5type\":\"text\",\"col5width\":5,\"col5sort\":5,\"col6name\":\"name\",\"col6label\":\"\\u041d\\u0430\\u0438\\u043c\\u0435\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\",\"col6type\":\"text\",\"col6width\":20,\"col6sort\":6,\"col7name\":\"power\",\"col7label\":\"\\u041c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c\",\"col7type\":\"text\",\"col7width\":10,\"col7sort\":7,\"col8name\":\"rated_power\",\"col8label\":\"\\u041d\\u043e\\u043c\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c\",\"col8type\":\"text\",\"col8width\":15,\"col8sort\":8,\"col9name\":\"transmission\",\"col9label\":\"\\u0422\\u0440\\u0430\\u043d\\u0441\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f\",\"col9type\":\"text\",\"col9width\":15,\"col9sort\":9,\"col10name\":\"cylinders\",\"col10label\":\"\\u0426\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u044b\",\"col10type\":\"text\",\"col10width\":10,\"col10sort\":10,\"col1settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col2settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col3settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col4settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col5settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col6settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col7settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col8settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col9settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col10settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('157', 'FieldtypeText', 'home_promo_title', '0', 'Заголовок', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('158', 'FieldtypeText', 'home_promo_subtitle', '0', 'Подзаголовок', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('159', 'FieldtypeImage', 'home_promo_image', '0', 'Изображение', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('160', 'FieldtypeRepeater', 'home_promos', '0', 'Промо-акции (шапка главной страница)', '{\"template_id\":61,\"parent_id\":1718,\"repeaterFields\":[159,157,158],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"admin_theme\"]}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.98\"}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2018-07-20 14:59:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2018-07-20 14:59:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2018-07-20 14:59:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2018-07-20 14:59:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2018-07-20 14:59:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'AdminThemeReno', '10', '{\"colors\":\"\",\"avatar_field_user\":\"\",\"userFields_user\":\"name\",\"notices\":\"fa-bell\",\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2018-07-20 15:01:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'AdminOnSteroids', '11', '{\"enabled\":1,\"enabledSubmodules\":[\"Hotkeys\",\"RenoTweaks\"],\"AddNewChildFirst_enabledTemplates\":[],\"AdminTweaks\":[],\"AsmTweaks\":[],\"CKEaddons_plugins\":[],\"CKEaddons_enabledFields\":[],\"CKEaddons_skin\":\"default\",\"ListerTweaks_find\":[\"\"],\"ListerTweaks_users\":[\"\"],\"ListerTweaks_options\":[],\"DeselectRadios\":[\"adminOnly\"],\"FieldAndTemplateEditLinks\":\"pw-blank\",\"FileFieldTweaks\":[],\"FieldOverrides\":\"\",\"FocusInputOnLangTabSwitch\":\"focus\",\"FocusInputOnLangTabSwitchCKE\":\"focus\",\"Hotkeys\":[\"save\"],\"IUC_mode\":[\"button\"],\"IUC_buttonPosition\":\"button-left\",\"IUC_target\":\"pw-blank\",\"IUC_forceHttp\":\"\",\"IUC_enabledTemplates\":[],\"LongClickDuration\":\"600\",\"Misc\":[],\"ModuleTweaks\":[],\"NavItems_pages_submenu\":null,\"NavItems_pages\":[],\"NavItems_custom\":\"\",\"PageListIcons\":\"\",\"PageListThumbs_style\":\"circle\",\"PageListThumbs_items\":\"\",\"PageListThumbs_options\":[],\"PageListTweaks\":[],\"PagePreviewBtn\":\"pw-blank\",\"RenoTweaks\":[\"sbSticky\",\"sbItemsVisible\"],\"RestrictTreeDropdown\":[],\"Tooltips\":[],\"UikitTweaks\":[],\"AdminStyle\":\"\",\"AdminScript\":\"\",\"CKEStyle\":\"\",\"CKEScript\":\"\",\"CKEtemplates\":\"\",\"FieldOverridesFile\":\"\",\"BrandingLogo\":\"\",\"restore\":\"\"}', '2018-07-20 15:02:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'ProcessDatabaseBackups', '1', '', '2018-07-20 15:02:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'AllInOneMinify', '3', '{\"stylesheet_prefix\":\"css_\",\"javascript_prefix\":\"js_\",\"max_cache_lifetime\":\"2419200\",\"html_minify\":\"\",\"development_mode\":1,\"directory_traversal\":1,\"empty_cache\":\"Empty cache\",\"domain_sharding\":\"\",\"domain_sharding_ssl\":\"\"}', '2018-07-20 15:03:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'TracyDebugger', '3', '{\"enabled\":1,\"outputMode\":\"development\",\"superuserForceDevelopment\":\"\",\"guestForceDevelopmentLocal\":\"\",\"ipAddress\":\"\",\"strictMode\":\"\",\"strictModeAjax\":\"\",\"forceScream\":\"\",\"showLocation\":[\"Tracy\\\\Dumper::LOCATION_SOURCE\",\"Tracy\\\\Dumper::LOCATION_LINK\",\"Tracy\\\\Dumper::LOCATION_CLASS\"],\"debugInfo\":1,\"maxDepth\":3,\"maxLength\":150,\"showFireLogger\":1,\"referencePageEdited\":1,\"logSeverity\":[],\"email\":\"\",\"clearEmailSent\":\"\",\"showDebugBar\":[\"frontend\",\"backend\"],\"hideDebugBarModals\":[\"regularModal\",\"inlineModal\",\"overlayPanels\",\"formBuilderIframe\"],\"hideDebugBarTemplates\":[],\"debugbarFixedPosition\":\"\",\"hideDebugBar\":\"\",\"showPanelLabels\":\"\",\"panelZindex\":100,\"frontendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"backendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"restrictedUserDisabledPanels\":[],\"editor\":\"subl:\\/\\/open\\/?url=file:\\/\\/%file&line=%line\",\"localRootPath\":\"\",\"useOnlineEditor\":[],\"onlineEditor\":\"tracy\",\"forceEditorLinksToTracy\":1,\"fileEditorBaseDirectory\":\"templates\",\"fileEditorAllowedExtensions\":\"php, module, js, css, htaccess\",\"processwireInfoPanelSections\":[\"apiVariables\",\"coreClasses\",\"configData\",\"versionsList\",\"adminLinks\",\"documentationLinks\",\"gotoId\",\"processWireWebsiteSearch\"],\"customPWInfoPanelLinks\":[\"\\/processwire\\/setup\\/template\\/\",\"\\/processwire\\/setup\\/field\\/\",\"\\/processwire\\/setup\\/\",\"\\/processwire\\/module\\/\",\"\\/processwire\\/access\\/users\\/\",\"\\/processwire\\/access\\/roles\\/\",\"\\/processwire\\/access\\/permissions\\/\",\"\\/processwire\\/profile\\/\"],\"showPWInfoPanelIconLabels\":1,\"pWInfoPanelLinksNewTab\":\"\",\"requestInfoPanelSections\":[\"moduleSettings\",\"templateSettings\",\"fieldSettings\",\"pageInfo\",\"languageInfo\",\"templateInfo\",\"fieldsListValues\",\"serverRequest\",\"inputGet\",\"inputPost\",\"inputCookie\",\"session\",\"editLinks\"],\"imagesInFieldListValues\":1,\"debugModePanelSections\":[\"pagesLoaded\",\"modulesLoaded\",\"hooks\",\"databaseQueries\",\"selectorQueries\",\"timers\",\"user\",\"cache\",\"autoload\"],\"alwaysShowDebugTools\":1,\"diagnosticsPanelSections\":[\"filesystemFolders\"],\"todoIgnoreDirs\":\"git, svn, images, img, errors, sass-cache, node_modules\",\"todoAllowedExtensions\":\"php, module, inc, txt, latte, html, htm, md, css, scss, less, js\",\"todoScanModules\":\"\",\"todoScanAssets\":\"\",\"numLogEntries\":10,\"variablesShowPwObjects\":\"\",\"snippetsPath\":\"templates\",\"customPhpCode\":\"\",\"userSwitcherRestricted\":[],\"styleWhere\":[],\"styleAdminColors\":\"local|#FF9933\\n*.local|#FF9933\\n*.dev|#FF9933\\ndev.*|#FF9933\\n*.test|#FF9933\\nstaging.*|#8b0066\\n*.com|#009900\",\"styleAdminType\":\"default\",\"styleAdminElements\":\"body::before {\\n\\tcontent: \\\"[type]\\\";\\n\\tbackground: [color];\\n\\tposition: fixed;\\n\\tleft: 0;\\n\\tbottom: 100%;\\n\\tcolor: #ffffff;\\n\\twidth: 100vh;\\n\\tpadding: 0;\\n\\ttext-align: center;\\n\\tfont-weight: 600;\\n\\ttext-transform: uppercase;\\n\\ttransform: rotate(90deg);\\n\\ttransform-origin: bottom left;\\n\\tz-index: 999999;\\n\\tfont-family: sans-serif;\\n\\tfont-size: 11px;\\n\\theight: 13px;\\n\\tline-height: 13px;\\npointer-events: none;\\n}\",\"userDevTemplate\":\"\",\"userDevTemplateSuffix\":\"dev\",\"showUserBar\":\"\",\"showUserBarTracyUsers\":null,\"userBarFeatures\":[\"admin\",\"editPage\"],\"userBarCustomFeatures\":\"\",\"userBarTopBottom\":\"bottom\",\"userBarLeftRight\":\"left\",\"userBarBackgroundColor\":null,\"userBarBackgroundOpacity\":\"1\",\"userBarIconColor\":\"#666666\",\"enableShortcutMethods\":1,\"enabledShortcutMethods\":[\"addBreakpoint\",\"bp\",\"barDump\",\"bd\",\"barDumpBig\",\"bdb\",\"barDumpLive\",\"bdl\",\"debugAll\",\"da\",\"dump\",\"d\",\"fireLog\",\"fl\",\"l\",\"templateVars\",\"tv\",\"timer\",\"t\"]}', '2018-07-20 15:04:18');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1018}', '2018-07-20 15:05:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'InputfieldRepeater', '0', '', '2018-07-20 15:05:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'FieldtypeTable', '1', '', '2018-09-13 13:29:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'InputfieldTable', '0', '', '2018-09-13 13:29:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'ProcessAdminActions', '1', '{\"core\":{\"CopyContentToOtherField\":{\"title\":\"Copy Content to Other Field\",\"description\":\"This action copies the content from one field to another field on all pages that use the selected template.\",\"notes\":\"This can be useful if you decide you need to split one field into two to allow different settings on different templates. It also makes it easy to move content from one field type to another one that is incompatible.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"CopyFieldContentToOtherPage\":{\"title\":\"Copy Field Content to Other Page\",\"description\":\"Copies the content from a field on one page to the same field on another page.\",\"notes\":\"This can be useful if you decide to restructure where certain content lives on the site.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"CopyRepeaterItemsToOtherPage\":{\"title\":\"Copy Repeater Items to Other Page\",\"description\":\"Add the items from a Repeater\\/RepeaterMatrix field on one page to the same field on another page.\",\"notes\":\"If the field on the destination page already has items, you can choose to append, or overwrite.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"CopyTableFieldRowsToOtherPage\":{\"title\":\"Copy Table Field Rows to Other Page\",\"description\":\"Add the rows from a Table field on one page to the same field on another page.\",\"notes\":\"If the field on the destination page already has rows, you can choose to append, or overwrite.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"CreateUsersBatcher\":{\"title\":\"Create Users Batcher\",\"description\":\"Allows you to batch create users.\",\"notes\":\"Having the Email New User module installed and configured to generate a password automatically is recommended. It is also recommended that you install the Password Force Change module.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"DeleteUnusedFields\":{\"title\":\"Delete Unused Fields\",\"description\":\"Deletes fields that are not used by any templates.\",\"notes\":\"Shows a list of unused fields with checkboxes to select those to delete.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"DeleteUnusedTemplates\":{\"title\":\"Delete Unused Templates\",\"description\":\"Deletes templates that are not used by any pages.\",\"notes\":\"Shows a list of unused templates with checkboxes to select those to delete.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"EmailBatcher\":{\"title\":\"Email Batcher\",\"description\":\"Lets you email multiple addresses at once.\",\"notes\":\"You can select \\\"Pages\\\" or \\\"User Roles\\\" for determining the recipients.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"FieldSetOrSearchAndReplace\":{\"title\":\"Field Set or Search and Replace\",\"description\":\"Set field values, or search and replace text in field values from a filtered selection of pages and fields.\",\"notes\":\"This can be very destructive - please be careful!\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"FtpFilesToPage\":{\"title\":\"FTP Files to Page\",\"description\":\"Add files\\/images from a folder to a selected page.\",\"notes\":\"This is useful if you want to FTP files, rather than upload via the admin.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"PageActiveLanguagesBatcher\":{\"title\":\"Page Active Languages Batcher\",\"description\":\"Lets you enable or disable active status of multiple languages on multiple pages at once.\",\"notes\":null,\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"PageManipulator\":{\"title\":\"Page Manipulator\",\"description\":\"Uses an InputfieldSelector to query pages and then allows batch actions on the matched pages.\",\"notes\":\"Actions are: Publish, Unpublish, Hide, Unhide, Trash, Delete, Change Template, Change Parent\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"PageTableToRepeaterMatrix\":{\"title\":\"Page Table to Repeater \\/ Repeater Matrix\",\"description\":\"Fully converts an existing (and populated) PageTable field to either a Repeater or RepeaterMatrix field.\",\"notes\":\"By default it will choose Repeater or RepeaterMatrix based on the number of templates in the PageTable field, but you can also choose to force RepeaterMatrix.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"TemplateFieldsBatcher\":{\"title\":\"Template Fields Batcher\",\"description\":\"Lets you add or remove multiple fields from multiple templates at once.\",\"notes\":null,\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"TemplateRolesBatcher\":{\"title\":\"Template Roles Batcher\",\"description\":\"Lets you add or remove access permissions, for multiple roles and multiple templates at once.\",\"notes\":\"Access permission options are: Edit Pages, Create Pages, and Add Children.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]},\"UserRolesPermissionsBatcher\":{\"title\":\"User Roles Permission Batcher\",\"description\":\"Lets you add or remove permissions for multiple roles, or roles for multiple users at once.\",\"notes\":\"Role selections are required. If all three have selections, permissions will be modified in roles and roles modified in users.\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"},\"roles\":[\"38\"]}},\"dbBackup\":\"automatic\",\"showActionCode\":null}', '2018-09-18 08:11:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'FieldtypeMultiplier', '1', '', '2018-09-19 09:36:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'InputfieldMultiplier', '0', '', '2018-09-19 09:36:55');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1722 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2018-09-21 07:52:03', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2018-09-12 11:47:26', '40', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2018-07-20 14:59:51', '40', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2018-07-20 14:59:55', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2018-07-20 14:59:53', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '1', 'http404', '1035', '2018-07-20 15:00:37', '41', '2018-07-20 14:59:30', '3', '2018-07-20 14:59:30', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'developer', '1', '2018-09-12 11:47:26', '40', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '2', '2018-07-20 14:59:30', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '41', '2018-07-20 14:59:30', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2018-07-20 14:59:30', '40', '2018-07-20 14:59:30', '40', '2018-07-20 14:59:30', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2018-07-20 14:59:30', '40', '2018-07-20 14:59:30', '40', '2018-07-20 14:59:30', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2018-07-20 14:59:43', '40', '2018-07-20 14:59:43', '40', '2018-07-20 14:59:43', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2018-07-20 14:59:43', '40', '2018-07-20 14:59:43', '40', '2018-07-20 14:59:43', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2018-07-20 14:59:49', '40', '2018-07-20 14:59:49', '40', '2018-07-20 14:59:49', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2018-07-20 14:59:49', '40', '2018-07-20 14:59:49', '40', '2018-07-20 14:59:49', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2018-07-20 14:59:49', '40', '2018-07-20 14:59:49', '40', '2018-07-20 14:59:49', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '22', '2', 'db-backups', '1', '2018-07-20 15:02:57', '41', '2018-07-20 15:02:57', '41', '2018-07-20 15:02:57', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '31', '5', 'db-backup', '1', '2018-07-20 15:02:57', '41', '2018-07-20 15:02:57', '41', '2018-07-20 15:02:57', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '2', '2', 'repeaters', '1036', '2018-07-20 15:05:25', '41', '2018-07-20 15:05:25', '41', '2018-07-20 15:05:25', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1530', '1612', '43', 'a-0', '1', '2018-09-19 10:11:33', '41', '2018-09-13 08:33:09', '41', '2018-09-13 08:33:09', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1531', '1530', '43', '1', '1', '2018-09-13 08:33:10', '41', '2018-09-13 08:33:10', '41', '2018-09-13 08:33:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1532', '1530', '43', 'amg2', '1', '2018-09-19 11:25:01', '41', '2018-09-13 08:33:10', '41', '2018-09-13 08:33:10', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1533', '1532', '43', '3', '1', '2018-09-13 08:33:11', '41', '2018-09-13 08:33:11', '41', '2018-09-13 08:33:11', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1534', '1612', '43', 'b-4', '1', '2018-09-19 08:14:06', '41', '2018-09-13 08:33:11', '41', '2018-09-13 08:33:11', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1535', '1534', '43', '5', '1', '2018-09-13 08:33:12', '41', '2018-09-13 08:33:12', '41', '2018-09-13 08:33:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1536', '1612', '43', 'c-6', '1', '2018-09-13 11:42:10', '41', '2018-09-13 08:33:12', '41', '2018-09-13 08:33:12', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1537', '1536', '43', '7', '1', '2018-09-14 12:25:02', '41', '2018-09-13 08:33:13', '41', '2018-09-13 08:33:13', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1538', '1536', '43', '8', '1', '2018-09-14 13:02:54', '41', '2018-09-13 08:33:13', '41', '2018-09-13 08:33:13', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1539', '1536', '43', '9', '1', '2018-09-13 08:33:14', '41', '2018-09-13 08:33:14', '41', '2018-09-13 08:33:14', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1540', '1536', '43', '10', '1', '2018-09-13 08:33:14', '41', '2018-09-13 08:33:14', '41', '2018-09-13 08:33:14', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1541', '1536', '43', 'amg11', '1', '2018-09-19 11:03:57', '41', '2018-09-13 08:33:14', '41', '2018-09-13 08:33:14', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1542', '1541', '43', '12', '1', '2018-09-13 08:33:15', '41', '2018-09-13 08:33:15', '41', '2018-09-13 08:33:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1543', '1541', '43', '13', '1', '2018-09-13 08:33:16', '41', '2018-09-13 08:33:16', '41', '2018-09-13 08:33:16', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1544', '1612', '43', 'cla14', '1', '2018-09-13 09:57:11', '41', '2018-09-13 08:33:16', '41', '2018-09-13 08:33:16', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1545', '1544', '43', '15', '1', '2018-09-13 08:33:16', '41', '2018-09-13 08:33:16', '41', '2018-09-13 08:33:16', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1546', '1544', '43', 'shooting16', '1', '2018-09-13 08:33:17', '41', '2018-09-13 08:33:17', '41', '2018-09-13 08:33:17', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1547', '1544', '43', 'amg17', '1', '2018-09-19 11:25:09', '41', '2018-09-13 08:33:17', '41', '2018-09-13 08:33:17', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1548', '1547', '43', '18', '1', '2018-09-13 08:33:18', '41', '2018-09-13 08:33:18', '41', '2018-09-13 08:33:18', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1549', '1547', '43', 'shooting19', '1', '2018-09-13 08:33:18', '41', '2018-09-13 08:33:18', '41', '2018-09-13 08:33:18', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1550', '1612', '43', 'cls20', '1', '2018-09-13 09:57:07', '41', '2018-09-13 08:33:19', '41', '2018-09-13 08:33:19', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1551', '1550', '43', '21', '1', '2018-09-13 08:33:19', '41', '2018-09-13 08:33:19', '41', '2018-09-13 08:33:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1552', '1550', '43', 'amg22', '1', '2018-09-19 11:25:13', '41', '2018-09-13 08:33:20', '41', '2018-09-13 08:33:20', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1553', '7', '43', '1553.1550.2_23', '8193', '2018-09-19 12:31:33', '41', '2018-09-13 08:33:20', '41', '2018-09-13 08:33:20', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1554', '1612', '43', 'e-24', '1', '2018-09-13 09:57:01', '41', '2018-09-13 08:33:20', '41', '2018-09-13 08:33:20', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1555', '1554', '43', '25', '1', '2018-09-13 08:33:21', '41', '2018-09-13 08:33:21', '41', '2018-09-13 08:33:21', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1556', '1554', '43', '26', '1', '2018-09-13 08:33:21', '41', '2018-09-13 08:33:21', '41', '2018-09-13 08:33:21', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1557', '1554', '43', '27', '1', '2018-09-13 08:33:22', '41', '2018-09-13 08:33:22', '41', '2018-09-13 08:33:22', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1558', '1554', '43', 'all-terrain28', '1', '2018-09-13 08:33:22', '41', '2018-09-13 08:33:22', '41', '2018-09-13 08:33:22', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1559', '1554', '43', '29', '1', '2018-09-13 08:33:23', '41', '2018-09-13 08:33:23', '41', '2018-09-13 08:33:23', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1560', '1554', '43', 'amg30', '1', '2018-09-19 11:25:18', '41', '2018-09-13 08:33:23', '41', '2018-09-13 08:33:23', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1561', '1560', '43', '31', '1', '2018-09-13 08:33:23', '41', '2018-09-13 08:33:23', '41', '2018-09-13 08:33:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1562', '1560', '43', '32', '1', '2018-09-13 08:33:24', '41', '2018-09-13 08:33:24', '41', '2018-09-13 08:33:24', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1563', '1560', '43', '33', '1', '2018-09-13 08:33:24', '41', '2018-09-13 08:33:24', '41', '2018-09-13 08:33:24', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1564', '1612', '43', 'g-34', '1', '2018-09-13 09:56:55', '41', '2018-09-13 08:33:25', '41', '2018-09-13 08:33:25', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1565', '1564', '43', '35', '1', '2018-09-13 08:33:25', '41', '2018-09-13 08:33:25', '41', '2018-09-13 08:33:25', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1566', '1564', '43', 'amg36', '1', '2018-09-19 11:25:22', '41', '2018-09-13 08:33:26', '41', '2018-09-13 08:33:26', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1567', '1566', '43', '37', '1', '2018-09-13 08:33:26', '41', '2018-09-13 08:33:26', '41', '2018-09-13 08:33:26', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1568', '1612', '43', 'gla38', '1', '2018-09-13 09:56:43', '41', '2018-09-13 08:33:27', '41', '2018-09-13 08:33:27', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1569', '1568', '43', '39', '1', '2018-09-13 08:33:27', '41', '2018-09-13 08:33:27', '41', '2018-09-13 08:33:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1570', '1568', '43', 'amg40', '1', '2018-09-19 11:25:26', '41', '2018-09-13 08:33:28', '41', '2018-09-13 08:33:28', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1571', '1570', '43', '41', '1', '2018-09-13 08:33:28', '41', '2018-09-13 08:33:28', '41', '2018-09-13 08:33:28', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1572', '1612', '43', 'glc42', '1', '2018-09-13 09:56:39', '41', '2018-09-13 08:33:29', '41', '2018-09-13 08:33:29', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1573', '1572', '43', '43', '1', '2018-09-13 08:33:29', '41', '2018-09-13 08:33:29', '41', '2018-09-13 08:33:29', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1574', '1572', '43', '44', '1', '2018-09-13 08:33:30', '41', '2018-09-13 08:33:30', '41', '2018-09-13 08:33:30', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1575', '1572', '43', 'amg45', '1', '2018-09-19 11:25:31', '41', '2018-09-13 08:33:30', '41', '2018-09-13 08:33:30', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1576', '1575', '43', '46', '1', '2018-09-13 08:33:31', '41', '2018-09-13 08:33:31', '41', '2018-09-13 08:33:31', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1577', '1575', '43', '47', '1', '2018-09-13 08:33:32', '41', '2018-09-13 08:33:32', '41', '2018-09-13 08:33:32', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1578', '1612', '43', 'gle48', '1', '2018-09-13 09:56:33', '41', '2018-09-13 08:33:32', '41', '2018-09-13 08:33:32', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1579', '1578', '43', '49', '1', '2018-09-13 08:33:32', '41', '2018-09-13 08:33:32', '41', '2018-09-13 08:33:32', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1580', '1578', '43', '50', '1', '2018-09-13 08:33:33', '41', '2018-09-13 08:33:33', '41', '2018-09-13 08:33:33', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1581', '1578', '43', 'amg51', '1', '2018-09-19 11:25:36', '41', '2018-09-13 08:33:33', '41', '2018-09-13 08:33:33', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1582', '1581', '43', '52', '1', '2018-09-13 08:33:34', '41', '2018-09-13 08:33:34', '41', '2018-09-13 08:33:34', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1583', '1581', '43', '53', '1', '2018-09-13 08:33:34', '41', '2018-09-13 08:33:34', '41', '2018-09-13 08:33:34', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1584', '1612', '43', 'gls54', '1', '2018-09-13 09:56:28', '41', '2018-09-13 08:33:35', '41', '2018-09-13 08:33:35', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1585', '1584', '43', '55', '1', '2018-09-13 08:33:35', '41', '2018-09-13 08:33:35', '41', '2018-09-13 08:33:35', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1586', '1584', '43', 'amg56', '1', '2018-09-19 11:25:40', '41', '2018-09-13 08:33:36', '41', '2018-09-13 08:33:36', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1587', '1586', '43', '57', '1', '2018-09-13 08:33:36', '41', '2018-09-13 08:33:36', '41', '2018-09-13 08:33:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1588', '1612', '43', 's-58', '1', '2018-09-13 09:56:19', '41', '2018-09-13 08:33:37', '41', '2018-09-13 08:33:37', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1589', '1588', '43', '59', '1', '2018-09-13 08:33:38', '41', '2018-09-13 08:33:38', '41', '2018-09-13 08:33:38', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1590', '1588', '43', '60', '1', '2018-09-13 08:33:38', '41', '2018-09-13 08:33:38', '41', '2018-09-13 08:33:38', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1591', '1588', '43', '61', '1', '2018-09-13 08:33:39', '41', '2018-09-13 08:33:39', '41', '2018-09-13 08:33:39', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1592', '1588', '43', 'maybach62', '1', '2018-09-13 08:33:39', '41', '2018-09-13 08:33:39', '41', '2018-09-13 08:33:39', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1593', '1588', '43', 'amg63', '1', '2018-09-19 11:25:45', '41', '2018-09-13 08:33:39', '41', '2018-09-13 08:33:39', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1594', '1593', '43', '64', '1', '2018-09-13 08:33:40', '41', '2018-09-13 08:33:40', '41', '2018-09-13 08:33:40', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1595', '1593', '43', '65', '1', '2018-09-13 08:33:40', '41', '2018-09-13 08:33:40', '41', '2018-09-13 08:33:40', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1596', '1593', '43', '66', '1', '2018-09-13 08:33:41', '41', '2018-09-13 08:33:41', '41', '2018-09-13 08:33:41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1597', '1612', '43', 'sl67', '1', '2018-09-13 09:56:13', '41', '2018-09-13 08:33:41', '41', '2018-09-13 08:33:41', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1598', '1597', '43', '68', '1', '2018-09-13 08:33:41', '41', '2018-09-13 08:33:41', '41', '2018-09-13 08:33:41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1599', '1597', '43', 'amg69', '1', '2018-09-19 11:25:49', '41', '2018-09-13 08:33:42', '41', '2018-09-13 08:33:42', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1600', '1599', '43', '70', '1', '2018-09-13 08:33:42', '41', '2018-09-13 08:33:42', '41', '2018-09-13 08:33:42', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1601', '1612', '43', 'slc71', '1', '2018-09-13 09:56:06', '41', '2018-09-13 08:33:43', '41', '2018-09-13 08:33:43', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1602', '1601', '43', '72', '1', '2018-09-13 08:33:44', '41', '2018-09-13 08:33:44', '41', '2018-09-13 08:33:44', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1603', '1601', '43', 'amg73', '1', '2018-09-19 11:25:54', '41', '2018-09-13 08:33:44', '41', '2018-09-13 08:33:44', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1604', '1603', '43', '74', '1', '2018-09-13 08:33:45', '41', '2018-09-13 08:33:45', '41', '2018-09-13 08:33:45', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1605', '1612', '43', 'x-75', '1', '2018-09-13 09:56:01', '41', '2018-09-13 08:33:45', '41', '2018-09-13 08:33:45', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1606', '1605', '43', '76', '1', '2018-09-13 08:33:46', '41', '2018-09-13 08:33:46', '41', '2018-09-13 08:33:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1607', '1612', '43', 'v-77', '1', '2018-09-13 09:55:54', '41', '2018-09-13 08:33:46', '41', '2018-09-13 08:33:46', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1608', '1607', '43', '78', '1', '2018-09-13 08:33:47', '41', '2018-09-13 08:33:47', '41', '2018-09-13 08:33:47', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1609', '1612', '43', 'amg79', '1', '2018-09-19 11:26:13', '41', '2018-09-13 08:33:47', '41', '2018-09-13 08:33:47', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1610', '1609', '43', '80', '1', '2018-09-13 08:33:48', '41', '2018-09-13 08:33:48', '41', '2018-09-13 08:33:48', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1611', '1609', '43', '81', '1', '2018-09-13 08:33:48', '41', '2018-09-13 08:33:48', '41', '2018-09-13 08:33:48', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1612', '1', '43', 'catalog', '1', '2018-09-19 14:45:04', '41', '2018-09-13 09:53:50', '41', '2018-09-13 09:55:10', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1680', '1679', '2', 'for-page-1664', '17', '2018-09-19 07:09:55', '41', '2018-09-19 07:09:55', '41', '2018-09-19 07:09:55', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1614', '1018', '2', 'for-field-117', '17', '2018-09-13 11:13:50', '41', '2018-09-13 11:13:50', '41', '2018-09-13 11:13:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1681', '1680', '55', '1537330199-022-1', '3073', '2018-09-19 07:09:59', '41', '2018-09-19 07:09:59', '41', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1616', '1614', '2', 'for-page-1536', '17', '2018-09-13 11:27:45', '41', '2018-09-13 11:27:45', '41', '2018-09-13 11:27:45', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1623', '1537', '44', 'c-200-4matic-sport-new_0753425814', '1', '2018-09-19 12:56:04', '41', '2018-09-13 11:48:55', '41', '2018-09-13 11:51:07', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1622', '1537', '44', 'c-180-sport-new', '1', '2018-09-20 12:18:33', '41', '2018-09-13 11:44:21', '41', '2018-09-13 11:47:20', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1619', '1614', '2', 'for-page-1537', '17', '2018-09-13 11:39:55', '41', '2018-09-13 11:39:55', '41', '2018-09-13 11:39:55', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1620', '1619', '45', '1536828013-5833-1', '1', '2018-09-13 12:09:06', '41', '2018-09-13 11:40:13', '41', '2018-09-13 11:42:01', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1621', '1619', '45', '1536828017-059-1', '1', '2018-09-13 12:09:06', '41', '2018-09-13 11:40:17', '41', '2018-09-13 11:42:01', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1624', '1614', '2', 'for-page-1534', '17', '2018-09-13 12:38:57', '41', '2018-09-13 12:38:57', '41', '2018-09-13 12:38:57', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1625', '1', '46', 'equipment', '1', '2018-09-20 12:11:52', '41', '2018-09-13 13:30:08', '41', '2018-09-13 13:30:08', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1626', '1614', '2', 'for-page-1612', '17', '2018-09-14 07:46:16', '41', '2018-09-14 07:46:16', '41', '2018-09-14 07:46:16', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1627', '1614', '2', 'for-page-1530', '17', '2018-09-14 07:57:47', '41', '2018-09-14 07:57:47', '41', '2018-09-14 07:57:47', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1628', '1018', '2', 'for-field-122', '17', '2018-09-14 08:40:50', '41', '2018-09-14 08:40:50', '41', '2018-09-14 08:40:50', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1629', '1018', '2', 'for-field-123', '17', '2018-09-14 08:41:55', '41', '2018-09-14 08:41:55', '41', '2018-09-14 08:41:55', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1630', '1628', '2', 'for-page-1', '17', '2018-09-14 08:48:34', '41', '2018-09-14 08:48:34', '41', '2018-09-14 08:48:34', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1631', '1630', '47', '1536904122-2533-1', '1', '2018-09-19 12:37:15', '41', '2018-09-14 08:48:42', '41', '2018-09-14 08:56:41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1632', '1629', '2', 'for-page-1631', '17', '2018-09-14 08:48:42', '41', '2018-09-14 08:48:42', '41', '2018-09-14 08:48:42', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1633', '1630', '47', '1536904124-5622-1', '1', '2018-09-14 13:49:26', '41', '2018-09-14 08:48:44', '41', '2018-09-14 08:56:59', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1634', '1629', '2', 'for-page-1633', '17', '2018-09-14 08:48:44', '41', '2018-09-14 08:48:44', '41', '2018-09-14 08:48:44', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1635', '1634', '48', '1536904133-0941-1', '1', '2018-09-14 12:31:27', '41', '2018-09-14 08:48:53', '41', '2018-09-14 09:03:27', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1636', '1634', '48', '1536904134-651-1', '3073', '2018-09-14 08:48:54', '41', '2018-09-14 08:48:54', '41', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1640', '1632', '48', '1536916448-4893-1', '1', '2018-09-19 12:37:15', '41', '2018-09-14 12:14:08', '41', '2018-09-14 12:14:42', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1639', '1614', '2', 'for-page-1535', '17', '2018-09-14 09:10:54', '41', '2018-09-14 09:10:54', '41', '2018-09-14 09:10:54', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1641', '1614', '2', 'for-page-1538', '17', '2018-09-14 12:16:34', '41', '2018-09-14 12:16:34', '41', '2018-09-14 12:16:34', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1642', '1628', '2', 'for-page-27', '17', '2018-09-14 12:16:35', '41', '2018-09-14 12:16:35', '41', '2018-09-14 12:16:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1643', '1632', '48', '1536917446-9102-1', '1', '2018-09-19 12:37:15', '41', '2018-09-14 12:30:46', '41', '2018-09-14 12:31:26', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1644', '1538', '44', 'c-200-4matic-sport-kupe-0753426217', '1', '2018-09-14 13:01:54', '41', '2018-09-14 12:58:30', '41', '2018-09-14 13:01:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1646', '1614', '2', 'for-page-1545', '17', '2018-09-14 13:31:03', '41', '2018-09-14 13:31:03', '41', '2018-09-14 13:31:03', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1647', '1614', '2', 'for-page-1542', '17', '2018-09-14 14:00:33', '41', '2018-09-14 14:00:33', '41', '2018-09-14 14:00:33', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1648', '1018', '2', 'for-field-130', '17', '2018-09-17 06:23:43', '41', '2018-09-17 06:23:43', '41', '2018-09-17 06:23:43', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1649', '1018', '2', 'for-field-134', '17', '2018-09-17 06:26:19', '41', '2018-09-17 06:26:19', '41', '2018-09-17 06:26:19', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1650', '1649', '2', 'for-page-1', '17', '2018-09-17 06:26:50', '41', '2018-09-17 06:26:50', '41', '2018-09-17 06:26:50', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1651', '1648', '2', 'for-page-1', '17', '2018-09-17 06:27:22', '41', '2018-09-17 06:27:22', '41', '2018-09-17 06:27:22', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1652', '1651', '49', '1537154987-4015-1', '1', '2018-09-17 06:33:11', '41', '2018-09-17 06:29:47', '41', '2018-09-17 06:32:53', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1653', '1651', '49', '1537155036-4804-1', '1', '2018-09-17 06:33:11', '41', '2018-09-17 06:30:36', '41', '2018-09-17 06:32:53', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1654', '1651', '49', '1537155076-699-1', '1', '2018-09-17 06:33:11', '41', '2018-09-17 06:31:16', '41', '2018-09-17 06:32:53', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1655', '1651', '49', '1537155146-0425-1', '1', '2018-09-17 06:33:11', '41', '2018-09-17 06:32:26', '41', '2018-09-17 06:32:53', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1656', '1650', '50', '1537156254-5807-1', '1', '2018-09-17 07:00:30', '41', '2018-09-17 06:50:54', '41', '2018-09-17 07:00:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1657', '1650', '50', '1537156254-6024-2', '1', '2018-09-17 07:00:30', '41', '2018-09-17 06:50:54', '41', '2018-09-17 07:00:30', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1658', '1650', '50', '1537156254-6086-3', '1', '2018-09-17 07:00:30', '41', '2018-09-17 06:50:54', '41', '2018-09-17 07:00:30', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1659', '1650', '50', '1537156254-6147-4', '1', '2018-09-17 07:00:30', '41', '2018-09-17 06:50:54', '41', '2018-09-17 07:00:30', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1660', '1650', '50', '1537156254-6208-5', '1', '2018-09-17 07:00:30', '41', '2018-09-17 06:50:54', '41', '2018-09-17 07:00:30', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1661', '1650', '50', '1537156254-6271-6', '1', '2018-09-17 07:00:30', '41', '2018-09-17 06:50:54', '41', '2018-09-17 07:00:30', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1662', '1649', '2', 'for-page-27', '17', '2018-09-17 07:20:49', '41', '2018-09-17 07:20:49', '41', '2018-09-17 07:20:49', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1663', '1648', '2', 'for-page-27', '17', '2018-09-17 07:20:50', '41', '2018-09-17 07:20:50', '41', '2018-09-17 07:20:50', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1664', '1', '51', 'contacts', '1', '2018-09-19 14:45:27', '41', '2018-09-17 07:42:48', '41', '2018-09-17 07:42:48', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1665', '1614', '2', 'for-page-1565', '17', '2018-09-17 07:48:30', '41', '2018-09-17 07:48:30', '41', '2018-09-17 07:48:30', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1666', '1614', '2', 'for-page-1564', '17', '2018-09-17 07:51:19', '41', '2018-09-17 07:51:19', '41', '2018-09-17 07:51:19', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1667', '1614', '2', 'for-page-1566', '17', '2018-09-17 07:57:36', '41', '2018-09-17 07:57:36', '41', '2018-09-17 07:57:36', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1668', '1614', '2', 'for-page-1540', '17', '2018-09-17 08:41:12', '41', '2018-09-17 08:41:12', '41', '2018-09-17 08:41:12', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1669', '1614', '2', 'for-page-1539', '17', '2018-09-17 09:34:52', '41', '2018-09-17 09:34:52', '41', '2018-09-17 09:34:52', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1670', '1', '52', 'car', '1', '2018-09-19 14:45:22', '41', '2018-09-17 10:06:08', '41', '2018-09-17 10:10:04', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1671', '1614', '2', 'for-page-1585', '17', '2018-09-18 05:46:51', '41', '2018-09-18 05:46:51', '41', '2018-09-18 05:46:51', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1672', '1', '53', 'ajax-handler', '1', '2018-09-19 14:45:18', '41', '2018-09-18 06:06:54', '41', '2018-09-18 06:06:54', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1673', '22', '2', 'admin-actions', '1', '2018-09-18 08:11:19', '41', '2018-09-18 08:11:19', '41', '2018-09-18 08:11:19', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1674', '31', '5', 'admin-actions', '1', '2018-09-18 08:11:19', '41', '2018-09-18 08:11:19', '41', '2018-09-18 08:11:19', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1675', '31', '5', 'admin-actions-restore', '1', '2018-09-18 08:11:19', '41', '2018-09-18 08:11:19', '41', '2018-09-18 08:11:19', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1679', '1018', '2', 'for-field-144', '17', '2018-09-19 07:02:19', '41', '2018-09-19 07:02:19', '41', '2018-09-19 07:02:19', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1677', '1', '54', 'default', '3073', '2018-09-18 21:10:35', '41', '2018-09-18 20:27:30', '41', NULL, '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1678', '1614', '2', 'for-page-1589', '17', '2018-09-19 06:26:46', '41', '2018-09-19 06:26:46', '41', '2018-09-19 06:26:46', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1682', '1018', '2', 'for-field-145', '17', '2018-09-19 07:12:11', '41', '2018-09-19 07:12:11', '41', '2018-09-19 07:12:11', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1683', '1682', '2', 'for-page-1664', '17', '2018-09-19 07:12:59', '41', '2018-09-19 07:12:59', '41', '2018-09-19 07:12:59', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1684', '1683', '56', '1537330383-2619-1', '1', '2018-09-19 07:20:12', '41', '2018-09-19 07:13:03', '41', '2018-09-19 07:16:25', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1685', '1679', '2', 'for-page-1684', '17', '2018-09-19 07:13:03', '41', '2018-09-19 07:13:03', '41', '2018-09-19 07:13:03', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1686', '1683', '56', '1537330387-2127-1', '1', '2018-09-19 07:18:08', '41', '2018-09-19 07:13:07', '41', '2018-09-19 07:16:25', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1687', '1679', '2', 'for-page-1686', '17', '2018-09-19 07:13:07', '41', '2018-09-19 07:13:07', '41', '2018-09-19 07:13:07', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1688', '1687', '55', '1537330497-872-1', '1', '2018-09-19 07:18:08', '41', '2018-09-19 07:14:57', '41', '2018-09-19 07:16:25', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1689', '1685', '55', '1537330640-8642-1', '1', '2018-09-19 07:20:12', '41', '2018-09-19 07:17:20', '41', '2018-09-19 07:18:08', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1691', '1614', '2', 'for-page-1541', '17', '2018-09-19 08:12:00', '41', '2018-09-19 08:12:00', '41', '2018-09-19 08:12:00', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1692', '1614', '2', 'for-page-1552', '17', '2018-09-19 08:12:53', '41', '2018-09-19 08:12:53', '41', '2018-09-19 08:12:53', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1693', '1614', '2', 'for-page-1553', '17', '2018-09-19 08:13:12', '41', '2018-09-19 08:13:12', '41', '2018-09-19 08:13:12', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1694', '1614', '2', 'for-page-1543', '17', '2018-09-19 08:16:00', '41', '2018-09-19 08:16:00', '41', '2018-09-19 08:16:00', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1695', '1', '57', 'privacy', '1', '2018-09-19 14:45:14', '41', '2018-09-19 09:38:44', '41', '2018-09-19 09:38:47', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1696', '1614', '2', 'for-page-1531', '17', '2018-09-19 10:10:39', '41', '2018-09-19 10:10:39', '41', '2018-09-19 10:10:39', '20');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1697', '1614', '2', 'for-page-1532', '17', '2018-09-19 11:23:07', '41', '2018-09-19 11:23:07', '41', '2018-09-19 11:23:07', '21');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1698', '1614', '2', 'for-page-1547', '17', '2018-09-19 11:23:15', '41', '2018-09-19 11:23:15', '41', '2018-09-19 11:23:15', '22');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1699', '1614', '2', 'for-page-1560', '17', '2018-09-19 11:23:27', '41', '2018-09-19 11:23:27', '41', '2018-09-19 11:23:27', '23');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1700', '1614', '2', 'for-page-1570', '17', '2018-09-19 11:23:39', '41', '2018-09-19 11:23:39', '41', '2018-09-19 11:23:39', '24');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1701', '1614', '2', 'for-page-1575', '17', '2018-09-19 11:23:45', '41', '2018-09-19 11:23:45', '41', '2018-09-19 11:23:45', '25');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1702', '1614', '2', 'for-page-1578', '17', '2018-09-19 11:23:50', '41', '2018-09-19 11:23:50', '41', '2018-09-19 11:23:50', '26');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1703', '1614', '2', 'for-page-1581', '17', '2018-09-19 11:24:02', '41', '2018-09-19 11:24:02', '41', '2018-09-19 11:24:02', '27');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1704', '1614', '2', 'for-page-1586', '17', '2018-09-19 11:24:09', '41', '2018-09-19 11:24:09', '41', '2018-09-19 11:24:09', '28');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1705', '1614', '2', 'for-page-1593', '17', '2018-09-19 11:24:15', '41', '2018-09-19 11:24:15', '41', '2018-09-19 11:24:15', '29');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1706', '1614', '2', 'for-page-1599', '17', '2018-09-19 11:24:22', '41', '2018-09-19 11:24:22', '41', '2018-09-19 11:24:22', '30');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1707', '1614', '2', 'for-page-1603', '17', '2018-09-19 11:24:26', '41', '2018-09-19 11:24:26', '41', '2018-09-19 11:24:26', '31');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1708', '1614', '2', 'for-page-1609', '17', '2018-09-19 11:24:52', '41', '2018-09-19 11:24:52', '41', '2018-09-19 11:24:52', '32');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1709', '1614', '2', 'for-page-1583', '17', '2018-09-19 11:45:13', '41', '2018-09-19 11:45:13', '41', '2018-09-19 11:45:13', '33');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1710', '1614', '2', 'for-page-1582', '17', '2018-09-19 11:45:53', '41', '2018-09-19 11:45:53', '41', '2018-09-19 11:45:53', '34');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1711', '1614', '2', 'for-page-1567', '17', '2018-09-19 12:09:00', '41', '2018-09-19 12:09:00', '41', '2018-09-19 12:09:00', '35');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1712', '1552', '43', 'suv', '2049', '2018-09-19 12:11:26', '41', '2018-09-19 12:11:26', '41', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1713', '1614', '2', 'for-page-1712', '17', '2018-09-19 12:11:26', '41', '2018-09-19 12:11:26', '41', '2018-09-19 12:11:26', '36');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1714', '7', '58', '1714.1.10_import', '8193', '2018-09-20 12:29:40', '41', '2018-09-20 06:34:56', '41', '2018-09-20 06:34:56', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1715', '1', '59', 'pdf', '1', '2018-09-20 09:13:25', '41', '2018-09-20 09:12:40', '41', '2018-09-20 09:12:43', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1716', '1', '60', 'modifications', '1', '2018-09-20 12:39:47', '41', '2018-09-20 12:39:22', '41', '2018-09-20 12:39:22', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1717', '1614', '2', 'for-page-1558', '17', '2018-09-20 15:06:17', '41', '2018-09-20 15:06:17', '41', '2018-09-20 15:06:17', '37');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1718', '1018', '2', 'for-field-160', '17', '2018-09-21 07:26:28', '41', '2018-09-21 07:26:28', '41', '2018-09-21 07:26:28', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1719', '1718', '2', 'for-page-1', '17', '2018-09-21 07:27:08', '41', '2018-09-21 07:27:08', '41', '2018-09-21 07:27:08', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1720', '1719', '61', '1537504688-7775-1', '1', '2018-09-21 07:52:03', '41', '2018-09-21 07:38:08', '41', '2018-09-21 07:41:57', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1721', '1719', '61', '1537505356-5826-1', '1', '2018-09-21 07:52:04', '41', '2018-09-21 07:49:16', '41', '2018-09-21 07:52:04', '3');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2018-07-20 14:59:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2018-07-20 14:59:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2018-07-20 14:59:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2018-07-20 14:59:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2018-07-20 15:02:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1530', '1', '2018-09-13 08:33:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1620', '2', '2018-09-13 11:40:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1622', '1', '2018-09-13 11:44:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1621', '2', '2018-09-13 11:40:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1534', '1', '2018-09-13 08:33:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1623', '1', '2018-09-13 11:48:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1536', '1', '2018-09-13 08:33:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1636', '2', '2018-09-14 08:48:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1635', '2', '2018-09-14 08:48:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1633', '2', '2018-09-14 08:48:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1631', '2', '2018-09-14 08:48:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1625', '1', '2018-09-13 13:30:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1643', '2', '2018-09-14 12:30:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1640', '2', '2018-09-14 12:14:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1544', '1', '2018-09-13 08:33:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1653', '2', '2018-09-17 06:30:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1652', '2', '2018-09-17 06:29:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1644', '1', '2018-09-14 12:58:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1655', '2', '2018-09-17 06:32:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1654', '2', '2018-09-17 06:31:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1550', '1', '2018-09-13 08:33:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1658', '2', '2018-09-17 06:50:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1657', '2', '2018-09-17 06:50:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1656', '2', '2018-09-17 06:50:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1554', '1', '2018-09-13 08:33:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1672', '1', '2018-09-18 06:06:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1670', '1', '2018-09-17 10:06:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1664', '1', '2018-09-17 07:42:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1661', '2', '2018-09-17 06:50:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1660', '2', '2018-09-17 06:50:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1659', '2', '2018-09-17 06:50:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1681', '2', '2018-09-19 07:09:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1675', '2', '2018-09-18 08:11:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1674', '2', '2018-09-18 08:11:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1564', '1', '2018-09-13 08:33:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1686', '2', '2018-09-19 07:13:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1677', '1', '2018-09-18 20:27:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1688', '2', '2018-09-19 07:14:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1568', '1', '2018-09-13 08:33:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1712', '1', '2018-09-19 12:11:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1689', '2', '2018-09-19 07:17:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1553', '2', '2018-09-19 12:31:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1572', '1', '2018-09-13 08:33:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1716', '1', '2018-09-20 12:39:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1715', '1', '2018-09-20 09:12:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1714', '2', '2018-09-20 12:29:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1721', '2', '2018-09-21 07:49:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1720', '2', '2018-09-21 07:38:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1578', '1', '2018-09-13 08:33:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1584', '1', '2018-09-13 08:33:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1588', '1', '2018-09-13 08:33:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1597', '1', '2018-09-13 08:33:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1601', '1', '2018-09-13 08:33:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1605', '1', '2018-09-13 08:33:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1607', '1', '2018-09-13 08:33:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1609', '1', '2018-09-13 08:33:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1612', '1', '2018-09-13 09:53:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1684', '2', '2018-09-19 07:13:03');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1018', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1530', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1532', '1530');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1532', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1534', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1536', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1537', '1536');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1537', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1538', '1536');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1538', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1541', '1536');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1541', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1544', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1547', '1544');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1547', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1550', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1552', '1550');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1552', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1554', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1560', '1554');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1560', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1564', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1566', '1564');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1566', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1568', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1570', '1568');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1570', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1572', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1575', '1572');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1575', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1578', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1581', '1578');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1581', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1584', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1586', '1584');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1586', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1588', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1593', '1588');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1593', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1597', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1599', '1597');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1599', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1601', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1603', '1601');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1603', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1605', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1607', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1609', '1612');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1614', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1614', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1616', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1616', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1616', '1614');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1619', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1619', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1619', '1614');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1628', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1628', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1629', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1629', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1630', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1630', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1630', '1628');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1632', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1632', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1632', '1629');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1634', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1634', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1634', '1629');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1648', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1648', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1649', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1649', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1650', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1650', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1650', '1649');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1651', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1651', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1651', '1648');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1679', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1679', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1680', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1680', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1680', '1679');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1682', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1682', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1683', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1683', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1683', '1682');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1685', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1685', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1685', '1679');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1687', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1687', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1687', '1679');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1718', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1718', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1719', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1719', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1719', '1718');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `session_login_throttle` (`name`, `attempts`, `last_attempt`) VALUES('developer', '3', '1537512221');

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1537356599,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1537356599,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'layout_class', '97', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1537356599,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'layout_car', '98', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536819265}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'repeater_modifications', '99', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1537437694}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'layout_equipment', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1536834491}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'repeater_home_show_categories', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1536903650}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'repeater_home_show_category', '102', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1536903715}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'repeater_benefitsWithPic', '103', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1537154623}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'repeater_benefits', '104', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1537154779}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'layout_contacts', '105', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1537356599,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'layout_carInfo', '106', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1537356599,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'ajax-handler', '107', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1537356599,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'layout_default', '108', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"modified\":1537291563}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'repeater_contacts_team', '109', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1537329739}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'repeater_contacts_teams', '110', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1537330331}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'layout_privacy', '111', '0', '0', '{\"useRoles\":1,\"noParents\":-1,\"slashUrls\":1,\"compile\":3,\"modified\":1537356599,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'layout_import', '112', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1537414468}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'layout_pdf', '113', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1537436594,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('60', 'layout_modifications', '114', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1537436372}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('61', 'repeater_home_promos', '115', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1537503988}');

# --- /WireDatabaseBackup {"numTables":79,"numCreateTables":79,"numInserts":1275,"numSeconds":0}
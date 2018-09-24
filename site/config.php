<?php

/**
 * ProcessWire Configuration File
 *
 * Site-specific configuration for ProcessWire.
 * This config.php file was generated by the ProcessExportProfile module.
 *
 * Please see the file /wire/config.php which contains all configuration options you may
 * specify here. Simply copy any of the configuration options from that file and paste
 * them into this file in order to modify them.
 *
 * ProcessWire
 * Copyright (C) 2017 by Ryan Cramer
 * Licensed under MPL 2.0
 *
 * https://processwire.com
 *
 */

if(!defined("PROCESSWIRE")) die();

/*** SITE CONFIG *************************************************************************/

/**
 * Enable debug mode?
 *
 * Debug mode causes additional info to appear for use during dev and debugging.
 * This is almost always recommended for sites in development. However, you should
 * always have this disabled for live/production sites.
 *
 * @var bool
 *
 */
$config->debug = false;

$config->prependTemplateFile = 'common/_init.php';
$config->appendTemplateFile = 'common/_done.php';
$config->defaultAdminTheme = 'AdminThemeUikit';


/*** INSTALLER CONFIG ********************************************************************/



/**
 * Installer: Database Configuration
 *
 */
$config->dbHost = 'localhost';
$config->dbName = 'mercedes';
$config->dbUser = "root";
$config->dbPass = 'root';
$config->dbPort = '3306';

/**
 * Installer: User Authentication Salt
 *
 * Must be retained if you migrate your site from one server to another
 *
 */
$config->userAuthSalt = '86306df8ec09d0a0c68916a75118249b';

/**
 * Installer: File Permission Configuration
 *
 */
$config->chmodDir = '0755'; // permission for directories created by ProcessWire
$config->chmodFile = '0644'; // permission for files created by ProcessWire

/**
 * Installer: Time zone setting
 *
 */
$config->timezone = 'Asia/Yekaterinburg';

/**
 * Installer: Admin theme
 *
 */
$config->defaultAdminTheme = 'AdminThemeUikit';

/**
 * Installer: Unix timestamp of date/time installed
 *
 * This is used to detect which when certain behaviors must be backwards compatible.
 * Please leave this value as-is.
 *
 */
$config->installed = 1536742022;


/**
 * Installer: HTTP Hosts Whitelist
 *
 */
$config->httpHosts = array('mercedes.loc');

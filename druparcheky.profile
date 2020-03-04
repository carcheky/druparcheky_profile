<?php

/**
 * @file
 * Enables modules and site configuration for a Varbase site installation.
 */

use Symfony\Component\Yaml\Yaml;
use Drupal\Core\Form\FormStateInterface;
use Drupal\language\Entity\ConfigurableLanguage;
use Drupal\varbase\Config\ConfigBit;
use Drupal\varbase\Form\ConfigureMultilingualForm;
use Drupal\varbase\Form\AssemblerForm;
use Drupal\varbase\Form\DevelopmentToolsAssemblerForm;
use Drupal\varbase\Entity\VarbaseEntityDefinitionUpdateManager;


/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function druparcheky_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // Add a placeholder as example that one can choose an arbitrary site name.
  $form['site_information']['site_name']['#attributes']['placeholder'] = t('My Official Site Name');

  // Default site email noreply@test.test .
  $form['site_information']['site_mail']['#default_value'] = 'noreply@test.test';
  $form['site_information']['site_mail']['#attributes']['style'] = 'width: 25em;';

  // Default user 1 username should be 'admin'.
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['name']['#attributes']['disabled'] = TRUE;
  $form['admin_account']['account']['mail']['#default_value'] = 'admin@test.test';
  $form['admin_account']['account']['mail']['#description'] = t('In most case, and for <a target="_blank" href="@link">Vardot</a> specific use, we recommend this to always be <em>admin@test.test</em>.', ['@link' => 'http://test.test']);
}
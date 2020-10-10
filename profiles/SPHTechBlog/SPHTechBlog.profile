<?php

/**
 * @file
 * Enables modules and site configuration for the editorial_workflow profile.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function SPHTechBlog_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  $form['site_information']['site_name']['#default_value'] = 'SPH Tech Blog';
//   $form['#submit'][] = 'SPHTechBlog_form_install_configure_submit';
}

/**
 * Submission handler to sync the contact.form.feedback recipient.
 */
function SPHTechBlog_form_install_configure_submit($form, FormStateInterface $form_state) {
  $site_mail = $form_state->getValue('site_mail');

  // $password = $form_state->getValue('account')['pass'];
  // SPHTechBlog_set_users_passwords($password);
}

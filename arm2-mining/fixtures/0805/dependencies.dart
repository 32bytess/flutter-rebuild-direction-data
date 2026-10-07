// GENERATED FIXTURE SKELETON -- spm-fixture-v2
//
// Declarations lifted out of this group's transplants so that ONE fixture serves every role in
// it. That is the point of the file: the same values mount for both endpoints of every
// contrast, so a measured difference is attributable to the edit and not to the scaffolding.
//
// HOW THE VALUES GOT HERE. They are not authored by hand and not invented by the generator.
// Each one is resolved by a pre-registered hierarchy and the rule that fired is recorded, per
// binding, in this group's `fixture_provenance.json`:
//
//   relocated        the value really was in the application; `spm isolate` moved it here
//                    verbatim. Do not "tidy" one -- it is a measurement input.
//   upstream_literal not relocated, but the repository declares it at this group's anchor
//                    commit; taken verbatim, with `file@sha` recorded.
//   protocol_constant neither of the above; the committed table in `config/fixture_policy.json`.
//                    Collection cardinality is one declared constant, corpus-wide.
//   maximal_branch   a bool/enum/nullability that decides WHICH subtree renders takes the arm
//                    that renders more. This one OVERRIDES a relocated value, and says so.
//
// WHAT REMAINS TRUE REGARDLESS OF WHO OR WHAT FILLS A SLOT:
//
//   * The same values serve every role in the group. That is what makes the stubbing
//     symmetric across a pair, which is what makes a measured difference attributable to
//     the edit rather than to the scaffolding.
//   * Fixed collection cardinality. A list of 3 in one place and 10 in another is a change
//     in tree size, and tree size is the dependent variable.
//   * Deterministic values only: no `Random`, no `DateTime.now()`, no I/O, no network, no
//     animation controllers left ticking.
//   * Keep `extends` and `implements` clauses exactly as they are. `spm analyze` decides
//     widget versus value object by walking the supertype chain, so a stand-in that stops
//     extending its widget base silently moves allocations into `valueObjectAllocCount`.
//   * Fill before measuring, then freeze. A fixture edited after seeing a result is a
//     fixture the result cannot be defended against.
//
// A slot the hierarchy cannot resolve keeps its `// TODO: value` and is NOT guessed.
// `scripts/fixture_gate.py` then refuses the group, so an unfilled fixture cannot reach the
// device.
//
// This file is a pure function of the mine plus two committed tables, and is regenerated as
// long as it is untouched. The first HAND edit makes it yours: the screen sees the file no
// longer matches the hash it recorded, copies it into config/authored_fixtures/, and never
// generates over it again -- including after a prune deletes this directory, which is how
// the hash alone used to lose an edit. `scripts/authored_fixtures.py --list` says which
// groups the corpus no longer derives from the mine; `--release <group>` hands one back.
// ignore_for_file: unused_import, unused_element, unused_field
part of generated_widget;


// SEEDS -- the values the generated `initState` reads, for which `spm isolate`
// could build none. It declares each of these `late` and leaves it unassigned on
// purpose: a fabricated default would be measured as though it were the value that
// was really there. Assign one below and every role in this group gets it.

late VoidCallback fixtureOnModelTap; // TODO: value

// LIFTED BINDINGS -- the scope's initial state, which `spm isolate` 0.7.0 moves out
// of the application and into a fixture block of its own. Most of these carry the
// value that was really there, relocated rather than invented, and are reproduced
// here verbatim: do not "tidy" one, it is a measurement input.
//
// The ones marked TODO are the exception. Where the binding came from the
// application and no value existed to move, the block gets an empty collection or a
// null, and how many elements you put in one IS tree size -- the dependent variable.
// That is a decision, and it is why they are hoisted: filled in once here, the whole
// group mounts from identical values, so a measured difference is attributable to
// the edit rather than to the scaffolding.

WidgetRef fixtureRef = WidgetRef();

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class AppLocalizations {
  AppLocalizations(dynamic locale);
  dynamic get localeName => '';
  static const dynamic delegate = null;
  static const dynamic localizationsDelegates = null;
  static const dynamic supportedLocales = null;
  dynamic get app_name => '';
  dynamic get app_tagline => '';
  dynamic get app_version => '';
  dynamic get cancel => '';
  dynamic get confirm => '';
  dynamic get delete => '';
  dynamic get save => '';
  dynamic get retry => '';
  dynamic get close => '';
  dynamic get done => '';
  dynamic get continue_action => '';
  dynamic get skip => '';
  dynamic get install => '';
  dynamic get download => '';
  dynamic get resume => '';
  dynamic get pause => '';
  dynamic get stop => '';
  dynamic get edit => '';
  dynamic get preview => '';
  dynamic get unload => '';
  dynamic get load => '';
  dynamic get rename => '';
  dynamic get pin => '';
  dynamic get unpin => '';
  dynamic get share => '';
  dynamic get copy => '';
  dynamic get copied => '';
  dynamic get copied_to_clipboard => '';
  dynamic get select => '';
  dynamic get active => '';
  dynamic get all => '';
  dynamic get none => '';
  dynamic get none_selected => '';
  dynamic get online => '';
  dynamic get offline => '';
  dynamic get error => '';
  dynamic get unknown_error => '';
  dynamic get not_now => '';
  dynamic get enable => '';
  dynamic get proceed_anyway => '';
  dynamic get test_connection => '';
  dynamic get testing => '';
  dynamic get connection_successful => '';
  dynamic get connection_failed => '';
  dynamic get save_continue => '';
  dynamic get save_changes => '';
  dynamic get finish_setup => '';
  dynamic get start_new_chat => '';
  dynamic get cannot_undo => '';
  dynamic get ram_warning => '';
  dynamic get recommended => '';
  dynamic get may_be_large => '';
  dynamic get calculating => '';
  dynamic get download_failed => '';
  dynamic get downloaded => '';
  dynamic get not_downloaded => '';
  dynamic get installed => '';
  dynamic get not_installed => '';
  dynamic get loading => '';
  dynamic get thinking => '';
  dynamic get processing => '';
  dynamic get initializing => '';
  dynamic get ready => '';
  dynamic get preparing_app => '';
  dynamic get initializing_services => '';
  dynamic get configuring_server => '';
  dynamic get startup_failed => '';
  dynamic get something_went_wrong => '';
  dynamic get delete_model_title => '';
  dynamic get delete_voice_title => '';
  dynamic get delete_server_title => '';
  dynamic get delete_conversation_title => '';
  dynamic get delete_message_title => '';
  dynamic get delete_persona_body => '';
  dynamic get clear_conversation_title => '';
  dynamic get clear_conversation_body => '';
  dynamic get clear => '';
  dynamic get no_model_loaded => '';
  dynamic get delete_conversation => '';
  dynamic get nav_history => '';
  dynamic get nav_servers => '';
  dynamic get nav_local_models => '';
  dynamic get nav_tts => '';
  dynamic get nav_personas => '';
  dynamic get nav_settings => '';
  dynamic get nav_new_chat => '';
  dynamic get search_hint => '';
  dynamic get no_server_selected => '';
  dynamic get switch_server => '';
  dynamic get switch_server_subtitle => '';
  dynamic get manage_servers => '';
  dynamic get open_source => '';
  dynamic get open_source_desc => '';
  dynamic get star_on_github => '';
  dynamic get add_more => '';
  dynamic get on_github => '';
  dynamic get could_not_open_github => '';
  dynamic get settings_title => '';
  dynamic get settings_appearance => '';
  dynamic get settings_language => '';
  dynamic get language_system_default => '';
  dynamic get settings_tts => '';
  dynamic get settings_behavior => '';
  dynamic get settings_on_device => '';
  dynamic get settings_default_server => '';
  dynamic get settings_default_persona => '';
  dynamic get settings_privacy => '';
  dynamic get settings_data_management => '';
  dynamic get settings_about => '';
  dynamic get theme => '';
  dynamic get theme_system => '';
  dynamic get theme_light => '';
  dynamic get theme_dark => '';
  dynamic get theme_claude => '';
  dynamic get font_size => '';
  dynamic get font_size_desc => '';
  dynamic get font_preview => '';
  dynamic get code_theme_dark => '';
  dynamic get code_theme_light => '';
  dynamic get code_theme_desc => '';
  dynamic get tts_engine => '';
  dynamic get tts_engine_system => '';
  dynamic get tts_engine_kitten => '';
  dynamic get voice => '';
  dynamic get voice_female => '';
  dynamic get voice_male => '';
  dynamic get voice_other => '';
  dynamic get tts_speed => '';
  dynamic get tts_speed_desc => '';
  dynamic get manage_tts_models => '';
  dynamic get manage_on_device_models => '';
  dynamic get enable_smart_reply => '';
  dynamic get streaming_responses => '';
  dynamic get auto_generate_titles => '';
  dynamic get send_on_enter => '';
  dynamic get show_system_messages => '';
  dynamic get haptic_feedback => '';
  dynamic get enable_mcp => '';
  dynamic get new_chat_mcp_default => '';
  dynamic get show_data_indicator => '';
  dynamic get privacy_info => '';
  dynamic get delete_all_conversations => '';
  dynamic get reset_settings_defaults => '';
  dynamic get chat_title => '';
  dynamic get chat_parameters_tooltip => '';
  dynamic get change_persona => '';
  dynamic get set_persona => '';
  dynamic get remove_persona => '';
  dynamic get clear_conversation => '';
  dynamic get connection_error => '';
  dynamic get disconnected => '';
  dynamic get configure => '';
  dynamic get select_model => '';
  dynamic get select_persona => '';
  dynamic get start_conversation => '';
  dynamic get recent_chats => '';
  dynamic get see_all => '';
  dynamic get quick_write => '';
  dynamic get quick_explain => '';
  dynamic get quick_debug => '';
  dynamic get quick_async => '';
  dynamic get history_missing_title => '';
  dynamic get history_missing_desc => '';
  dynamic get technical_details => '';
  dynamic get last_error => '';
  dynamic get copy_info => '';
  dynamic get conversation_id => '';
  dynamic get created_at => '';
  dynamic get expected_messages => '';
  dynamic get debug_dialog_desc => '';
  dynamic get chat_input_hint => '';
  dynamic get send_message_tooltip => '';
  dynamic get stop_generation_tooltip => '';
  dynamic get attach_images_tooltip => '';
  dynamic get start_listening_tooltip => '';
  dynamic get stop_listening_tooltip => '';
  dynamic get tool_unknown => '';
  dynamic get message_options => '';
  dynamic get copy_markdown => '';
  dynamic get copied_markdown => '';
  dynamic get read_aloud => '';
  dynamic get stop_reading => '';
  dynamic get more => '';
  dynamic get edit_message => '';
  dynamic get edit_message_desc => '';
  dynamic get save_regenerate => '';
  dynamic get chat_settings_title => '';
  dynamic get reset_defaults => '';
  dynamic get parameters_tab => '';
  dynamic get mcp_tab => '';
  dynamic get temperature => '';
  dynamic get temperature_desc => '';
  dynamic get top_p => '';
  dynamic get top_p_desc => '';
  dynamic get max_tokens => '';
  dynamic get max_tokens_desc => '';
  dynamic get context_length => '';
  dynamic get context_length_desc => '';
  dynamic get mcp_disabled_warning => '';
  dynamic get mcp_enable_chat => '';
  dynamic get auto_execute_tools => '';
  dynamic get beta_label => '';
  dynamic get experimental_label => '';
  dynamic get add_ephemeral_mcp => '';
  dynamic get mcp_label_placeholder => '';
  dynamic get mcp_url_placeholder => '';
  dynamic get active_integrations => '';
  dynamic get enable_notifications => '';
  dynamic get enable_notifications_desc => '';
  dynamic get chat_history_title => '';
  dynamic get conversation_just_now => '';
  dynamic get conversation_yesterday => '';
  dynamic get options_tooltip => '';
  dynamic get no_results_found => '';
  dynamic get no_conversations_yet => '';
  dynamic get try_different_search => '';
  dynamic get start_new_conversation => '';
  dynamic get rename_conversation => '';
  dynamic get enter_new_title => '';
  dynamic get pinned_section => '';
  dynamic get today_section => '';
  dynamic get yesterday_section => '';
  dynamic get previous_7_days => '';
  dynamic get previous_30_days => '';
  dynamic get older_section => '';
  dynamic get onboarding_choose_language => '';
  dynamic get onboarding_choose_language_desc => '';
  dynamic get onboarding_localmind => '';
  dynamic get onboarding_connect_server => '';
  dynamic get onboarding_connect_desc => '';
  dynamic get openai_compatible_api => '';
  dynamic get https_requires_ssl => '';
  dynamic get most_local_setups_use_http => '';
  dynamic get onboarding_welcome => '';
  dynamic get server_type_on_device => '';
  dynamic get server_type_lm_studio => '';
  dynamic get server_type_ollama => '';
  dynamic get server_type_openrouter => '';
  dynamic get server_type_openrouter_sub => '';
  dynamic get ready_continue => '';
  dynamic get waiting_selection => '';
  dynamic get setup_connection => '';
  dynamic get server_name => '';
  dynamic get name_required => '';
  dynamic get name_max_50 => '';
  dynamic get host_label => '';
  dynamic get host_required => '';
  dynamic get port_label => '';
  dynamic get port_required => '';
  dynamic get port_invalid => '';
  dynamic get port_range => '';
  dynamic get api_key_required => '';
  dynamic get api_key_optional => '';
  dynamic get api_key_required_openrouter => '';
  dynamic get api_key_format => '';
  dynamic get my_server_hint => '';
  dynamic get name_length_validation => '';
  dynamic get host_valid => '';
  dynamic get api_key_hint_openrouter => '';
  dynamic get api_key_hint_generic => '';
  dynamic get update_server => '';
  dynamic get save_server => '';
  dynamic get server_updated => '';
  dynamic get server_added => '';
  dynamic get download_model_title => '';
  dynamic get download_model_desc => '';
  dynamic get on_device_android_only => '';
  dynamic get total_ram => '';
  dynamic get available => '';
  dynamic get choose_theme => '';
  dynamic get choose_theme_desc => '';
  dynamic get theme_card_system => '';
  dynamic get theme_card_system_sub => '';
  dynamic get theme_card_light => '';
  dynamic get theme_card_light_sub => '';
  dynamic get theme_card_dark => '';
  dynamic get theme_card_dark_sub => '';
  dynamic get theme_card_claude => '';
  dynamic get theme_card_claude_sub => '';
  dynamic get stay_updated => '';
  dynamic get stay_updated_desc => '';
  dynamic get notification_benefit_downloads => '';
  dynamic get notification_benefit_completions => '';
  dynamic get notification_benefit_background => '';
  dynamic get allow_notifications => '';
  dynamic get servers_title => '';
  dynamic get no_servers_yet => '';
  dynamic get no_servers_desc => '';
  dynamic get add_server => '';
  dynamic get edit_server => '';
  dynamic get add_server_title => '';
  dynamic get server_type_label => '';
  dynamic get server_icon_label => '';
  dynamic get default_icon => '';
  dynamic get server_type_lm_studio_display => '';
  dynamic get server_type_openai_display => '';
  dynamic get server_type_ollama_display => '';
  dynamic get server_type_openrouter_display => '';
  dynamic get server_type_on_device_display => '';
  dynamic get server_address_openrouter => '';
  dynamic get server_address_on_device => '';
  dynamic get default_badge => '';
  dynamic get set_as_default => '';
  dynamic get select_icon => '';
  dynamic get select_icon_desc => '';
  dynamic get search_icons_hint => '';
  dynamic get server_icon_stack => '';
  dynamic get server_icon_stack2 => '';
  dynamic get server_icon_stack3 => '';
  dynamic get server_icon_cloud => '';
  dynamic get server_icon_cloud_server => '';
  dynamic get server_icon_mcp => '';
  dynamic get server_icon_database => '';
  dynamic get server_icon_database1 => '';
  dynamic get server_icon_database2 => '';
  dynamic get server_icon_cpu => '';
  dynamic get server_icon_chip => '';
  dynamic get server_icon_chip2 => '';
  dynamic get server_icon_computer => '';
  dynamic get server_icon_laptop => '';
  dynamic get server_icon_terminal => '';
  dynamic get server_icon_code => '';
  dynamic get server_icon_ai_brain => '';
  dynamic get server_icon_ai_brain2 => '';
  dynamic get server_icon_ai_cloud => '';
  dynamic get server_icon_ai_network => '';
  dynamic get server_icon_ai_chat => '';
  dynamic get server_icon_cellular => '';
  dynamic get server_icon_plug1 => '';
  dynamic get server_icon_plug2 => '';
  dynamic get server_icon_bot => '';
  dynamic get server_icon_bot2 => '';
  dynamic get server_icon_robotic => '';
  dynamic get server_icon_rocket => '';
  dynamic get server_icon_star => '';
  dynamic get server_icon_settings1 => '';
  dynamic get server_icon_settings2 => '';
  dynamic get server_icon_home1 => '';
  dynamic get server_icon_home2 => '';
  dynamic get server_icon_folder1 => '';
  dynamic get server_icon_folder2 => '';
  dynamic get server_icon_file1 => '';
  dynamic get server_icon_lock => '';
  dynamic get server_icon_key => '';
  dynamic get server_icon_link => '';
  dynamic get server_icon_globe => '';
  dynamic get server_icon_api => '';
  dynamic get server_icon_arrow_right => '';
  dynamic get server_icon_check => '';
  dynamic get server_icon_alert => '';
  dynamic get server_icon_info => '';
  dynamic get server_icon_zap => '';
  dynamic get server_icon_cloud_upload => '';
  dynamic get server_icon_cloud_download => '';
  dynamic get server_icon_refresh => '';
  dynamic get server_icon_hard_drive => '';
  dynamic get server_icon_drive => '';
  dynamic get personas_title => '';
  dynamic get persona_category_general => '';
  dynamic get persona_category_coding => '';
  dynamic get persona_category_education => '';
  dynamic get persona_category_creative => '';
  dynamic get persona_builtin_section => '';
  dynamic get persona_my_section => '';
  dynamic get clone_edit => '';
  dynamic get builtin_badge => '';
  dynamic get no_personas_found => '';
  dynamic get no_personas_desc => '';
  dynamic get edit_persona => '';
  dynamic get create_persona => '';
  dynamic get create_persona_button => '';
  dynamic get emoji_label => '';
  dynamic get name_label => '';
  dynamic get my_persona_hint => '';
  dynamic get category_label => '';
  dynamic get description_optional => '';
  dynamic get description_hint => '';
  dynamic get system_prompt => '';
  dynamic get no_prompt_placeholder => '';
  dynamic get prompt_hint => '';
  dynamic get prompt_required => '';
  dynamic get prompt_max_chars => '';
  dynamic get advanced_settings => '';
  dynamic get temperature_label => '';
  dynamic get top_p_label => '';
  dynamic get temp_hint => '';
  dynamic get top_p_hint => '';
  dynamic get range_0_2 => '';
  dynamic get range_0_1 => '';
  dynamic get persona_updated => '';
  dynamic get persona_created => '';
  dynamic get tts_models_title => '';
  dynamic get always_available => '';
  dynamic get tts_system_desc => '';
  dynamic get downloading_status => '';
  dynamic get on_device_models_title => '';
  dynamic get settings_huggingface_token => '';
  dynamic get settings_huggingface_token_desc => '';
  dynamic get settings_huggingface_token_set => '';
  dynamic get settings_huggingface_token_cleared => '';
  dynamic get model_requires_huggingface_token => '';
  dynamic get model_missing_huggingface_token => '';
  dynamic get set_huggingface_token => '';
  dynamic get clear_huggingface_token => '';
  dynamic get edit_huggingface_token_dialog_title => '';
  dynamic get huggingface_token_dialog_hint => '';
  dynamic get server_type_ollama_desc => '';
  dynamic get server_type_on_device_desc => '';
  dynamic get server_type_lm_studio_desc => '';
  dynamic get available_models => '';
  dynamic get device_memory => '';
  dynamic get ram_usage => '';
  dynamic get memory_healthy => '';
  dynamic get memory_critical => '';
  dynamic get memory_low => '';
  dynamic get available_ram => '';
  dynamic get total_capacity => '';
  dynamic get loaded_status => '';
  dynamic get inference_backend => '';
  dynamic get backend_ios_notice => '';
  dynamic get backend_cpu_desc => '';
  dynamic get backend_gpu_desc => '';
  dynamic get backend_npu_desc => '';
  dynamic get select_model_title => '';
  dynamic get refresh_models => '';
  dynamic get search_models_hint => '';
  dynamic get no_server_connected => '';
  dynamic get add_server_first => '';
  dynamic get failed_load_models => '';
  dynamic get no_models_available => '';
  dynamic get unload_from_server => '';
  dynamic get unload_all_models => '';
  dynamic get all_models_unloaded => '';
  dynamic get branch_chat => '';
  dynamic get branch_chat_desc => '';
  dynamic get edit_assistant_message_desc => '';
  dynamic get download_complete_notification => '';
  dynamic get engine_name_system => '';
  dynamic get engine_tagline_system => '';
  dynamic get engine_name_kitten => '';
  dynamic get engine_tagline_kitten => '';
  dynamic get engine_name_sherpa => '';
  dynamic get engine_tagline_sherpa => '';
  dynamic get voice_jasper => '';
  dynamic get voice_bella => '';
  dynamic get voice_bruno => '';
  dynamic get voice_luna => '';
  dynamic get voice_hugo => '';
  dynamic get voice_rosie => '';
  dynamic get voice_leo => '';
  dynamic get voice_kiki => '';
  dynamic get voice_lessac => '';
  dynamic get voice_ryan => '';
  dynamic get model_qwen_3 => '';
  dynamic get model_qwen_3_desc => '';
  dynamic get model_license_apache => '';
  dynamic get model_qwen_25 => '';
  dynamic get model_qwen_25_desc => '';
  dynamic get model_deepseek => '';
  dynamic get model_deepseek_desc => '';
  dynamic get model_license_mit => '';
  dynamic get model_gemma => '';
  dynamic get model_gemma_desc => '';
  dynamic get export_role_user => '';
  dynamic get export_role_assistant => '';
  dynamic get export_role_system => '';
  dynamic get export_role_tool => '';
  dynamic get export_text_user => '';
  dynamic get export_text_assistant => '';
  dynamic get export_text_system => '';
  dynamic get export_text_tool => '';
  dynamic get export_label_user => '';
  dynamic get export_label_assistant => '';
  dynamic get export_label_system => '';
  dynamic get export_label_tool => '';
  dynamic get select_model_hint => '';
  dynamic get test_notification_title => '';
  dynamic get test_notification_body => '';
  dynamic get tts_supports_background => '';
  dynamic get tts_other_services_background_note => '';
  dynamic get gguf_imported_models_title => '';
  dynamic get gguf_imported_models_empty_subtitle => '';
  dynamic get gguf_imported_models_ready => '';
  dynamic get gguf_curated_models_subtitle => '';
  dynamic get gguf_only_supported => '';
  dynamic get gguf_imported_from_local_file => '';
  dynamic get gguf_import_failed => '';
  dynamic get gguf_imported_from_huggingface => '';
  dynamic get gguf_import_canceled => '';
  dynamic get gguf_enter_huggingface_url => '';
  dynamic get gguf_only_official_huggingface_urls => '';
  dynamic get gguf_use_https_url => '';
  dynamic get gguf_url_must_point_to_file => '';
  dynamic get gguf_unable_to_detect_file_name => '';
  dynamic get gguf_download_empty => '';
  dynamic get gguf_selected_file_missing => '';
  dynamic get gguf_import_action => '';
  dynamic get gguf_overview_title => '';
  dynamic get gguf_overview_subtitle => '';
  dynamic get gguf_imported_count_label => '';
  dynamic get gguf_local_files_label => '';
  dynamic get gguf_huggingface_label => '';
  dynamic get gguf_import_local_title => '';
  dynamic get gguf_import_local_subtitle => '';
  dynamic get gguf_import_huggingface_title => '';
  dynamic get gguf_import_huggingface_subtitle => '';
  dynamic get gguf_no_imported_title => '';
  dynamic get gguf_no_imported_subtitle => '';
  dynamic get gguf_import_huggingface_dialog_title => '';
  dynamic get gguf_import_huggingface_dialog_subtitle => '';
  dynamic get gguf_url_or_repo_path => '';
  dynamic get paste => '';
  dynamic get gguf_browse => '';
  dynamic get gguf_huggingface_token_ready => '';
  dynamic get gguf_huggingface_token_optional => '';
  dynamic get gguf_huggingface_token_ready_desc => '';
  dynamic get gguf_huggingface_token_optional_desc => '';
  dynamic get gguf_downloading => '';
  dynamic get gguf_preparing => '';
  dynamic get gguf_preparing_download => '';
  dynamic get gguf_cancel_import => '';
  dynamic get clipboard_empty => '';
  dynamic get could_not_open_huggingface => '';
  dynamic get gguf_paste_url_error => '';
  dynamic get gguf_blob_link => '';
  dynamic get gguf_repository_label => '';
  dynamic get gguf_detected_path_label => '';
  dynamic get gguf_imported_section_label => '';
  dynamic get gguf_already_available => '';
  dynamic get gguf_curated_models_short => '';
  dynamic get execute_tool_title => '';
  dynamic get execute_tool_request_desc => '';
  dynamic get reject => '';
  dynamic get approve => '';
  dynamic get server_type_help => '';
  dynamic get server_identity_title => '';
  dynamic get server_identity_desc => '';
  dynamic get server_connection_title => '';
  dynamic get server_connection_desc => '';
  dynamic get server_authentication_title => '';
  dynamic get server_authentication_required_desc => '';
  dynamic get server_authentication_optional_desc => '';
  dynamic get mcp_tools_title => '';
  dynamic get available_tools => '';
  dynamic get unable_load_tools => '';
  dynamic get no_tools_registered => '';
  dynamic get no_tools_registered_desc => '';
  dynamic get example_mcp_server_title => '';
  dynamic get example_mcp_server_desc => '';
  dynamic get disable_example_server => '';
  dynamic get enable_example_server => '';
  dynamic get built_in_label => '';
  dynamic get highlights_label => '';
  dynamic get built_with_label => '';
  dynamic get local_label => '';
  dynamic get gguf_format_label => '';
  dynamic get tool_status_requested => '';
  dynamic get tool_status_approved => '';
  dynamic get tool_status_rejected => '';
  dynamic get tool_status_running => '';
  dynamic get tool_status_done => '';
  dynamic get tool_status_failed => '';
  dynamic get model_favorite_toggle => '';
  dynamic get model_note_label => '';
  dynamic get model_note_hint => '';
  dynamic get unload_models_before_load => '';
  dynamic get export_all_data => '';
  dynamic get import_all_data => '';
  dynamic get export_data_success => '';
  dynamic get import_data_success => '';
  dynamic get import_data_confirm => '';
  dynamic get import_settings_confirm => '';
  dynamic get export_conversations => '';
  dynamic get import_conversations => '';
  dynamic get export_personas => '';
  dynamic get import_personas => '';
  dynamic get export_settings => '';
  dynamic get import_settings => '';
  dynamic get export_all_zip => '';
  dynamic get import_all_zip => '';
  dynamic get duplicate_chat => '';
  dynamic get duplicate_chat_success => '';
  dynamic get move_to_folder => '';
  dynamic get remove_from_folder => '';
  dynamic get create_folder => '';
  dynamic get new_folder => '';
  dynamic get folder_name_hint => '';
  dynamic get all_chats => '';
  dynamic get unfiled_chats => '';
  dynamic get create => '';
  dynamic get server_path_prefix_label => '';
  dynamic get server_path_prefix_hint => '';
  dynamic get search_message_contents => '';
  dynamic get message_search_results => '';
  dynamic get saved_messages_title => '';
  dynamic get nav_saved_messages => '';
  dynamic get saved_messages_empty => '';
  dynamic get save_message => '';
  dynamic get message_saved => '';
  dynamic get test_tts_section_title => '';
  dynamic get test_tts_hint => '';
  dynamic get test_speak_button => '';
  dynamic get scroll_to_bottom => '';
  dynamic get generate_ai_response => '';
  dynamic get no_response => '';
  dynamic get export => '';
  dynamic get import => '';
  dynamic get conversations_label => '';
  dynamic get personas_label => '';
  dynamic get settings_label => '';
  dynamic get export_conversation => '';
  dynamic get tts_process_markdown => '';
  dynamic get tts_process_markdown_desc => '';
  dynamic get tts_skip_seconds => '';
  dynamic get tts_skip_seconds_desc => '';
  dynamic get preview_system_prompts => '';
  dynamic get welcome_message_1 => '';
  dynamic get welcome_message_2 => '';
  dynamic get welcome_message_3 => '';
  dynamic get welcome_message_4 => '';
  dynamic get temporary_chat => '';
  dynamic get temporary_chat_desc => '';
  dynamic get temporary_chat_banner => '';
  dynamic get temporary_chat_save_warning_title => '';
  dynamic get temporary_chat_save_warning_body => '';
  dynamic get save_to_history => '';
  dynamic get share_conversation => '';
  dynamic get download_tts_audio => '';
  dynamic get tts_download_unavailable => '';
  dynamic get tts_download_no_audio => '';
  dynamic get tts_download_success => '';
  dynamic get return_to_chat => '';
  dynamic get return_to_temp_chat => '';
  dynamic get insert_saved_message => '';
  dynamic get insert_saved_message_desc => '';
  dynamic get model_info => '';
  dynamic get model_name => '';
  dynamic get model_identifier => '';
  dynamic get not_available => '';
  dynamic get save_message_folders => '';
  dynamic get remove_from_saved => '';
  dynamic get message_already_saved => '';
  dynamic get stream_ttft => '';
  dynamic get stream_tokens_per_sec => '';
  dynamic get stream_stop_reason => '';
  dynamic get stream_input_tokens => '';
  dynamic get stream_output_tokens => '';
  dynamic get stream_generation_time => '';
  dynamic get attach_image => '';
  dynamic get attach_text_document => '';
  dynamic get add_attachment => '';
  dynamic get photo_permission_denied => '';
  dynamic get characters_label => '';
  dynamic get exit_temporary_chat_title => '';
  dynamic get exit_temporary_chat_body => '';
  dynamic get saved_message_temp_snap_unavailable => '';
  dynamic get filter_title => '';
  dynamic get filter_pinned => '';
  dynamic get filter_archived => '';
  dynamic get filter_temp_chats => '';
  dynamic get filter_user_messages => '';
  dynamic get filter_assistant_messages => '';
  dynamic get archive_chat => '';
  dynamic get unarchive_chat => '';
  dynamic get generate_title_with_ai => '';
  dynamic get generating_title => '';
  dynamic get generate_title_failed => '';
  static dynamic of(dynamic context) => null;
  dynamic delete_model_body(dynamic name) => '';
  dynamic delete_model_body_with_size(dynamic name, dynamic size) => '';
  dynamic delete_voice_body(dynamic name, dynamic size) => '';
  dynamic delete_server_body(dynamic name) => '';
  dynamic delete_conversation_body(dynamic title) => '';
  dynamic delete_persona_title(dynamic name) => '';
  dynamic label_completed(dynamic label) => '';
  dynamic error_with_message(dynamic error) => '';
  dynamic preview_failed(dynamic error) => '';
  dynamic loading_model(dynamic modelId) => '';
  dynamic model_loaded(dynamic modelId, dynamic backend) => '';
  dynamic loading_model_error(dynamic error) => '';
  dynamic tool_label(dynamic toolCallId) => '';
  dynamic character_count(dynamic length) => '';
  dynamic conversation_minutes_ago(dynamic minutes) => '';
  dynamic conversation_hours_ago(dynamic hours) => '';
  dynamic conversation_days_ago(dynamic days) => '';
  dynamic conversation_date(dynamic month, dynamic day, dynamic year) => '';
  dynamic setup_connection_desc(dynamic server) => '';
  dynamic ram_min_required(dynamic fileSize) => '';
  dynamic download_progress(dynamic percent, dynamic speed) => '';
  dynamic eta_label(dynamic eta) => '';
  dynamic paused_progress(dynamic percent) => '';
  dynamic ram_warning_body_download(dynamic ram, dynamic totalMemory) => '';
  dynamic ram_warning_body_load(dynamic availableRAM, dynamic ram) => '';
  dynamic switched_to_server(dynamic name) => '';
  dynamic server_address_format(dynamic host, dynamic port) => '';
  dynamic character_count_max(dynamic currentLen) => '';
  dynamic tts_kitten_desc(dynamic size) => '';
  dynamic tts_piper_desc(dynamic size) => '';
  dynamic engine_spec(dynamic sizeMb, dynamic ramMb, dynamic voiceCount) => '';
  dynamic ram_used(dynamic percent) => '';
  dynamic no_models_match(dynamic searchQuery) => '';
  dynamic model_load_failed(dynamic error) => '';
  dynamic model_unloaded_ollama(dynamic name) => '';
  dynamic model_unloaded_success(dynamic name) => '';
  dynamic model_unload_failed(dynamic error) => '';
  dynamic context_chip(dynamic ctx) => '';
  dynamic loaded_models_count(dynamic count) => '';
  dynamic switch_to_model(dynamic modelName, dynamic model) => '';
  dynamic download_notification_title(dynamic modelName) => '';
  dynamic download_complete_body(dynamic modelName) => '';
  dynamic download_failed_notification(dynamic error) => '';
  dynamic download_failed_body(dynamic modelName) => '';
  dynamic export_header(dynamic date) => '';
  dynamic import_data_failed(dynamic error) => '';
  dynamic token_count(dynamic count) => '';
  dynamic estimated_token_count(dynamic count) => '';
  dynamic tts_skip_seconds_value(dynamic seconds) => '';
  dynamic conversation_message_count(dynamic count) => '';
  dynamic conversation_character_count(dynamic count) => '';
  dynamic get ai_user_response_enabled => '';
  dynamic get ai_user_response_tooltip => '';
  dynamic get delete_builtin_persona_body => '';
  dynamic get restore_builtin_personas => '';
  dynamic get restore_builtin_personas_desc => '';
  dynamic get restore_builtin_personas_success => '';
  dynamic get clear_personas => '';
  dynamic get enable_image_compression => '';
  dynamic get enable_image_compression_desc => '';
  dynamic get image_compression_level => '';
  dynamic get image_compression_level_desc => '';
  dynamic get image_compression_level_low => '';
  dynamic get image_compression_level_medium => '';
  dynamic get image_compression_level_high => '';
  dynamic get sort_models_tooltip => '';
  dynamic get sort_by_favorites => '';
  dynamic get sort_by_name => '';
  dynamic get sort_by_size_smallest => '';
  dynamic get sort_by_size_largest => '';
  dynamic get sort_by_context_length => '';
  dynamic get ai_rename_tooltip => '';
  dynamic get new_chat_in_folder_tooltip => '';
  dynamic get smart_replies_use_persona => '';
  dynamic get smart_replies_use_persona_desc => '';
  dynamic get keep_persona_on_new_chat => '';
  dynamic get keep_persona_on_new_chat_desc => '';
  dynamic get role_swap_button_enabled => '';
  dynamic get role_swap_button_enabled_desc => '';
  dynamic get send_as_user_tooltip => '';
  dynamic get send_as_assistant_tooltip => '';
  dynamic get insert_without_generating_tooltip => '';
  dynamic get token_usage_title => '';
  dynamic get total_tokens_label => '';
  dynamic get usage_percent_label => '';
  dynamic get export_choice_title => '';
  dynamic get export_choice_body => '';
  dynamic get copy_to_clipboard => '';
  dynamic get bulk_ai_rename_confirm_title => '';
  dynamic get sort_by_modified_date => '';
  dynamic get sort_by_created_date => '';
  dynamic get sort_title => '';
  dynamic get ai_user_response_enabled_desc => '';
  dynamic get show_system_messages_desc => '';
  dynamic get show_system_messages_in_chat => '';
  dynamic get show_system_messages_in_chat_desc => '';
  dynamic get manage_personas => '';
  dynamic get personas_combine_hint => '';
  dynamic get temp_chat_keyboard_incognito => '';
  dynamic get temp_chat_keyboard_incognito_desc => '';
  dynamic get resume_last_chat => '';
  dynamic get resume_last_chat_desc => '';
  dynamic get lm_studio_model_browser_title => '';
  dynamic get lm_studio_model_search_hint => '';
  dynamic get lm_studio_staff_picks => '';
  dynamic get lm_studio_community_models => '';
  dynamic get lm_studio_no_models => '';
  dynamic get lm_studio_browse_models => '';
  dynamic get lm_studio_model_search => '';
  dynamic get lm_studio_downloads_title => '';
  dynamic get lm_studio_choose_quant => '';
  dynamic get lm_studio_use_default_quant => '';
  dynamic get lm_studio_recommended => '';
  dynamic get lm_studio_clear_downloads => '';
  dynamic get lm_studio_no_downloads => '';
  dynamic get lm_studio_downloads_disclaimer => '';
  dynamic get lm_studio_staff_pick => '';
  dynamic get lm_studio_params => '';
  dynamic get lm_studio_arch => '';
  dynamic get lm_studio_domain => '';
  dynamic get lm_studio_format => '';
  dynamic get lm_studio_vision => '';
  dynamic get lm_studio_tool_use => '';
  dynamic get lm_studio_reasoning => '';
  dynamic get lm_studio_download_options => '';
  dynamic get lm_studio_download => '';
  dynamic get lm_studio_readme_unavailable => '';
  dynamic get lm_studio_full_gpu_offload => '';
  dynamic get lm_studio_partial_gpu_offload => '';
  dynamic get lm_studio_likely_too_large => '';
  dynamic get lm_studio_available_ram_gb => '';
  dynamic get lm_studio_available_vram_gb => '';
  dynamic get lm_studio_memory_settings_title => '';
  dynamic get lm_studio_memory_settings_desc => '';
  dynamic get think_button_label => '';
  dynamic get reasoning_effort_low => '';
  dynamic get reasoning_effort_medium => '';
  dynamic get reasoning_effort_high => '';
  dynamic bulk_ai_rename_progress(dynamic done, dynamic total) => '';
  dynamic selected_count(dynamic count) => '';
  dynamic total_tokens_count(dynamic count) => '';
  dynamic bulk_export_conversations_success(dynamic count) => '';
  dynamic bulk_ai_rename_confirm_body(dynamic count) => '';
  dynamic lm_studio_models_count(dynamic count) => '';
  dynamic lm_studio_download_size(dynamic size) => '';
  dynamic lm_studio_downloading_percent(dynamic percent) => '';
  dynamic get could_not_read_file => '';
  dynamic get server_offline => '';
  dynamic get could_not_establish_connection => '';
  dynamic get retry_connection => '';
  dynamic get tokens_label => '';
  dynamic get enter_context_length => '';
  dynamic get openrouter_disclosure => '';
  dynamic get welcome_message_cloud => '';
  dynamic get privacy_policy => '';
  dynamic get cloud_sync => '';
  dynamic get cloud_sync_description => '';
  dynamic get cloud_sync_endpoint => '';
  dynamic get cloud_sync_bucket => '';
  dynamic get cloud_sync_region => '';
  dynamic get cloud_sync_prefix => '';
  dynamic get cloud_sync_access_key => '';
  dynamic get cloud_sync_secret_key => '';
  dynamic get cloud_sync_session_token => '';
  dynamic get cloud_sync_passphrase => '';
  dynamic get cloud_sync_confirm_passphrase => '';
  dynamic get cloud_sync_path_style => '';
  dynamic get cloud_sync_allow_http => '';
  dynamic get cloud_sync_http_warning => '';
  dynamic get cloud_sync_test => '';
  dynamic get cloud_sync_enable => '';
  dynamic get cloud_sync_now => '';
  dynamic get cloud_sync_disconnect => '';
  dynamic get cloud_sync_last_synced => '';
  dynamic get cloud_sync_never => '';
  dynamic get cloud_sync_conflicts => '';
  dynamic get cloud_sync_passphrase_mismatch => '';
  dynamic get crash_report_title => '';
  dynamic get crash_report_stack_trace => '';
  dynamic get crash_report_tap_to_expand => '';
  dynamic get crash_report_button => '';
  dynamic get crash_try_again => '';
  dynamic get crash_report_empty_stack => '';
  dynamic get crash_report_disclaimer => '';
  dynamic get crash_report_copied => '';
  dynamic get report_a_problem => '';
  dynamic get rename_folder => '';
  dynamic get delete_folder => '';
  dynamic get delete_folder_title => '';
  dynamic get folder_name_required => '';
  dynamic delete_folder_body(dynamic name) => '';
  dynamic get model_required_toast => '';
  dynamic get connected => '';
  dynamic get checking => '';
}

class ConsumerWidget extends StatelessWidget {
  const ConsumerWidget({super.key});
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}

class HugeIcon extends StatelessWidget {
  const HugeIcon({
    super.key,
    dynamic icon,
    dynamic color,
    dynamic secondaryColor,
    dynamic size,
    dynamic strokeWidth,
  });
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
  dynamic get icon => [];
  dynamic get color => null;
  dynamic get secondaryColor => null;
  dynamic get size => null;
  dynamic get strokeWidth => null;
}

class HugeIconData {
  const HugeIconData(dynamic name, dynamic icon);
  dynamic get name => '';
  dynamic get icon => [];
}

class HugeIcons {
  HugeIcons._();
  static dynamic get strokeRoundedServerStack01 => [];
  static dynamic get strokeRoundedArrowDown01 => [];
}

class Server {
  Server({
    dynamic id,
    dynamic name,
    dynamic type,
    dynamic host,
    dynamic port,
    dynamic apiKey,
    dynamic isDefault,
    dynamic createdAt,
    dynamic lastConnectedAt,
    dynamic status,
    dynamic iconName,
    dynamic pathPrefix,
    dynamic availableRamGb,
    dynamic availableVramGb,
  });
  dynamic get id => '';
  dynamic get name => '';
  dynamic get type => const _Stub();
  dynamic get host => '';
  dynamic get port => 0;
  dynamic get apiKey => null;
  dynamic get isDefault => false;
  dynamic get createdAt => DateTime.fromMillisecondsSinceEpoch(0);
  dynamic get lastConnectedAt => DateTime.fromMillisecondsSinceEpoch(0);
  dynamic get status => ConnectionStatus.connected;
  dynamic get iconName => null;
  dynamic get pathPrefix => null;
  dynamic get apiPathPrefix => '';
  dynamic get baseUrl => '';
  dynamic get authHeaders => <String, String>{};
  dynamic get chatEndpoint => '';
  dynamic get modelsEndpoint => '';
  dynamic get runningModelsEndpoint => '';
  dynamic get loadModelEndpoint => '';
  dynamic get unloadModelEndpoint => '';
  dynamic get isOnDevice => false;
  dynamic get displayAddress => '';
  dynamic copyWith({
    dynamic id,
    dynamic name,
    dynamic type,
    dynamic host,
    dynamic port,
    dynamic apiKey,
    dynamic isDefault,
    dynamic createdAt,
    dynamic lastConnectedAt,
    dynamic status,
    dynamic iconName,
    dynamic pathPrefix,
    dynamic availableRamGb,
    dynamic availableVramGb,
    dynamic clearPathPrefix,
    dynamic clearAvailableRamGb,
    dynamic clearAvailableVramGb,
  }) => Server();
  dynamic get availableRamGb => null;
  dynamic get availableVramGb => null;
  dynamic get modelDetailsEndpoint => '';
}

class WidgetRef {
  WidgetRef();
  dynamic get context => const _Stub();
  dynamic watch<StateT>(dynamic provider) => const _Stub();
  dynamic exists(dynamic provider) => false;
  void listen<StateT>(
    dynamic provider,
    dynamic listener, {
    dynamic onError,
    dynamic weak,
  }) {}
  dynamic listenManual<StateT>(
    dynamic provider,
    dynamic listener, {
    dynamic onError,
    dynamic fireImmediately,
    dynamic weak,
  }) => const _Stub();
  dynamic read<StateT>(dynamic provider) => const _Stub();
  dynamic refresh<StateT>(dynamic provider) => const _Stub();
  void invalidate(dynamic provider, {dynamic asReload}) {}
}

dynamic activeServerProvider = const _Stub();

dynamic connectionStatusProvider = const _Stub();

dynamic getDefaultServerIcon(dynamic serverType) => null;

dynamic getHugeIconByName(dynamic name) => null;

class _Stub {
  const _Stub();

  int get length => 0;
  bool get isEmpty => true;
  bool get isNotEmpty => false;
  Iterator<dynamic> get iterator => const Iterable<dynamic>.empty().iterator;

  dynamic operator [](Object? key) => const _Stub();
  dynamic operator +(Object? other) => const _Stub();
  bool operator <(Object? other) => false;
  bool operator >(Object? other) => false;
  bool operator <=(Object? other) => false;
  bool operator >=(Object? other) => false;

  @override
  bool operator ==(Object other) => other is _Stub;

  @override
  int get hashCode => 0;

  @override
  dynamic noSuchMethod(Invocation invocation) => const _Stub();

  @override
  String toString() => '';
}

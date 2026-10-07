// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class BackupSettingsState {
  final bool isDefaultPhysicalBackupTested;
  final bool isDefaultEncryptedBackupTested;

  const BackupSettingsState({
    this.isDefaultPhysicalBackupTested = false,
    this.isDefaultEncryptedBackupTested = false,
  });
}

// Frozen state fixture — shared by base and all mutations.
const BackupSettingsState fixtureBackupSettingsState = BackupSettingsState();


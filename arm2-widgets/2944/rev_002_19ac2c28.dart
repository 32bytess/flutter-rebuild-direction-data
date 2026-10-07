// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final NetworkShare? editor;

  @override
  void initState() {
    super.initState();
    editor = fixtureEditor;
    _formKey = fixtureFormKey;
    _domainController = fixtureDomainController;
    _usernameController = fixtureUsernameController;
    _passwordController = fixturePasswordController;
    _folderPathController = fixtureFolderPathController;
    _portController = fixturePortController;
    _urlPathController = fixtureUrlPathController;
    _selectedProtocol = fixtureSelectedProtocol;
  }

  late GlobalKey<FormState> _formKey;

  late TextEditingController _domainController;

  late TextEditingController _usernameController;

  late TextEditingController _passwordController;

  late TextEditingController _folderPathController;

  late TextEditingController _portController;

  late TextEditingController _urlPathController;

  late String _selectedProtocol;

  Widget _buildField(
    TextEditingController controller,
    String label, {
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    bool required = true,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          /* spm: non-rebuild body erased */
          throw UnimplementedError();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shareLabel = "FTP";
    return ScaffoldFix(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.type_uploader("FTP")),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _buildField(
              _domainController,
              AppLocalizations.of(context)!.domain,
            ),
            _buildField(
              _usernameController,
              AppLocalizations.of(context)!.username,
              required: false,
            ),
            _buildField(
              _passwordController,
              AppLocalizations.of(context)!.password,
              obscureText: true,
              required: false,
            ),
            _buildField(
              _portController,
              AppLocalizations.of(context)!.port,
              keyboardType: TextInputType.number,
            ),
            _buildField(
              _folderPathController,
              AppLocalizations.of(context)!.remote_folder_path,
            ),

            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: DropdownButtonFormField<String>(
                    value: _selectedProtocol,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.protocol,
                      border: const OutlineInputBorder(),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 8,
                      ),
                    ),
                    items: ['http://', 'https://', 'ftp://', 'ftps://']
                        .map(
                          (protocol) => DropdownMenuItem(
                            value: protocol,
                            child: Text(protocol),
                          ),
                        )
                        .toList(),
                    onChanged: (String? value) {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 5,
                  child: TextFormField(
                    controller: _urlPathController,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.url_path,
                      border: const OutlineInputBorder(),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 8,
                      ),
                    ),
                    validator: (value) {
                      /* spm: non-rebuild body erased */
                      throw UnimplementedError();
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: FilledButton(
                      onPressed: () {
                        /* spm: non-rebuild body erased */
                      },
                      child: Text(AppLocalizations.of(context)!.save),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {
                        /* spm: non-rebuild body erased */
                      },
                      child: Text(AppLocalizations.of(context)!.cancel),
                    ),
                  ),
                ),
                // add test button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: FilledButton(
                      onPressed: () async {
                        /* spm: non-rebuild body erased */
                      },
                      child: Text(AppLocalizations.of(context)!.test),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ScaffoldFix extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final bool resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Drawer? drawer;
  final Drawer? endDrawer;
  final bool extendBody;

  const ScaffoldFix({
    super.key,
    required this.body,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.appBar,
    this.resizeToAvoidBottomInset = true,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.drawer,
    this.endDrawer,
    this.extendBody = false,
  });

  @override
  Widget build(BuildContext context) {
    // final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      extendBody: extendBody,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      drawer: drawer,
      endDrawer: endDrawer,
      body: bottomNavigationBar == null ? SafeArea(child: body) : body,
      bottomNavigationBar: bottomNavigationBar != null
          ? SafeArea(
              child: Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: bottomNavigationBar,
              ),
            )
          : null,
    );
  }
}

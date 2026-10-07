// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    t = tValue;
    ref = fixtureRef;
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(connectProvider);
    final connectionMethod = ConnectionMethod.values[provider.method];
    final connectionString =
        "${connectionMethod.name}://${provider.ipDomainController.text}${provider.portController.text != '' ? ':${provider.portController.text}' : ""}${provider.pathController.text}";
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                t.onboarding.createConnectionSubtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Theme.of(context).colorScheme.primary),
          ),
          child: Text(
            connectionString,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SectionLabel(
          label: t.onboarding.serverDetails,
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 24),
        ),
        SegmentedButtonSlide(
          entries: const [
            SegmentedButtonSlideEntry(label: "HTTP"),
            SegmentedButtonSlideEntry(label: "HTTPS"),
          ],
          selectedEntry: provider.method,
          onChange: ref.read(connectProvider.notifier).setConnectionMethod,
          colors: SegmentedButtonSlideColors(
            barColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            backgroundSelectedColor: Theme.of(context).colorScheme.primary,
            foregroundSelectedColor: Theme.of(context).colorScheme.onPrimary,
            foregroundUnselectedColor: Theme.of(context).colorScheme.onSurface,
            hoverColor: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          textOverflow: TextOverflow.ellipsis,
          fontSize: 14,
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 24),
        ),
        const SizedBox(height: 30),
        TextFormField(
          controller: provider.ipDomainController,
          onChanged: ref.read(connectProvider.notifier).validateIpDomain,
          autocorrect: false,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.link_rounded),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            errorText: provider.ipDomainError,
            labelText: t.onboarding.ipAddressOrDomain,
            helperText: t.onboarding.required,
          ),
        ),
        const SizedBox(height: 24),
        TextFormField(
          controller: provider.portController,
          onChanged: ref.read(connectProvider.notifier).validatePort,
          autocorrect: false,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.tag_rounded),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            errorText: provider.portError,
            labelText: t.onboarding.port,
          ),
        ),
        const SizedBox(height: 24),
        TextFormField(
          controller: provider.pathController,
          onChanged: ref.read(connectProvider.notifier).validatePath,
          autocorrect: false,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.route_rounded),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            errorText: provider.pathError,
            labelText: t.onboarding.path,
          ),
        ),
        SectionLabel(
          label: t.onboarding.authentication,
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 24),
        ),
        TextFormField(
          controller: provider.tokenController,
          onChanged: ref.read(connectProvider.notifier).validateToken,
          autocorrect: false,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.key_rounded),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            errorText: provider.tokenError,
            labelText: t.onboarding.token,
            helperText: t.onboarding.required,
          ),
          obscureText: true,
        ),
        const SizedBox(height: 24),
        ElevatedButton.icon(
          onPressed: ref.watch(connectProvider).validValues == true
              ? () => openUrl(connectionString)
              : null,
          icon: const Icon(Icons.open_in_browser_rounded),
          label: Text(t.onboarding.testConnectionUrl),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

enum ConnectionMethod { http, https }

class SectionLabel extends StatelessWidget {
  final String label;
  final EdgeInsets? padding;

  const SectionLabel({Key? key, required this.label, this.padding})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: padding ?? const EdgeInsets.all(16),
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}





























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.

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
    ref = fixtureRef;
    groupedConversations = fixtureGroupedConversations;
    activeConversation = fixtureActiveConversation;
  }

  late Map<String, List<Conversation>> groupedConversations;

  late Conversation? activeConversation;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final selectionMode = ref.watch(historySelectionModeProvider);
    final selectedIds = ref.watch(historySelectedIdsProvider);
    final sectionOrder = [
      l10n.pinned_section,
      l10n.today_section,
      l10n.yesterday_section,
      l10n.previous_7_days,
      l10n.previous_30_days,
      l10n.older_section,
    ];
    final sortedSections = groupedConversations.keys.toList()
      ..sort((a, b) {
        final aIndex = sectionOrder.indexOf(a);
        final bIndex = sectionOrder.indexOf(b);
        return (aIndex == -1 ? 999 : aIndex).compareTo(
          bIndex == -1 ? 999 : bIndex,
        );
      });
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 8),
      itemCount: sortedSections.length,
      itemBuilder: (context, sectionIndex) {
        final section = sortedSections[sectionIndex];
        final conversations = groupedConversations[section]!;

        if (section == l10n.pinned_section && conversations.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DateSectionHeader(title: section),
            ...conversations.map((conversation) {
              return ConversationTile(
                conversation: conversation,
                isActive: activeConversation?.id == conversation.id,
                selectionMode: selectionMode,
                isSelected: selectedIds.contains(conversation.id),
                onEnterSelectionMode: () {
                  /* spm: non-rebuild body erased */
                },
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
                onRename: () {
                  /* spm: non-rebuild body erased */
                },
                onTogglePin: () {
                  /* spm: non-rebuild body erased */
                },
                onDelete: () {
                  /* spm: non-rebuild body erased */
                },
                onDuplicate: () {
                  /* spm: non-rebuild body erased */
                },
                onMoveToFolder: () {
                  /* spm: non-rebuild body erased */
                },
                onExport: () {
                  /* spm: non-rebuild body erased */
                },
                onArchive: () {
                  /* spm: non-rebuild body erased */
                },
              );
            }),
          ],
        );
      },
    );
  }
}

class DateSectionHeader extends StatelessWidget {
  const DateSectionHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: isDark ? const Color(0xFF666666) : const Color(0xFF999999),
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class ConversationTile extends StatelessWidget {
  const ConversationTile({
    super.key,
    required this.conversation,
    required this.isActive,
    required this.onTap,
    required this.onRename,
    required this.onTogglePin,
    required this.onDelete,
    required this.onDuplicate,
    required this.onMoveToFolder,
    required this.onExport,
    required this.onArchive,
    this.selectionMode = false,
    this.isSelected = false,
    this.onEnterSelectionMode,
  });

  final Conversation conversation;
  final bool isActive;
  final VoidCallback onTap;
  final VoidCallback onRename;
  final VoidCallback onTogglePin;
  final VoidCallback onDelete;
  final VoidCallback onDuplicate;
  final VoidCallback onMoveToFolder;
  final VoidCallback onExport;
  final VoidCallback onArchive;
  final bool selectionMode;
  final bool isSelected;
  final VoidCallback? onEnterSelectionMode;

  String _formatTimestamp(AppLocalizations l10n, DateTime dateTime) {
    final now = DateTime.now();
    final diff = now.difference(dateTime);

    if (diff.inMinutes < 1) {
      return l10n.conversation_just_now;
    } else if (diff.inHours < 1) {
      return l10n.conversation_minutes_ago(diff.inMinutes);
    } else if (diff.inHours < 24) {
      return l10n.conversation_hours_ago(diff.inHours);
    } else if (diff.inDays == 1) {
      return l10n.conversation_yesterday;
    } else if (diff.inDays < 7) {
      return l10n.conversation_days_ago(diff.inDays);
    } else {
      return l10n.conversation_date(
        dateTime.month,
        dateTime.day,
        dateTime.year,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Dismissible(
      key: Key(conversation.id),
      direction: DismissDirection.horizontal,
      background: Container(
        alignment: AlignmentDirectional.centerStart,
        padding: const EdgeInsetsDirectional.only(start: 16),
        color: Colors.blue,
        child: Icon(
          conversation.isArchived
              ? Icons.unarchive_outlined
              : Icons.archive_outlined,
          color: Colors.white,
        ),
      ),
      secondaryBackground: Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsetsDirectional.only(end: 16),
        color: Colors.red,
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      confirmDismiss: (direction) async {
        /* spm: non-rebuild body erased */
        throw UnimplementedError();
      },
      child: Material(
        color: isActive
            ? (isDark
                  ? AppColors.darkAccent.withValues(alpha: 0.2)
                  : AppColors.lightAccent.withValues(alpha: 0.1))
            : Colors.transparent,
        child: InkWell(
          onTap: onTap,
          onLongPress: () {
            /* spm: non-rebuild body erased */
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                if (selectionMode)
                  Checkbox(
                    value: isSelected,
                    onChanged: (_) {
                      /* spm: non-rebuild body erased */
                    },
                  )
                else
                  Icon(
                    conversation.isPinned
                        ? Icons.push_pin
                        : Icons.chat_bubble_outline,
                    size: 20,
                    color: isActive
                        ? (isDark
                              ? AppColors.darkAccent
                              : AppColors.lightAccent)
                        : (isDark
                              ? AppColors.darkMutedText
                              : AppColors.lightMutedText),
                  ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        conversation.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: isActive
                              ? FontWeight.w600
                              : FontWeight.w500,
                          color: isDark
                              ? AppColors.darkPrimaryText
                              : AppColors.lightPrimaryText,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (conversation.lastMessagePreview != null) ...[
                        const SizedBox(height: 2),
                        Text(
                          conversation.lastMessagePreview!,
                          style: TextStyle(
                            fontSize: 12,
                            color: isDark
                                ? AppColors.darkMutedText
                                : AppColors.lightMutedText,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                      const SizedBox(height: 2),
                      Text(
                        [
                          l10n.conversation_message_count(
                            conversation.messageCount,
                          ),
                          l10n.conversation_character_count(
                            conversation.characterCount,
                          ),
                          if (conversation.totalTokenCount != null)
                            l10n.total_tokens_count(
                              conversation.totalTokenCount!,
                            ),
                        ].join(' · '),
                        style: TextStyle(
                          fontSize: 11,
                          color: isDark
                              ? AppColors.darkMutedText
                              : AppColors.lightMutedText,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  _formatTimestamp(l10n, conversation.updatedAt),
                  style: TextStyle(
                    fontSize: 12,
                    color: isDark
                        ? AppColors.darkMutedText
                        : AppColors.lightMutedText,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                  icon: HugeIcon(
                    icon: Icons.circle,
                    size: 18,
                    color: isDark
                        ? AppColors.darkMutedText
                        : AppColors.lightMutedText,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  visualDensity: VisualDensity.compact,
                  tooltip: l10n.options_tooltip,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showContextMenu(
    BuildContext context,
    AppLocalizations l10n,
    bool isDark,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onEnterSelectionMode != null)
                ListTile(
                  leading: const Icon(Icons.checklist_outlined),
                  title: Text(l10n.select),
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
              ListTile(
                leading: Icon(
                  conversation.isPinned
                      ? Icons.push_pin_outlined
                      : Icons.push_pin,
                ),
                title: Text(conversation.isPinned ? l10n.unpin : l10n.pin),
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit_outlined),
                title: Text(l10n.rename),
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              ListTile(
                leading: const Icon(Icons.copy_outlined),
                title: Text(l10n.duplicate_chat),
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              ListTile(
                leading: const Icon(Icons.folder_outlined),
                title: Text(l10n.move_to_folder),
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              ListTile(
                leading: const Icon(Icons.upload_outlined),
                title: Text(l10n.export_conversation),
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              ListTile(
                leading: Icon(
                  conversation.isArchived
                      ? Icons.unarchive_outlined
                      : Icons.archive_outlined,
                ),
                title: Text(
                  conversation.isArchived
                      ? l10n.unarchive_chat
                      : l10n.archive_chat,
                ),
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete_outline, color: Colors.red),
                title: Text(
                  l10n.delete,
                  style: const TextStyle(color: Colors.red),
                ),
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.

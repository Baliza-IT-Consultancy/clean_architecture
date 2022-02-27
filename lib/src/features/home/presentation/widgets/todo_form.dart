import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/configs/app_configs.dart';
import '../../../../core/constants/constraints/constraints.dart';
import '../../../../core/utils/validators/validator.dart';
import '../../domain/dtos/todo_dtos.dart';
import '../../domain/entities/todo.dart';
import '../blocs/todo_bloc/todo_bloc.dart';

/// {@template todo_form_view}
/// A form widget to create or update a [Todo].
///
/// if [Todo] is provided this form will update the [Todo]
/// on submission else it will create a new [Todo].
///
/// [Todo.completed] can only be changed on update.
///
/// Note: This [Widget] depends on [TodoBloc] for its operations
/// make sure [TodoBloc] is in [BuildContext] before using this [Widget].
/// {@endtemplate}
class TodoFormView extends StatefulWidget {
  /// {@macro todo_form_view}
  const TodoFormView({
    Key? key,
    this.todo,
  }) : super(key: key);

  /// The [Todo] to edit.
  ///
  /// If null, a new [Todo] will be created on form submission.
  final Todo? todo;

  @override
  _TodoFormViewState createState() => _TodoFormViewState();
}

class _TodoFormViewState extends State<TodoFormView> {
  bool get isForUpdate => widget.todo != null;

  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late bool _isCompleted;

  @override
  void initState() {
    _titleController = TextEditingController(
      text: widget.todo?.title,
    );
    _descriptionController = TextEditingController(
      text: widget.todo?.description,
    );
    _isCompleted = widget.todo?.completed ?? false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final action =
        widget.todo == null ? localization.createTodo : localization.updateTodo;

    return Padding(
      padding: const EdgeInsets.all(AppConstraints.mediumSpace),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: AppConstraints.maxTextFieldWidth,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  action,
                  style: textTheme.headline5,
                ),
                const Spacer(),
                const CloseButton(),
              ],
            ),
            const Divider(),
            const Gap(AppConstraints.mediumSpace),
            Form(
              child: Builder(
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        autofocus: true,
                        controller: _titleController,
                        decoration: InputDecoration(
                          labelText: localization.todoTitle,
                        ),
                        textInputAction: TextInputAction.next,
                        validator: const FormValidator(
                          [
                            MaximumLengthValidator(
                              maxLength: AppConstraints.maxTodoTitleLength,
                            ),
                          ],
                        ),
                      ),
                      const Gap(AppConstraints.mediumSpace),
                      Flexible(
                        child: TextFormField(
                          controller: _descriptionController,
                          decoration: InputDecoration(
                            labelText: localization.todoDescription,
                          ),
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted:
                              isForUpdate ? null : (_) => _submit(context),
                          minLines: 5,
                          maxLines: 8,
                          validator: const FormValidator(
                            [
                              RequiredValidator(),
                              MaximumLengthValidator(
                                maxLength:
                                    AppConstraints.maxTodoDescriptionLength,
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (isForUpdate) ...[
                        const Gap(AppConstraints.mediumSpace),
                        SwitchListTile(
                          value: _isCompleted,
                          onChanged: onIsCompletedSwitchChanged,
                          title: Text(localization.isTodoCompleted),
                        )
                      ],
                      const Gap(AppConstraints.mediumSpace),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: _cancel,
                            child: Text(localization.cancel),
                          ),
                          ElevatedButton(
                            onPressed: () => _submit(context),
                            child: Text(action),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _submit(BuildContext context) {
    final formState = Form.of(context)!;
    if (formState.validate()) {
      final todo = TodoDTO(
        id: isForUpdate ? widget.todo!.id : null,
        title: _titleController.text.trim(),
        description: _descriptionController.text.trim(),
        completed: _isCompleted,
      );

      if (isForUpdate) {
        context.read<TodoBloc>().add(TodoEvent.updateTodo(todo));
      } else {
        context.read<TodoBloc>().add(TodoEvent.addTodo(todo));
      }

      Navigator.pop(context, todo);
    }
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void onIsCompletedSwitchChanged(bool value) {
    setState(() {
      _isCompleted = value;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}

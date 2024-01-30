import 'package:first_page/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UI ?',
    [
      'Widget',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'how are Flutter UI build ?',
      ['By combining widgets in the code',
        'By combining widgets in visual editor',
        'By defining widgets in configure file',
        'By using Xcode for IOS and Android studio for android'
      ],  ),
  QuizQuestion(
    'What is the purpose of StatefulWidget?',
    ['Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depends on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often : StatefulWidget or StatelessWidget ?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget ?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data in a StatefulWidget ?',
    [
      'By calling setState() ',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];

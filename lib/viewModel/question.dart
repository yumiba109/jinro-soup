import 'package:jinro_soup/model/question.dart';
import 'package:jinro_soup/state/question.dart';
import 'package:state_notifier/state_notifier.dart';

class QuestionViewModel extends StateNotifier<QuestionState> {
  QuestionViewModel() : super(const QuestionState()) {
    initialQuestionList();
  }

  void initialQuestionList() {
    final newList = [Question('テスト問題', 'テスト回答')];
    state = state.copyWith(questionList: newList);
  }
}

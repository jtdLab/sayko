part of '../assessment.dart';

enum AssessmentAxis { stress, sleep, self, focus, relations, body }

class AssessmentQuestion {
  const AssessmentQuestion(this.id, this.axis, this.text);
  final int id;
  final AssessmentAxis axis;
  final String text;
}

const assessmentQuestions = <AssessmentQuestion>[
  AssessmentQuestion(1, AssessmentAxis.stress,
      "Lately, I've felt tense or unable to switch off."),
  AssessmentQuestion(2, AssessmentAxis.sleep,
      'I struggle to fall asleep or stay asleep.'),
  AssessmentQuestion(3, AssessmentAxis.self,
      "I'm hard on myself when things don't go well."),
  AssessmentQuestion(4, AssessmentAxis.focus,
      'I find it difficult to concentrate on what matters.'),
  AssessmentQuestion(5, AssessmentAxis.relations,
      'I bring tension home from work or other relationships.'),
  AssessmentQuestion(6, AssessmentAxis.self,
      'I trust my ability to handle what comes my way.'),
  AssessmentQuestion(7, AssessmentAxis.stress,
      'Small setbacks affect my mood for the rest of the day.'),
  AssessmentQuestion(8, AssessmentAxis.body,
      'I notice physical tension — jaw, shoulders, chest.'),
  AssessmentQuestion(9, AssessmentAxis.sleep, 'I wake up feeling rested.'),
  AssessmentQuestion(10, AssessmentAxis.focus,
      'My thoughts race when I try to slow down.'),
  AssessmentQuestion(11, AssessmentAxis.relations,
      'I feel safe expressing what I really need to those close to me.'),
  AssessmentQuestion(12, AssessmentAxis.self,
      'I can be present with myself without distraction.'),
  AssessmentQuestion(13, AssessmentAxis.stress,
      'I worry about things I cannot control.'),
  AssessmentQuestion(14, AssessmentAxis.body,
      'I take time to notice how my body feels.'),
  AssessmentQuestion(15, AssessmentAxis.focus,
      'I follow through on things that matter to me.'),
  AssessmentQuestion(16, AssessmentAxis.relations,
      'Conflict with people I love stays with me for days.'),
];

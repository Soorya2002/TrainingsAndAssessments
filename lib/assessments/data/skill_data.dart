import 'package:trainings_and_assessments/assessments/model/skill_category.dart';

class SkillData {
  static List<SkillCategory> getSkillCategories() {
    return [
      SkillCategory(
        title: "Technical Skills",
        skills: [
          Skill(
            subtitle: "Basic Computer Literacy",
            points: [
              "Familiarity with using a computer, navigating operating systems (Windows, macOS, Linux), and using common software (browsers, word processors, etc.) is essential."
            ],
          ),
          Skill(
            subtitle: "Logical Thinking",
            points: [
              "The ability to break down problems into logical steps and think algorithmically is crucial for programming."
            ],
          ),
          Skill(
            subtitle: "Optional (but Beneficial)",
            points: [
              "Prior Programming Experience: While not strictly necessary, some experience with another programming language can be helpful in understanding core programming concepts."
            ],
          ),
        ],
      ),
      SkillCategory(
        title: "Soft Skills",
        skills: [
          Skill(
            subtitle: "Problem-Solving Skills",
            points: [
              "The ability to identify problems, analyze them, and develop solutions is essential for any programmer."
            ],
          ),
          Skill(
            subtitle: "Analytical Thinking",
            points: [
              "Being able to break down complex tasks into smaller, manageable steps is important for successful coding."
            ],
          ),
          Skill(
            subtitle: "Attention to Detail",
            points: [
              "Python relies heavily on proper syntax and structure. A keen eye for detail will help you write error-free code."
            ],
          ),
          Skill(
            subtitle: "Motivation and Self-Discipline",
            points: [
              "Learning to code takes time and effort. Being self-motivated and disciplined will help you stay on track and achieve your goals."
            ],
          ),
        ],
      ),
      SkillCategory(
        title: "Additional Tips",
        skills: [
          Skill(
            subtitle: "Interest in Python and its Applications",
            points: [
              "Having a genuine interest in Python and the various fields it's used in (web development, data science, etc.) will make the learning process more enjoyable and engaging."
            ],
          ),
          Skill(
            subtitle: "Basic Math Skills",
            points: [
              "A solid understanding of basic mathematical concepts like arithmetic, algebra, and logic will be helpful for certain aspects of Python programming.",
              "A solid understanding of basic mathematical concepts like arithmetic."
            ],
          ),
        ],
      ),
    ];
  }
}

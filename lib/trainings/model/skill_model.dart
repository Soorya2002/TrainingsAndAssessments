class SkillCategory {
  final String title;
  final List<Skill> skills;

  SkillCategory({required this.title, required this.skills});
}

class Skill {
  final String subtitle;
  final List<String> points;

  Skill({required this.subtitle, required this.points});
}

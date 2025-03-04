enum DayOfWeek {
  monday(displayValue: '月'),
  tuesday(displayValue: '火'),
  wednesday(displayValue: '水'),
  thursday(displayValue: '木'),
  friday(displayValue: '金'),
  saturday(displayValue: '土'),
  sunday(displayValue: '日');

  const DayOfWeek({required this.displayValue});

  final String displayValue;
}

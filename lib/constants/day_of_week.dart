enum DayOfWeek {
  monday(value: 1 << 0, weekdayIndex: 1, displayValue: '月'),
  tuesday(value: 1 << 1, weekdayIndex: 2, displayValue: '火'),
  wednesday(value: 1 << 2, weekdayIndex: 3, displayValue: '水'),
  thursday(value: 1 << 3, weekdayIndex: 4, displayValue: '木'),
  friday(value: 1 << 4, weekdayIndex: 5, displayValue: '金'),
  saturday(value: 1 << 5, weekdayIndex: 6, displayValue: '土'),
  sunday(value: 1 << 6, weekdayIndex: 7, displayValue: '日');

  const DayOfWeek({
    required this.value,
    required this.weekdayIndex,
    required this.displayValue,
  });

  final int value;
  final int weekdayIndex;
  final String displayValue;
}

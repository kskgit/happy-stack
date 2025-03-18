enum DayOfWeek {
  monday(value: 1 << 0, displayValue: '月'),
  tuesday(value: 1 << 1, displayValue: '火'),
  wednesday(value: 1 << 2, displayValue: '水'),
  thursday(value: 1 << 3, displayValue: '木'),
  friday(value: 1 << 4, displayValue: '金'),
  saturday(value: 1 << 5, displayValue: '土'),
  sunday(value: 1 << 6, displayValue: '日');

  const DayOfWeek({required this.value, required this.displayValue});

  final int value;
  final String displayValue;
}

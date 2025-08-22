import 'dart:io';

// Allowed Status for job applications
const List<String> AllowedStatus = ['Applied', 'Interview Scheduled', 'Hired', 'Rejected'];

// Prompt Function that will show output to the user and read input
String prompt(String label) {
  stdout.write(label);
  return stdin.readLineSync()?.trim() ?? '';
}

final List<Map<String, String>> applications = [];

// Function to read a non-empty string from the user
String readNonEmpty(String label) {
  while (true) {
    final v = prompt(label);
    if (v.isNotEmpty) return v;
    print('Value cannot be empty. Try again.');
  }
}

int readIntInRange(String label, int min, int max) {
  while (true) {
    final raw = prompt(label);
    final n = int.tryParse(raw);
    if (n != null && n >= min && n <= max) return n;
    print('Enter a number between $min and $max.');
  }
}

String readDateYMD(String label) {
  final re = RegExp(r'^\d{4}-\d{2}-\d{2}$'); // yyyy-mm-dd
  while (true) {
    final v = prompt(label);
    if (re.hasMatch(v)) return v;
    print('Use format YYYY-MM-DD, e.g., 2025-08-20');
  }
}

String pickStatus() {
  print('\nSelect Status:');
  for (var i = 0; i < AllowedStatus.length; i++) {
    print('${i + 1}) ${AllowedStatus[i]}');
  }
  final idx = readIntInRange('Enter 1-${AllowedStatus.length}: ', 1, AllowedStatus.length);
  return AllowedStatus[idx - 1];
}

void addApplication() {
  final company = readNonEmpty('Company: ');
  final title = readNonEmpty('Job Title: ');
  final date = readDateYMD('Application Date (YYYY-MM-DD): ');
  final status = pickStatus();

  applications.add({
    'company': company,
    'title': title,
    'date': date,
    'status': status,
  });

  print('Added successfully.');
}

void viewAll() {
  if (applications.isEmpty) {
    print('No applications yet.');
    return;
  }
  print('\n# | Company              | Title                 | Date       | Status');
  print('---+----------------------+----------------------+------------+---------------------');
  for (var i = 0; i < applications.length; i++) {
    final a = applications[i];
    print(
      '${(i + 1).toString().padLeft(2)} | '
      '${a['company']!.padRight(20)} | '
      '${a['title']!.padRight(20)} | '
      '${a['date']!.padRight(10)} | '
      '${a['status']}'
    );
  }
}


void _printResults(List<Map<String, String>> list) {
  if (list.isEmpty) {
    print('No matches found.');
    return;
  }
  print('\nMatches:');
  print('# | Company              | Title                 | Date       | Status');
  print('---+----------------------+----------------------+------------+---------------------');
  for (var i = 0; i < list.length; i++) {
    final a = list[i];
    print(
      '${(i + 1).toString().padLeft(2)} | '
      '${a['company']!.padRight(20)} | '
      '${a['title']!.padRight(20)} | '
      '${a['date']!.padRight(10)} | '
      '${a['status']}'
    );
  }
}


void searchMenu() {
  print('\nSearch by: 1) Company  2) Status');
  final c = readIntInRange('Choose 1-2: ', 1, 2);
  if (c == 1) {
    final q = readNonEmpty('Company contains: ').toLowerCase();
    final results = applications.where((a) => a['company']!.toLowerCase().contains(q)).toList();
    _printResults(results);
  } else {
    final status = pickStatus();
    final results = applications.where((a) => a['status'] == status).toList();
    _printResults(results);
  }
}


void updateStatus() {
  if (applications.isEmpty) {
    print('Nothing to update.');
    return;
  }
  viewAll();
  final idx = readIntInRange('\nEnter # to update: ', 1, applications.length);
  final newStatus = pickStatus();
  applications[idx - 1]['status'] = newStatus;
  print('✅ Updated.');
}


void deleteApplication() {
  if (applications.isEmpty) {
    print('Nothing to delete.');
    return;
  }
  viewAll();
  final idx = readIntInRange('\nEnter # to delete: ', 1, applications.length);
  final removed = applications.removeAt(idx - 1);
  print('🗑️ Deleted "${removed['company']}" - "${removed['title']}".');
}

void showStats() {
  final total = applications.length;
  final byStatus = <String, int>{ for (final s in AllowedStatus) s: 0 };
  for (final a in applications) {
    final s = a['status']!;
    byStatus[s] = (byStatus[s] ?? 0) + 1;
  }
  print('\n=== Statistics ===');
  print('Total applications: $total');
  for (final s in AllowedStatus) {
    print('- ${s.padRight(20)}: ${byStatus[s]}');
  }
}

void main() {
  while (true) {
    print('\n=== Job Application Tracker ===');
    print('1) Add Application');
    print('2) View All');
    print('3) Search');
    print('4) Update Status');
    print('5) Delete Application');
    print('6) Statistics');
    print('7) Exit');

    final choice = readIntInRange('Choose an option: ', 1, 7);

    switch (choice) {
      case 1: addApplication(); break;
      case 2: viewAll(); break;
      case 3: searchMenu(); break;
      case 4: updateStatus(); break;
      case 5: deleteApplication(); break;
      case 6: showStats(); break;
      case 7: print('Goodbye!'); return;
    }
  }
}
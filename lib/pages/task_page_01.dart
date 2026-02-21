import 'package:flutter/material.dart';

class TaskPage1 extends StatelessWidget {
  const TaskPage1({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFF1F2A44);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            _buildHeader(),
            const SizedBox(height: 20),
            _buildMonthSelector(),
            const SizedBox(height: 20),
            _buildDaysSelector(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  TaskItem(
                    timeStart: "10 am",
                    timeEnd: "02 pm",
                    title: "Web Design",
                    subtitle: "Client project",
                    status: "Completed",
                    progress: 1.0,
                    cardColor: Color(0xFFAED581),
                  ),
                  SizedBox(height: 30),
                  TaskItem(
                    timeStart: "03 pm",
                    timeEnd: "04 pm",
                    title: "Family Program",
                    subtitle: "Family task",
                    status: "Rejected",
                    progress: 0.0,
                    cardColor: Color(0xFF4DD0E1),
                  ),
                  SizedBox(height: 30),
                  TaskItem(
                    timeStart: "06 pm",
                    timeEnd: "08 pm",
                    title: "Market Research",
                    subtitle: "Company task",
                    status: "Running",
                    progress: 0.72,
                    cardColor: Color(0xFFD1C4E9),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.arrow_back_ios, color: Colors.white),
          Text(
            "My Tasks",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
    );
  }

  Widget _buildMonthSelector() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            "January 2023",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
          Icon(Icons.keyboard_arrow_down, color: Colors.greenAccent),
        ],
      ),
    );
  }

  Widget _buildDaysSelector() {
    final days = [
      {"day": "10", "label": "Mon"},
      {"day": "11", "label": "Tue"},
      {"day": "12", "label": "Wed"},
      {"day": "13", "label": "Thu"},
      {"day": "14", "label": "Fri"},
    ];

    return SizedBox(
      height: 90,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final isSelected = index == 2;

          return Container(
            width: 70,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFFAED581) : const Color(0xFF2C3A57),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  days[index]["day"]!,
                  style: TextStyle(
                    color: isSelected ? Colors.black : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  days[index]["label"]!,
                  style: TextStyle(
                    color: isSelected ? Colors.black54 : Colors.white70,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 15),
        itemCount: days.length,
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String timeStart;
  final String timeEnd;
  final String title;
  final String subtitle;
  final String status;
  final double progress;
  final Color cardColor;

  const TaskItem({
    super.key,
    required this.timeStart,
    required this.timeEnd,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.progress,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          child: Column(
            children: [
              Text(
                timeStart,
                style: const TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 40),
              Container(
                height: 40,
                width: 1,
                color: Colors.white24,
              ),
              const SizedBox(height: 40),
              Text(
                timeEnd,
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.checklist, color: Colors.black),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(subtitle),
                        ],
                      ),
                    ),
                    const Icon(Icons.more_vert),
                  ],
                ),
                const SizedBox(height: 15),
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.black12,
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
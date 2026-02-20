import 'package:flutter/material.dart';


class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF667eea),
              Color(0xFF764ba2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                buildMenuButton(
                  context,
                  "Login Page 01",
                  Icons.star,
                  "/login1",

                ),

                SizedBox(height: 20),

                buildMenuButton(
                  context,
                  "Login Page 02",
                  Icons.favorite,
                  "/login2",
                ),

                SizedBox(height: 20),

                buildMenuButton(
                  context,
                  "Register Page 01",
                  Icons.settings,
                  "/register1",
                ),

                SizedBox(height: 20),

                buildMenuButton(
                  context,
                  "Register Page 02",
                  Icons.settings,
                  "/register2",
                ),

                SizedBox(height: 20),

                buildMenuButton(
                  context,
                  "Content Page 01",
                  Icons.account_tree_outlined,
                  "/content1",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuButton(
      BuildContext context,
      String title,
      IconData icon,
      String route,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Color(0xFF764ba2)),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF764ba2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- PAGINE DESTINAZIONE ----------------

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina 1")),
      body: Center(
        child: Text(
          "Questa è la Pagina 1 ⭐",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina 2")),
      body: Center(
        child: Text(
          "Questa è la Pagina 2 ❤️",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina 3")),
      body: Center(
        child: Text(
          "Questa è la Pagina 3 ⚙️",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
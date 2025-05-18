import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_design/responsive.dart';
import 'data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "মডিউল ১০ এর অ্যাসাইনমেন্ট",
          style: GoogleFonts.hindSiliguri(
            fontWeight: FontWeight.bold,
            fontSize: Responsive.isMobile(context) ? 18 : 24,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.close, color: Colors.black, size: 24),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2),
          child: Container(
            color: Colors.grey.shade400,
            height: 2,
            width: double.infinity, // ensures full width
          ),
        ),
      ),

        body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                Responsive.isMobile(context)
                    ? 2
                    : Responsive.isTablet(context)
                    ? 3
                    : 4,
            mainAxisExtent: Responsive.isMobile(context) ? 260 : 380,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image.asset(
                      item.imagePath,
                      width: double.infinity,
                      height: Responsive.isMobile(context) ? 120 : 230,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: Responsive.isMobile(context) ? 12 : 18,
                              color: Colors.orange,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${item.sets} সিট বাকি',
                              style: GoogleFonts.hindSiliguri(
                                fontWeight: FontWeight.normal,
                                fontSize:
                                    Responsive.isMobile(context) ? 12 : 18,
                                color: Colors.black, // optional
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 12),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: Responsive.isMobile(context) ? 12 : 18,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${item.days} দিন বাকি',
                              style: GoogleFonts.hindSiliguri(
                                fontWeight: FontWeight.normal,
                                fontSize:
                                    Responsive.isMobile(context) ? 12 : 18,
                                color: Colors.black, // optional
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1, color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      top: 8,
                      bottom: 8,
                    ),
                    child: Text(
                      item.title,
                      style: GoogleFonts.hindSiliguri(
                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.isMobile(context) ? 18 : 24,
                        color: Colors.black, // optional
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        foregroundColor: Colors.black,
                        minimumSize: Size.fromHeight(40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "বিস্তারিত দেখি",
                            style: GoogleFonts.hindSiliguri(
                              fontWeight: FontWeight.bold,
                              fontSize: Responsive.isMobile(context) ? 13 : 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward, size: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF1C2838),
        child: Padding(
          padding: EdgeInsets.all(25),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade300,
              foregroundColor: Colors.black,
              minimumSize: Size.fromHeight(
                Responsive.isMobile(context) ? 40 : 50,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              "SUBMIT ASSIGNMENT",
              style: GoogleFonts.hindSiliguri(
                fontWeight: FontWeight.bold,
                fontSize: Responsive.isMobile(context) ? 18 : 24,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

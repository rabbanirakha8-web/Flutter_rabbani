import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100, 
      body: Column(
        children: [
        
          Container(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(30), 
              ),
            
              boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent,
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Profile", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold,))                     
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                
                Container(
                  padding: const EdgeInsets.all(3), 
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey,
                    backgroundImage: const NetworkImage(
                    'https://media.licdn.com/dms/image/v2/D5603AQF48h6pdZ7pGw/profile-displayphoto-scale_100_100/B56aCa9yRcGcAc-/0/1789306285846?e=1795046400&v=beta&t=jkfL2zt5Jo4On8G5ghXanAftVNOAWL34VH9nSaUNgq4', // Ganti dengan link foto aslimu di sini
                     ),

                     
                  
                  ),
                ),
                const SizedBox(height: 12),

                const Text(
                  "Rakha Rabbani",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 4),

                const Text(
                  "Software Engineering Student",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
                const SizedBox(height: 20),

                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        Text("15", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                        Text("Projects", style: TextStyle(color: Colors.white70, fontSize: 12)),
                      ],
                    ),
                     Divider(indent: 70, endIndent: 20, height: 1,),
                    
                    const Column(
                      children: [
                        Text("320", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                        Text("Commits", style: TextStyle(color: Colors.white70, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

        
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 10),
                children: const [
                  
                 
                  ListTile(
                    leading: Icon(Icons.email_outlined, color: Colors.grey),
                    title: Text("Email", style: TextStyle(fontSize: 12, color: Colors.grey)),
                    subtitle: Text("rakha.rabbani@example.com", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                  Divider(indent: 70, endIndent: 20, height: 1, color: Colors.black12), 

  
                  ListTile(
                    leading: Icon(Icons.phone_android_outlined, color: Colors.grey),
                    title: Text("Mobile / Device", style: TextStyle(fontSize: 12, color: Colors.grey)),
                    subtitle: Text("POCO X5 Pro 5G", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                  Divider(indent: 70, endIndent: 20, height: 1, color: Colors.black12),

                  ListTile(
                    leading: Icon(Icons.tiktok, color: Colors.grey),
                    title: Text("Tik tok", style: TextStyle(fontSize: 12, color: Colors.grey)),
                    subtitle: Text("Rabbani asli", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                  Divider(indent: 70, endIndent: 20, height: 1, color: Colors.black12),

                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.linkedin, color: Colors.grey),
                    title: Text("Linkedin", style: TextStyle(fontSize: 12, color: Colors.grey)),
                    subtitle: Text(" Rakha Rabbani ", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                  Divider(indent: 70, endIndent: 20, height: 1, color: Colors.black12),

                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.instagram, color: Colors.grey),
                    title: Text("Instagram", style: TextStyle(fontSize: 12, color: Colors.grey)),
                    subtitle: Text(" Rakha Setengah Mateng ", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                  
             
             
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
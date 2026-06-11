# UrbanFireWatch 📱🔥

> **Tech for Good:** A real-time mobile crowd-sourcing application designed to report and monitor urban wildfires, accelerating emergency response and mapping environmental risk zones.

[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-blue?style=flat-square)](#)
[![Framework](https://img.shields.io/badge/Framework-FlutterFlow%20%2F%20Flutter-02569B?style=flat-square&logo=flutter)](#)
[![Backend](https://img.shields.io/badge/Backend-Firebase-FFCA28?style=flat-square&logo=firebase&logoColor=black)](#)

---

## 📌 Context & Problem Statement

Urban wildfires represent a growing critical threat to public health, biodiversity, and urban infrastructure. Traditional reporting methods (such as phone calls) often suffer from delays, lack of visual context, and imprecise location data, slowing down fire department dispatch times. 

**UrbanFireWatch** bridges this gap by empowering citizens to become active sensors in environmental defense, providing authorities with instantaneous, data-rich incident notifications.

---

## 💡 The Solution

The application allows users to report fire outbreaks in seconds. By capturing the user’s exact geographical coordinates and allowing media attachments, the platform centralizes data into a real-time monitoring dashboard, enabling faster mitigation and historical data mapping for risk prevention.

### Core Features
- **Real-Time Geolocation Incident Capture:** Automatically fetches coordinates using GPS to ensure pinpoint accuracy for responders.
- **Media-Rich Reporting:** Users can take and upload photos of the outbreak to help assess the severity of the fire.
- **NoSQL Real-Time Sync:** Data is immediately synchronized from the client app to the cloud backend.
- **Secure Authentication:** Integrated user authentication to ensure data accountability and reduce fake reports.

---

## 🛠️ System Architecture & Tech Stack

The system utilizes a modern, serverless cloud architecture tailored for rapid deployment and high availability.

### Frontend (Mobile)
- **FlutterFlow & Flutter (Dart):** Chosen for cross-platform efficiency (Android & iOS) and fast UI prototyping, maintaining smooth performance.

### Backend (Cloud Services)
- **Firebase Authentication:** Handles secure user onboarding and sign-ins.
- **Cloud Firestore (NoSQL):** Stores incident logs, geolocation coordinates, and timestamps with real-time listeners.
- **Firebase Cloud Storage:** Hosts images uploaded by users with optimized security rules.

---

## 📂 Project Structure

```text
├── android/           # Native Android configurations
├── ios/               # Native iOS configurations
├── lib/               # Core application views, logic, and custom Dart actions
├── firebase/          # Firebase configuration and cloud setup
├── assets/            # Application icons and media assets
└── pubspec.yaml       # Project dependencies and packages

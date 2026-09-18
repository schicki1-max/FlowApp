#!/bin/bash
echo "🚀 PRÜFE STORE-READINESS..."
grep -q "com.example" android/app/build.gradle 2>/dev/null && echo "❌ Standard Package-Name (com.example)!" || echo "✅ Package Name OK"
grep -q "NSCameraUsageDescription" ios/Runner/Info.plist 2>/dev/null && echo "✅ Kamera-Rechte OK" || echo "⚠️ Kamera-Rechte fehlen in Info.plist!"
echo "ℹ️ Version: $(grep "version:" pubspec.yaml 2>/dev/null | head -n 1)"

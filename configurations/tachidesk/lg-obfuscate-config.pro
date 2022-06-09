-injars app.jar
-out    app-lg-obfuscate.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/conscrypt-openjdk-uber-2.5.2.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/ant-1.10.12.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/javax.mail.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/disruptor-4.0.0.RC1.jar
-libraryjars /home/heckej/JetBrains/lib/annotations.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/jansi-2.1.0.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/osgi.core-8.0.0.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/jackson-annotations-2.13.2.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/org.osgi.framework-1.10.0.jar
-libraryjars <java.home>/jmods/jdk.unsupported.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.instrument.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.base.jmod(!**.jar;!module-info.class)
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/commons-csv-1.9.0.jar
-libraryjars /home/heckej/android/sdk/platforms/android-31/android.jar
-libraryjars <java.home>/jmods/java.management.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.desktop.jmod(!**.jar;!module-info.class)
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/animal-sniffer-maven-plugin-1.21.jar
-libraryjars <java.home>/jmods/java.datatransfer.jmod(!**.jar;!module-info.class)
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/bcprov-jdk15on-1.70.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/org.osgi.core-6.0.0.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/tachidesk/lib/jackson-core-2.13.2.jar

-dontwarn org.slf4j.**

-keep class org.jetbrains.ski** {
    *;
}

-keep public class ca.gosyer.MainKt {
    public static void main(java.lang.String[]);
}

-include library.pro.rules
-include dontwarn.rules
-include r8-dontwarn.rules
-include keep.rules
-mergekotlinlambdaclasses
-mergelambdaclasseswithunexpectedmethods
-dontoptimize
-dontshrink
-verbose
-injars app.jar
-out    app-shrink-lg.jar
-libraryjars <java.home>/jmods/jdk.unsupported.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.management.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.instrument.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.desktop.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.datatransfer.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.base.jmod(!**.jar;!module-info.class)
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/issuesviewer/lib/animal-sniffer.jar
-libraryjars /home/heckej/JetBrains/lib/annotations.jar
-libraryjars /mnt/back-up/Laptop-Joren/d/Master-CS-projects/masterproef/new-evaluation/issuesviewer/lib/conscrypt.jar
-libraryjars /home/heckej/android/sdk/platforms/android-31/android.jar

-dontwarn org.slf4j.**

-keep class org.jetbrains.ski** {
    *;
}

-keep public class androidx.ui.examples.jetissues.MainKt {
    public static void main(java.lang.String[]);
}

-include dontwarn.rules
-include r8-dontwarn.rules
-include keep.rules
-printlambdagroupmapping lambdagroups-shrink.txt
-mergekotlinlambdaclasses
-mergelambdaclasseswithunexpectedmethods
-dontoptimize
-dontobfuscate
-verbose
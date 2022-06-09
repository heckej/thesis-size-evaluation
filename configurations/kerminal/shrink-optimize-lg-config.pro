-injars app.jar
-out    app-shrink-optimize-lg.jar
-libraryjars <java.home>/jmods/jdk.unsupported.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.management.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.instrument.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.desktop.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.datatransfer.jmod(!**.jar;!module-info.class)
-libraryjars <java.home>/jmods/java.base.jmod(!**.jar;!module-info.class)
-libraryjars /home/heckej/JetBrains/lib/annotations.jar
-libraryjars /home/heckej/android/sdk/platforms/android-31/android.jar

-dontwarn org.slf4j.**

-keep class org.jetbrains.ski** {
    *;
}

-keep public class Main {
    public static void main(java.lang.String[]);
}

-include dontwarn.rules
-include keep.pro.rules
-include r8-dontwarn.rules
-include keep.rules
-printlambdagroupmapping lambdagroups-optimize.txt
-mergekotlinlambdaclasses
-lambdamergingafteroptimizing
-mergelambdaclasseswithunexpectedmethods
-dontobfuscate
-verbose
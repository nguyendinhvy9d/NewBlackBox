.class public interface abstract Lvanta/com/android/internal/content/NativeLibraryHelperStatic;
.super Ljava/lang/Object;
.source "NativeLibraryHelperStatic.java"


# annotations
.annotation runtime Lvanta/nomadengine/annotation/BClassNameNotProcess;
    value = "com.android.internal.content.NativeLibraryHelper"
.end annotation


# virtual methods
.method public abstract _check_copyNativeBinaries(Lvanta/com/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract _check_findSupportedAbi(Lvanta/com/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)Ljava/lang/reflect/Method;
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "[Ljava.lang.String;"
        .end annotation
    .end param
    .annotation runtime Lvanta/nomadengine/annotation/BMethodCheckNotProcess;
    .end annotation
.end method

.method public abstract copyNativeBinaries(Lvanta/com/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract findSupportedAbi(Lvanta/com/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)Ljava/lang/Integer;
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "[Ljava.lang.String;"
        .end annotation
    .end param
.end method

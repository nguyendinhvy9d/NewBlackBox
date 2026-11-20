.class public interface abstract Lvanta/com/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvanta/com/android/internal/content/NativeLibraryHelper$Handle;
    }
.end annotation

.annotation runtime Lvanta/nomadengine/annotation/BClassName;
    value = "com.android.internal.content.NativeLibraryHelper"
.end annotation


# virtual methods
.method public abstract copyNativeBinaries(Lvanta/com/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Integer;
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

.method public abstract findSupportedAbi(Lvanta/com/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)Ljava/lang/Integer;
    .param p2    # [Ljava/lang/String;
        .annotation runtime Lvanta/nomadengine/annotation/BParamClassName;
            value = "[Ljava.lang.String;"
        .end annotation
    .end param
    .annotation runtime Lvanta/nomadengine/annotation/BStaticMethod;
    .end annotation
.end method

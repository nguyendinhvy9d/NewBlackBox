.class public Lvanta/java/io/BRUnixFileSystem;
.super Ljava/lang/Object;
.source "BRUnixFileSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Object;)Lvanta/java/io/UnixFileSystemContext;
    .locals 2

    .line 21
    const-class v0, Lvanta/java/io/UnixFileSystemContext;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvanta/java/io/UnixFileSystemContext;

    return-object p0
.end method

.method public static get()Lvanta/java/io/UnixFileSystemStatic;
    .locals 3

    .line 13
    const-class v0, Lvanta/java/io/UnixFileSystemStatic;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvanta/java/io/UnixFileSystemStatic;

    return-object v0
.end method

.method public static getRealClass()Ljava/lang/Class;
    .locals 1

    .line 25
    const-class v0, Lvanta/java/io/UnixFileSystemContext;

    invoke-static {v0}, Lvanta/nomadengine/utils/ClassUtil;->classReady(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getWithException(Ljava/lang/Object;)Lvanta/java/io/UnixFileSystemContext;
    .locals 2

    .line 17
    const-class v0, Lvanta/java/io/UnixFileSystemContext;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvanta/java/io/UnixFileSystemContext;

    return-object p0
.end method

.method public static getWithException()Lvanta/java/io/UnixFileSystemStatic;
    .locals 3

    .line 9
    const-class v0, Lvanta/java/io/UnixFileSystemStatic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvanta/java/io/UnixFileSystemStatic;

    return-object v0
.end method

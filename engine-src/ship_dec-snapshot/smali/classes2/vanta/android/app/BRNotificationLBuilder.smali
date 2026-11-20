.class public Lvanta/android/app/BRNotificationLBuilder;
.super Ljava/lang/Object;
.source "BRNotificationLBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Object;)Lvanta/android/app/NotificationLBuilderContext;
    .locals 2

    .line 21
    const-class v0, Lvanta/android/app/NotificationLBuilderContext;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvanta/android/app/NotificationLBuilderContext;

    return-object p0
.end method

.method public static get()Lvanta/android/app/NotificationLBuilderStatic;
    .locals 3

    .line 13
    const-class v0, Lvanta/android/app/NotificationLBuilderStatic;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvanta/android/app/NotificationLBuilderStatic;

    return-object v0
.end method

.method public static getRealClass()Ljava/lang/Class;
    .locals 1

    .line 25
    const-class v0, Lvanta/android/app/NotificationLBuilderContext;

    invoke-static {v0}, Lvanta/nomadengine/utils/ClassUtil;->classReady(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getWithException(Ljava/lang/Object;)Lvanta/android/app/NotificationLBuilderContext;
    .locals 2

    .line 17
    const-class v0, Lvanta/android/app/NotificationLBuilderContext;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvanta/android/app/NotificationLBuilderContext;

    return-object p0
.end method

.method public static getWithException()Lvanta/android/app/NotificationLBuilderStatic;
    .locals 3

    .line 9
    const-class v0, Lvanta/android/app/NotificationLBuilderStatic;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lvanta/nomadengine/BlackReflection;->create(Ljava/lang/Class;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvanta/android/app/NotificationLBuilderStatic;

    return-object v0
.end method

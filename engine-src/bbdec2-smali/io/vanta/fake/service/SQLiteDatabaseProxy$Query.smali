.class public Lio/vanta/fake/service/SQLiteDatabaseProxy$Query;
.super Lio/vanta/fake/hook/MethodHook;
.source "SQLiteDatabaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/fake/service/SQLiteDatabaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation

.annotation runtime Lio/vanta/fake/hook/ProxyMethod;
    value = "query"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lio/vanta/fake/hook/MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected hook(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    const-string v0, "SQLiteDatabaseProxy"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 66
    const-string v3, "DurableJob"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 67
    const-string v1, "SQLiteDatabase: query called on DurableJob table, returning empty cursor"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 71
    :cond_18
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_1c} :catch_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception v1

    .line 76
    const-string v2, "SQLiteDatabase: query error"

    invoke-static {v0, v2, v1}, Lio/vanta/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_28
    move-exception p1

    .line 73
    const-string p2, "SQLiteDatabase: query failed, returning null"

    invoke-static {v0, p2, p1}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

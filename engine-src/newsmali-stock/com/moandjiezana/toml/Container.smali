.class abstract Lcom/moandjiezana/toml/Container;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moandjiezana/toml/Container$TableArray;,
        Lcom/moandjiezana/toml/Container$Table;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moandjiezana/toml/Container$1;)V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/moandjiezana/toml/Container;-><init>()V

    return-void
.end method


# virtual methods
.method abstract accepts(Ljava/lang/String;)Z
.end method

.method abstract get(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method abstract isImplicit()Z
.end method

.method abstract put(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.class Lcom/moandjiezana/toml/DatePolicy;
.super Ljava/lang/Object;
.source "DatePolicy.java"


# instance fields
.field private final showFractionalSeconds:Z

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Z)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/moandjiezana/toml/DatePolicy;->timeZone:Ljava/util/TimeZone;

    .line 12
    iput-boolean p2, p0, Lcom/moandjiezana/toml/DatePolicy;->showFractionalSeconds:Z

    return-void
.end method


# virtual methods
.method getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/moandjiezana/toml/DatePolicy;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method isShowFractionalSeconds()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/moandjiezana/toml/DatePolicy;->showFractionalSeconds:Z

    return v0
.end method

.class public final synthetic Ltop/niunaijun/blackboxa/biz/cache/AppSharedPreferenceDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/niunaijun/blackboxa/biz/cache/AppSharedPreferenceDelegate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Ltop/niunaijun/blackboxa/biz/cache/AppSharedPreferenceDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/biz/cache/AppSharedPreferenceDelegate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Ltop/niunaijun/blackboxa/biz/cache/AppSharedPreferenceDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Ltop/niunaijun/blackboxa/biz/cache/AppSharedPreferenceDelegate;->$r8$lambda$MVKGxV65GLrK0QG9OAqW1TKmSOE(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.class Lio/vanta/Vanta$1;
.super Lio/vanta/app/configuration/ClientConfiguration;
.source "Vanta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/Vanta;->attachBaseContext(Landroid/app/Application;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$base:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lio/vanta/Vanta$1;->val$base:Landroid/content/Context;

    invoke-direct {p0}, Lio/vanta/app/configuration/ClientConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostPackageName()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lio/vanta/Vanta$1;->val$base:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

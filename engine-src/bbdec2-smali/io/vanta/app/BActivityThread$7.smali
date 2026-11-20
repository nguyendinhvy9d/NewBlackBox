.class Lio/vanta/app/BActivityThread$7;
.super Landroid/app/Application;
.source "BActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/app/BActivityThread;->createMinimalApplication(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/app/BActivityThread;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/vanta/app/BActivityThread;Ljava/lang/String;)V
    .registers 3

    .line 1609
    iput-object p1, p0, Lio/vanta/app/BActivityThread$7;->this$0:Lio/vanta/app/BActivityThread;

    iput-object p2, p0, Lio/vanta/app/BActivityThread$7;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 1

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1618
    iget-object v0, p0, Lio/vanta/app/BActivityThread$7;->val$packageName:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .line 1612
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Minimal application onCreate called for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/vanta/app/BActivityThread$7;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BActivityThread"

    invoke-static {v1, v0}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

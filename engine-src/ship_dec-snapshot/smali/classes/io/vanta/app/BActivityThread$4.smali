.class Lio/vanta/app/BActivityThread$4;
.super Landroid/app/Application;
.source "BActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/app/BActivityThread;->createApplicationWithFallback(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/app/BActivityThread;


# direct methods
.method constructor <init>(Lio/vanta/app/BActivityThread;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lio/vanta/app/BActivityThread$4;->this$0:Lio/vanta/app/BActivityThread;

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 830
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 831
    const-string v0, "BActivityThread"

    const-string v1, "Minimal application wrapper onCreate called"

    invoke-static {v0, v1}, Lio/vanta/utils/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

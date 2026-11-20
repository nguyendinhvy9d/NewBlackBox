.class Lio/vanta/app/BActivityThread$6;
.super Landroid/content/ContextWrapper;
.source "BActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/app/BActivityThread;->createWrappedBaseContext(Ljava/lang/String;)Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$baseContext:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 1226
    iput-object p2, p0, Lio/vanta/app/BActivityThread$6;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lio/vanta/app/BActivityThread$6;->val$baseContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 1249
    iget-object v0, p0, Lio/vanta/app/BActivityThread$6;->val$baseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 1244
    iget-object v0, p0, Lio/vanta/app/BActivityThread$6;->val$baseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 1234
    iget-object v0, p0, Lio/vanta/app/BActivityThread$6;->val$baseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1229
    iget-object v0, p0, Lio/vanta/app/BActivityThread$6;->val$packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1239
    iget-object v0, p0, Lio/vanta/app/BActivityThread$6;->val$baseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

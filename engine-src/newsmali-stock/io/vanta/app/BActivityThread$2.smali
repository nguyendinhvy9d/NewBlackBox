.class Lio/vanta/app/BActivityThread$2;
.super Ljava/lang/Object;
.source "BActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/vanta/app/BActivityThread;->createBindApplicationData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/vanta/app/BActivityThread;

.field final synthetic val$applicationInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$packageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Lio/vanta/app/BActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)V
    .registers 4

    .line 583
    iput-object p1, p0, Lio/vanta/app/BActivityThread$2;->this$0:Lio/vanta/app/BActivityThread;

    iput-object p2, p0, Lio/vanta/app/BActivityThread$2;->val$applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lio/vanta/app/BActivityThread$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 584
    iget-object v0, p0, Lio/vanta/app/BActivityThread$2;->val$applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lio/vanta/app/BActivityThread$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/vanta/app/BActivityThread$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

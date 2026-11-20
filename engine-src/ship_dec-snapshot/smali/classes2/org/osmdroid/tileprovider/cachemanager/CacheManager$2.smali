.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;
.super Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

.field final synthetic val$pCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iput-object p4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;->val$pCtx:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)V

    return-void
.end method


# virtual methods
.method protected getUITitle()Ljava/lang/String;
    .locals 1

    .line 795
    const-string v0, "Cleaning tiles"

    return-object v0
.end method

.method public onTaskFailed(I)V
    .locals 3

    .line 800
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->onTaskFailed(I)V

    .line 801
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$2;->val$pCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cleaning completed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " tiles deleted."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

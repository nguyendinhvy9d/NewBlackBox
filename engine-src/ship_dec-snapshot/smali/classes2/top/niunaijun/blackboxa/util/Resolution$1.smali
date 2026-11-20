.class Ltop/niunaijun/blackboxa/util/Resolution$1;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackboxa/util/Resolution;->showInputMethod(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Ltop/niunaijun/blackboxa/util/Resolution$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    iget-object v0, p0, Ltop/niunaijun/blackboxa/util/Resolution$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Ltop/niunaijun/blackboxa/util/Resolution;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

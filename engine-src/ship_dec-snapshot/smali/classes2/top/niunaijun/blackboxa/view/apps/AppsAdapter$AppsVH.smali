.class public final Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;
.super Lcbfg/rvadapter/RVHolder;
.source "AppsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppsVH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcbfg/rvadapter/RVHolder<",
        "Ltop/niunaijun/blackboxa/bean/AppInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000cH\u0002J\u0008\u0010\u001a\u001a\u00020\u000cH\u0002J\u0008\u0010\u001b\u001a\u00020\u0010H\u0002R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;",
        "Lcbfg/rvadapter/RVHolder;",
        "Ltop/niunaijun/blackboxa/bean/AppInfo;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "binding",
        "Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;",
        "getBinding",
        "()Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;",
        "currentIcon",
        "Landroid/graphics/drawable/Drawable;",
        "isAttached",
        "",
        "setContent",
        "",
        "item",
        "isSelected",
        "payload",
        "",
        "setIconSafely",
        "icon",
        "packageName",
        "",
        "optimizeIcon",
        "createDefaultIcon",
        "setSafeDefaults",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

.field private currentIcon:Landroid/graphics/drawable/Drawable;

.field private isAttached:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lcbfg/rvadapter/RVHolder;-><init>(Landroid/view/View;)V

    .line 42
    invoke-static {p1}, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->bind(Landroid/view/View;)Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    move-result-object v0

    const-string v1, "bind(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    .line 49
    :try_start_0
    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->icon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH$1;

    invoke-direct {v1, p0, p1}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH$1;-><init>(Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;Landroid/view/View;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error initializing ViewHolder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppsAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final synthetic access$isAttached$p(Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->isAttached:Z

    return p0
.end method

.method private final createDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 133
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter;->access$getDEFAULT_ICON_COLOR$cp()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error creating default icon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final optimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 111
    :try_start_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 112
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x60

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 115
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createScaledBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 120
    :goto_1
    check-cast v0, Landroid/graphics/drawable/Drawable;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    return-object p1

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error optimizing icon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private final setIconSafely(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    invoke-direct {p0, p1}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->optimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 94
    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object v1, v1, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iput-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->currentIcon:Landroid/graphics/drawable/Drawable;

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->createDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->currentIcon:Landroid/graphics/drawable/Drawable;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to set icon for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->createDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iput-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->currentIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final setSafeDefaults()V
    .locals 3

    .line 142
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->createDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->name:Landroid/widget/TextView;

    const-string v1, "Unknown App"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object v0, v0, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->cornerLabel:Lcom/othershe/cornerlabelview/CornerLabelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/othershe/cornerlabelview/CornerLabelView;->setVisibility(I)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error setting safe defaults: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getBinding()Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;
    .locals 1

    .line 42
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    return-object v0
.end method

.method public bridge synthetic setContent(Ljava/lang/Object;ZLjava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ltop/niunaijun/blackboxa/bean/AppInfo;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->setContent(Ltop/niunaijun/blackboxa/bean/AppInfo;ZLjava/lang/Object;)V

    return-void
.end method

.method public setContent(Ltop/niunaijun/blackboxa/bean/AppInfo;ZLjava/lang/Object;)V
    .locals 1

    const-string p2, "item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->setIconSafely(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    :goto_0
    check-cast p3, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    const-string p3, "Unknown App"

    goto :goto_0

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/AppInfo;->isXpModule()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 75
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->cornerLabel:Lcom/othershe/cornerlabelview/CornerLabelView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/othershe/cornerlabelview/CornerLabelView;->setVisibility(I)V

    goto :goto_2

    .line 77
    :cond_1
    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->binding:Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;

    iget-object p2, p2, Ltop/niunaijun/blackboxa/databinding/ItemAppBinding;->cornerLabel:Lcom/othershe/cornerlabelview/CornerLabelView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/othershe/cornerlabelview/CornerLabelView;->setVisibility(I)V

    :goto_2
    const/4 p2, 0x1

    .line 81
    iput-boolean p2, p0, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->isAttached:Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 84
    invoke-virtual {p1}, Ltop/niunaijun/blackboxa/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error setting content for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Ltop/niunaijun/blackboxa/view/apps/AppsAdapter$AppsVH;->setSafeDefaults()V

    return-void
.end method

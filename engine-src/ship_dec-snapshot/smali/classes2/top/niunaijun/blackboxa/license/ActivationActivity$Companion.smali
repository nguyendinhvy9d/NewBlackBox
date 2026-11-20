.class public final Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;
.super Ljava/lang/Object;
.source "ActivationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackboxa/license/ActivationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;",
        "",
        "<init>",
        "()V",
        "EXTRA_REASON",
        "",
        "start",
        "",
        "ctx",
        "Landroid/content/Context;",
        "reason",
        "reasonText",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic start$default(Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 80
    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackboxa/license/ActivationActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final reasonText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0    # 0x604afb16
    const-string v0, "not_found"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 88
    :cond_0
    const-string p1, "Key kh\u00f4ng t\u1ed3n t\u1ea1i. Ki\u1ec3m tra l\u1ea1i."

    return-object p1

    .line 87
    :sswitch_1    # 0x490c8cfe
    const-string v0, "bad_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_2    # 0x47fa4055
    const-string v0, "bad_request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 93
    :cond_1
    const-string p1, "Th\u00f4ng tin kh\u00f4ng h\u1ee3p l\u1ec7."

    return-object p1

    .line 87
    :sswitch_3    # 0x4192c29e
    const-string v0, "revoked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    const-string p1, "Key \u0111\u00e3 b\u1ecb thu h\u1ed3i."

    return-object p1

    .line 87
    :sswitch_4    # 0xf6138ea
    const-string v0, "wrong_tool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 92
    :cond_3
    const-string p1, "Key n\u00e0y kh\u00f4ng d\u00f9ng cho XjangJu."

    return-object p1

    .line 87
    :sswitch_5    # 0x289c8c9
    const-string v0, "offline_expired"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 97
    :cond_4
    const-string p1, "\u0110\u00e3 offline qu\u00e1 l\u00e2u. K\u1ebft n\u1ed1i m\u1ea1ng \u0111\u1ec3 ki\u1ec3m tra l\u1ea1i."

    return-object p1

    .line 87
    :sswitch_6    # 0x1016597
    const-string v0, "device_mismatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 91
    :cond_5
    const-string p1, "Key \u0111\u00e3 kh\u00f3a v\u00e0o m\u00e1y kh\u00e1c. Li\u00ean h\u1ec7 h\u1ed7 tr\u1ee3 \u0111\u1ec3 chuy\u1ec3n m\u00e1y."

    return-object p1

    .line 87
    :sswitch_7    # -0x3dce1a0
    const-string v0, "offline_no_cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 96
    :cond_6
    const-string p1, "Ch\u01b0a c\u00f3 m\u1ea1ng v\u00e0 ch\u01b0a t\u1eebng k\u00edch ho\u1ea1t. C\u1ea7n m\u1ea1ng cho l\u1ea7n \u0111\u1ea7u."

    return-object p1

    .line 87
    :sswitch_8    # -0x458a80c5
    const-string v0, "bad_response"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :sswitch_9    # -0x4ca6b37a
    const-string v0, "bad_ticket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 95
    :cond_7
    const-string p1, "L\u1ed7i x\u00e1c th\u1ef1c v\u00e9. Th\u1eed l\u1ea1i."

    return-object p1

    .line 87
    :sswitch_a    # -0x4e0958db
    const-string v0, "expired"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    .line 90
    :cond_8
    const-string p1, "Key \u0111\u00e3 h\u1ebft h\u1ea1n. H\u00e3y gia h\u1ea1n."

    return-object p1

    .line 87
    :sswitch_b    # -0x60e696c5
    const-string v0, "rate_limited"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 94
    :cond_9
    const-string p1, "Thao t\u00e1c qu\u00e1 nhanh. Th\u1eed l\u1ea1i sau \u00edt ph\u00fat."

    return-object p1

    .line 98
    :goto_0
    const-string p1, "Ch\u01b0a k\u00edch ho\u1ea1t \u0111\u01b0\u1ee3c. Th\u1eed l\u1ea1i."

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x60e696c5 -> :sswitch_b
        -0x4e0958db -> :sswitch_a
        -0x4ca6b37a -> :sswitch_9
        -0x458a80c5 -> :sswitch_8
        -0x3dce1a0 -> :sswitch_7
        0x1016597 -> :sswitch_6
        0x289c8c9 -> :sswitch_5
        0xf6138ea -> :sswitch_4
        0x4192c29e -> :sswitch_3
        0x47fa4055 -> :sswitch_2
        0x490c8cfe -> :sswitch_1
        0x604afb16 -> :sswitch_0

    .end sparse-switch
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ltop/niunaijun/blackboxa/license/ActivationActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

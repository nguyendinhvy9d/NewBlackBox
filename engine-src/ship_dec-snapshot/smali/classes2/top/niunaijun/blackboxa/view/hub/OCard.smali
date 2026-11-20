.class public final Ltop/niunaijun/blackboxa/view/hub/OCard;
.super Ljava/lang/Object;
.source "HubAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0003JC\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Ltop/niunaijun/blackboxa/view/hub/OCard;",
        "",
        "userId",
        "",
        "device",
        "",
        "gmsOn",
        "",
        "remark",
        "apps",
        "",
        "Ltop/niunaijun/blackboxa/view/hub/AppEntry;",
        "<init>",
        "(ILjava/lang/String;ZLjava/lang/String;Ljava/util/List;)V",
        "getUserId",
        "()I",
        "getDevice",
        "()Ljava/lang/String;",
        "getGmsOn",
        "()Z",
        "getRemark",
        "getApps",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/view/hub/AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final device:Ljava/lang/String;

.field private final gmsOn:Z

.field private final remark:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/view/hub/AppEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->userId:I

    .line 23
    iput-object p2, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->device:Ljava/lang/String;

    .line 24
    iput-boolean p3, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->gmsOn:Z

    .line 25
    iput-object p4, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->remark:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->apps:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Ltop/niunaijun/blackboxa/view/hub/OCard;ILjava/lang/String;ZLjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ltop/niunaijun/blackboxa/view/hub/OCard;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->userId:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->device:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-boolean p3, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->gmsOn:Z

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->remark:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->apps:Ljava/util/List;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Ltop/niunaijun/blackboxa/view/hub/OCard;->copy(ILjava/lang/String;ZLjava/lang/String;Ljava/util/List;)Ltop/niunaijun/blackboxa/view/hub/OCard;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->userId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->device:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->gmsOn:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/view/hub/AppEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->apps:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;ZLjava/lang/String;Ljava/util/List;)Ltop/niunaijun/blackboxa/view/hub/OCard;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/view/hub/AppEntry;",
            ">;)",
            "Ltop/niunaijun/blackboxa/view/hub/OCard;"
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ltop/niunaijun/blackboxa/view/hub/OCard;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Ltop/niunaijun/blackboxa/view/hub/OCard;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltop/niunaijun/blackboxa/view/hub/OCard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltop/niunaijun/blackboxa/view/hub/OCard;

    iget v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->userId:I

    iget v3, p1, Ltop/niunaijun/blackboxa/view/hub/OCard;->userId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->device:Ljava/lang/String;

    iget-object v3, p1, Ltop/niunaijun/blackboxa/view/hub/OCard;->device:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->gmsOn:Z

    iget-boolean v3, p1, Ltop/niunaijun/blackboxa/view/hub/OCard;->gmsOn:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->remark:Ljava/lang/String;

    iget-object v3, p1, Ltop/niunaijun/blackboxa/view/hub/OCard;->remark:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->apps:Ljava/util/List;

    iget-object p1, p1, Ltop/niunaijun/blackboxa/view/hub/OCard;->apps:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackboxa/view/hub/AppEntry;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->apps:Ljava/util/List;

    return-object v0
.end method

.method public final getDevice()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->device:Ljava/lang/String;

    return-object v0
.end method

.method public final getGmsOn()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->gmsOn:Z

    return v0
.end method

.method public final getRemark()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    .line 22
    iget v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->device:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->gmsOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->remark:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->apps:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->userId:I

    iget-object v1, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->device:Ljava/lang/String;

    iget-boolean v2, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->gmsOn:Z

    iget-object v3, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->remark:Ljava/lang/String;

    iget-object v4, p0, Ltop/niunaijun/blackboxa/view/hub/OCard;->apps:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OCard(userId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", device="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gmsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

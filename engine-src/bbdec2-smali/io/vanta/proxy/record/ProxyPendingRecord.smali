.class public Lio/vanta/proxy/record/ProxyPendingRecord;
.super Ljava/lang/Object;
.source "ProxyPendingRecord.java"


# instance fields
.field public mCreatorPkg:Ljava/lang/String;

.field public mTarget:Landroid/content/Intent;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lio/vanta/proxy/record/ProxyPendingRecord;-><init>(Landroid/content/Intent;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p2, p0, Lio/vanta/proxy/record/ProxyPendingRecord;->mUserId:I

    .line 17
    iput-object p1, p0, Lio/vanta/proxy/record/ProxyPendingRecord;->mTarget:Landroid/content/Intent;

    .line 18
    iput-object p3, p0, Lio/vanta/proxy/record/ProxyPendingRecord;->mCreatorPkg:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyPendingRecord;
    .locals 3

    .line 34
    const-string v0, "_B_|_P_user_id_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 35
    const-string v1, "_B_|_P_target_"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 36
    const-string v2, "_B_|_P_creator_pkg_"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance v2, Lio/vanta/proxy/record/ProxyPendingRecord;

    invoke-direct {v2, v1, v0, p0}, Lio/vanta/proxy/record/ProxyPendingRecord;-><init>(Landroid/content/Intent;ILjava/lang/String;)V

    return-object v2
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {p0, p1, p2, v0}, Lio/vanta/proxy/record/ProxyPendingRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;ILjava/lang/String;)V

    return-void
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1

    .line 26
    const-string v0, "_B_|_P_user_id_"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    const-string p2, "_B_|_P_target_"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 29
    const-string p1, "_B_|_P_creator_pkg_"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyPendingActivityRecord{mUserId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/vanta/proxy/record/ProxyPendingRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/proxy/record/ProxyPendingRecord;->mTarget:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreatorPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/proxy/record/ProxyPendingRecord;->mCreatorPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

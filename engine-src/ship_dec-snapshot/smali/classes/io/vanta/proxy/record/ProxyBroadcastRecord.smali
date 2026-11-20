.class public Lio/vanta/proxy/record/ProxyBroadcastRecord;
.super Ljava/lang/Object;
.source "ProxyBroadcastRecord.java"


# instance fields
.field public mIntent:Landroid/content/Intent;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    .line 12
    iput p2, p0, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mUserId:I

    return-void
.end method

.method public static create(Landroid/content/Intent;)Lio/vanta/proxy/record/ProxyBroadcastRecord;
    .locals 3

    .line 21
    const-string v0, "_B_|_target_"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 22
    const-string v1, "_B_|_user_id_"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 23
    new-instance v1, Lio/vanta/proxy/record/ProxyBroadcastRecord;

    invoke-direct {v1, v0, p0}, Lio/vanta/proxy/record/ProxyBroadcastRecord;-><init>(Landroid/content/Intent;I)V

    return-object v1
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;I)V
    .locals 1

    .line 16
    const-string v0, "_B_|_target_"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    const-string p1, "_B_|_user_id_"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyBroadcastRecord{mIntent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/vanta/proxy/record/ProxyBroadcastRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

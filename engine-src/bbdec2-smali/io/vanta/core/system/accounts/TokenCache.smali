.class public Lio/vanta/core/system/accounts/TokenCache;
.super Ljava/lang/Object;
.source "TokenCache.java"


# instance fields
.field public account:Landroid/accounts/Account;

.field public authToken:Ljava/lang/String;

.field public authTokenType:Ljava/lang/String;

.field public expiryEpochMillis:J

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lio/vanta/core/system/accounts/TokenCache;->userId:I

    .line 31
    iput-object p2, p0, Lio/vanta/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    .line 32
    iget-object p1, p0, Lio/vanta/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    iput-object p1, p0, Lio/vanta/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lio/vanta/core/system/accounts/TokenCache;->authTokenType:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lio/vanta/core/system/accounts/TokenCache;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lio/vanta/core/system/accounts/TokenCache;->userId:I

    .line 22
    iput-object p2, p0, Lio/vanta/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    .line 23
    iput-wide p6, p0, Lio/vanta/core/system/accounts/TokenCache;->expiryEpochMillis:J

    .line 24
    iput-object p5, p0, Lio/vanta/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lio/vanta/core/system/accounts/TokenCache;->authTokenType:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lio/vanta/core/system/accounts/TokenCache;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 40
    :cond_4
    instance-of v1, p1, Lio/vanta/core/system/accounts/TokenCache;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 41
    :cond_a
    check-cast p1, Lio/vanta/core/system/accounts/TokenCache;

    .line 42
    iget v1, p0, Lio/vanta/core/system/accounts/TokenCache;->userId:I

    iget v3, p1, Lio/vanta/core/system/accounts/TokenCache;->userId:I

    if-ne v1, v3, :cond_43

    iget-wide v3, p0, Lio/vanta/core/system/accounts/TokenCache;->expiryEpochMillis:J

    iget-wide v5, p1, Lio/vanta/core/system/accounts/TokenCache;->expiryEpochMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_43

    iget-object v1, p0, Lio/vanta/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    iget-object v3, p1, Lio/vanta/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    .line 44
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lio/vanta/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    iget-object v3, p1, Lio/vanta/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    .line 45
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lio/vanta/core/system/accounts/TokenCache;->authTokenType:Ljava/lang/String;

    iget-object v3, p1, Lio/vanta/core/system/accounts/TokenCache;->authTokenType:Ljava/lang/String;

    .line 46
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lio/vanta/core/system/accounts/TokenCache;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lio/vanta/core/system/accounts/TokenCache;->packageName:Ljava/lang/String;

    .line 47
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    return v0

    :cond_43
    return v2
.end method

.method public hashCode()I
    .registers 8

    .line 52
    iget v0, p0, Lio/vanta/core/system/accounts/TokenCache;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lio/vanta/core/system/accounts/TokenCache;->account:Landroid/accounts/Account;

    iget-wide v3, p0, Lio/vanta/core/system/accounts/TokenCache;->expiryEpochMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lio/vanta/core/system/accounts/TokenCache;->authToken:Ljava/lang/String;

    iget-object v5, p0, Lio/vanta/core/system/accounts/TokenCache;->authTokenType:Ljava/lang/String;

    iget-object v6, p0, Lio/vanta/core/system/accounts/TokenCache;->packageName:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

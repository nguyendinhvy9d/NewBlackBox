.class public Lio/vanta/utils/ShellUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/utils/ShellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lio/vanta/utils/ShellUtils$CommandResult;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lio/vanta/utils/ShellUtils$CommandResult;->result:I

    .line 128
    iput-object p2, p0, Lio/vanta/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    return-void
.end method

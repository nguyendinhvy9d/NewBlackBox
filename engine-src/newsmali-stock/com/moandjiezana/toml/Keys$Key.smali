.class Lcom/moandjiezana/toml/Keys$Key;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moandjiezana/toml/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Key"
.end annotation


# instance fields
.field final index:I

.field final name:Ljava/lang/String;

.field final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/moandjiezana/toml/Keys$Key;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/moandjiezana/toml/Keys$Key;->name:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/moandjiezana/toml/Keys$Key;->index:I

    if-eqz p3, :cond_25

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p3, Lcom/moandjiezana/toml/Keys$Key;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/moandjiezana/toml/Keys$Key;->path:Ljava/lang/String;

    return-void

    .line 19
    :cond_25
    iput-object p1, p0, Lcom/moandjiezana/toml/Keys$Key;->path:Ljava/lang/String;

    return-void
.end method

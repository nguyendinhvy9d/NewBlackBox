.class public final Lio/vanta/core/system/pm/FastImmutableArraySet;
.super Ljava/util/AbstractSet;
.source "FastImmutableArraySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/core/system/pm/FastImmutableArraySet$FastIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIterator:Lio/vanta/core/system/pm/FastImmutableArraySet$FastIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/vanta/core/system/pm/FastImmutableArraySet$FastIterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 14
    iput-object p1, p0, Lio/vanta/core/system/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lio/vanta/core/system/pm/FastImmutableArraySet;->mIterator:Lio/vanta/core/system/pm/FastImmutableArraySet$FastIterator;

    if-nez v0, :cond_e

    .line 21
    new-instance v0, Lio/vanta/core/system/pm/FastImmutableArraySet$FastIterator;

    iget-object v1, p0, Lio/vanta/core/system/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/vanta/core/system/pm/FastImmutableArraySet$FastIterator;-><init>([Ljava/lang/Object;)V

    .line 22
    iput-object v0, p0, Lio/vanta/core/system/pm/FastImmutableArraySet;->mIterator:Lio/vanta/core/system/pm/FastImmutableArraySet$FastIterator;

    return-object v0

    :cond_e
    const/4 v1, 0x0

    .line 24
    iput v1, v0, Lio/vanta/core/system/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 31
    iget-object v0, p0, Lio/vanta/core/system/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

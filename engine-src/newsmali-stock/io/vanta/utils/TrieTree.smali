.class public Lio/vanta/utils/TrieTree;
.super Ljava/lang/Object;
.source "TrieTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/vanta/utils/TrieTree$TrieNode;
    }
.end annotation


# instance fields
.field private final root:Lio/vanta/utils/TrieTree$TrieNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lio/vanta/utils/TrieTree$TrieNode;

    invoke-direct {v0}, Lio/vanta/utils/TrieTree$TrieNode;-><init>()V

    iput-object v0, p0, Lio/vanta/utils/TrieTree;->root:Lio/vanta/utils/TrieTree$TrieNode;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 8

    .line 44
    iget-object v0, p0, Lio/vanta/utils/TrieTree;->root:Lio/vanta/utils/TrieTree$TrieNode;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 46
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    new-instance v4, Lio/vanta/utils/TrieTree$TrieNode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lio/vanta/utils/TrieTree$TrieNode;-><init>(CLjava/lang/String;)V

    .line 50
    iget-object v5, v0, Lio/vanta/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 51
    invoke-virtual {v0, v3}, Lio/vanta/utils/TrieTree$TrieNode;->nextNode(C)Lio/vanta/utils/TrieTree$TrieNode;

    move-result-object v0

    goto :goto_31

    .line 53
    :cond_2b
    iget-object v0, v0, Lio/vanta/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    .line 57
    :goto_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3b

    .line 58
    iput-boolean v4, v0, Lio/vanta/utils/TrieTree$TrieNode;->isEnd:Z

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3e
    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v0}, Lio/vanta/utils/TrieTree;->add(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public search(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 69
    iget-object v0, p0, Lio/vanta/utils/TrieTree;->root:Lio/vanta/utils/TrieTree$TrieNode;

    const/4 v1, 0x0

    .line 70
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_29

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 73
    new-instance v4, Lio/vanta/utils/TrieTree$TrieNode;

    invoke-direct {v4, v2, v3}, Lio/vanta/utils/TrieTree$TrieNode;-><init>(CLjava/lang/String;)V

    .line 74
    iget-object v5, v0, Lio/vanta/utils/TrieTree$TrieNode;->children:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 75
    invoke-virtual {v0, v2}, Lio/vanta/utils/TrieTree$TrieNode;->nextNode(C)Lio/vanta/utils/TrieTree$TrieNode;

    move-result-object v0

    .line 79
    iget-boolean v2, v0, Lio/vanta/utils/TrieTree$TrieNode;->isEnd:Z

    if-eqz v2, :cond_26

    .line 80
    iget-object p1, v0, Lio/vanta/utils/TrieTree$TrieNode;->word:Ljava/lang/String;

    return-object p1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    return-object v3
.end method

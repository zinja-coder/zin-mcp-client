.class public Lcom/badlogic/gdx/utils/SortedIntList;
.super Ljava/lang/Object;
.source "SortedIntList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/SortedIntList$NodePool;,
        Lcom/badlogic/gdx/utils/SortedIntList$Node;,
        Lcom/badlogic/gdx/utils/SortedIntList$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/SortedIntList$Node",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field first:Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private iterator:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList",
            "<TE;>.Iterator;"
        }
    .end annotation
.end field

.field private nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$NodePool",
            "<TE;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    .line 31
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 91
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->free(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    .line 95
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    const/4 v1, 0x0

    .line 77
    .local v1, "match":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 79
    .local v0, "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :goto_0
    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-ge v2, p1, :cond_0

    .line 80
    iget-object v0, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    goto :goto_0

    .line 82
    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-ne v2, p1, :cond_1

    .line 83
    iget-object v1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    .line 86
    .end local v0    # "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    .end local v1    # "match":Ljava/lang/Object;, "TE;"
    :cond_1
    return-object v1
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    .line 39
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_4

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 42
    .local v0, "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :goto_0
    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget v2, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-gt v2, p1, :cond_0

    .line 43
    iget-object v0, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    goto :goto_0

    .line 46
    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-le p1, v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-virtual {v2, v0, v3, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v2

    iput-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 48
    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->n:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v3, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->p:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 51
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    .line 68
    .end local v0    # "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :goto_1
    return-object v4

    .line 54
    .restart local v0    # "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :cond_2
    iget v2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    if-ge p1, v2, :cond_3

    .line 55
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    invoke-virtual {v2, v4, v3, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v1

    .line 56
    .local v1, "newFirst":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    iput-object v1, v2, Lcom/badlogic/gdx/utils/SortedIntList$Node;->p:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 57
    iput-object v1, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 58
    iget v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    goto :goto_1

    .line 62
    .end local v1    # "newFirst":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :cond_3
    iput-object p2, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    goto :goto_1

    .line 65
    .end local v0    # "c":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->nodePool:Lcom/badlogic/gdx/utils/SortedIntList$NodePool;

    invoke-virtual {v2, v4, v4, p2, p1}, Lcom/badlogic/gdx/utils/SortedIntList$NodePool;->obtain(Lcom/badlogic/gdx/utils/SortedIntList$Node;Lcom/badlogic/gdx/utils/SortedIntList$Node;Ljava/lang/Object;I)Lcom/badlogic/gdx/utils/SortedIntList$Node;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->first:Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 66
    iget v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/SortedIntList$Node",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->iterator:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;-><init>(Lcom/badlogic/gdx/utils/SortedIntList;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->iterator:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->iterator:Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SortedIntList$Iterator;->reset()Lcom/badlogic/gdx/utils/SortedIntList$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList;, "Lcom/badlogic/gdx/utils/SortedIntList<TE;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/SortedIntList;->size:I

    return v0
.end method

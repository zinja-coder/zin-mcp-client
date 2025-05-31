.class public Lcom/badlogic/gdx/utils/DelayedRemovalArray;
.super Lcom/badlogic/gdx/utils/Array;
.source "DelayedRemovalArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Array",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private iterating:I

.field private remove:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 57
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .param p1, "array"    # Lcom/badlogic/gdx/utils/Array;

    .prologue
    .line 37
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "arrayType"    # Ljava/lang/Class;

    .prologue
    .line 53
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 54
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 45
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 46
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I
    .param p3, "arrayType"    # Ljava/lang/Class;

    .prologue
    .line 41
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 42
    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p3, "startIndex"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 50
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    .line 62
    return-void
.end method

.method private remove(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 78
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 79
    iget-object v3, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    .line 80
    .local v2, "removeIndex":I
    if-ne p1, v2, :cond_0

    .line 87
    .end local v2    # "removeIndex":I
    :goto_1
    return-void

    .line 81
    .restart local v2    # "removeIndex":I
    :cond_0
    if-ge p1, v2, :cond_1

    .line 82
    iget-object v3, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    goto :goto_1

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "removeIndex":I
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public begin()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    .line 66
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 138
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    .line 69
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "begin must be called before end."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    .line 71
    iget v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-nez v2, :cond_1

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public removeRange(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 108
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v1, :cond_0

    .line 109
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 110
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    .line 109
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 113
    :cond_1
    return-void
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v1, :cond_1

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 92
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 96
    .end local v0    # "index":I
    :goto_0
    return v1

    .line 93
    .restart local v0    # "index":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "index":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 151
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    .line 153
    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public shuffle()V
    .locals 2

    .prologue
    .line 156
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    .line 158
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 141
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    .line 143
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 148
    return-void
.end method

.method public swap(II)V
    .locals 2
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 126
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    .line 128
    return-void
.end method

.method public truncate(I)V
    .locals 2
    .param p1, "newSize"    # I

    .prologue
    .line 161
    .local p0, "this":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 163
    return-void
.end method

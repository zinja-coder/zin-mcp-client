.class public Lcom/badlogic/gdx/utils/SnapshotArray;
.super Lcom/badlogic/gdx/utils/Array;
.source "SnapshotArray.java"


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
.field private recycled:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private snapshot:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private snapshots:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 68
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .param p1, "array"    # Lcom/badlogic/gdx/utils/Array;

    .prologue
    .line 48
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "arrayType"    # Ljava/lang/Class;

    .prologue
    .line 64
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 0
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I
    .param p3, "arrayType"    # Ljava/lang/Class;

    .prologue
    .line 52
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .locals 0
    .param p1, "ordered"    # Z
    .param p3, "startIndex"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    .line 61
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method private modified()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lt v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->resize(I)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/SnapshotArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/SnapshotArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public begin()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 148
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 149
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 150
    return-void
.end method

.method public end()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    const/4 v4, 0x0

    .line 85
    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    .line 86
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    array-length v1, v2

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    iput-object v4, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 114
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 144
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z
    .locals 1
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<+TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 139
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z

    move-result v0

    return v0
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
    .line 128
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 129
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeRange(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 133
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 134
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 135
    return-void
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 1
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 124
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public reverse()V
    .locals 0

    .prologue
    .line 163
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 164
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    .line 165
    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 109
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method public shuffle()V
    .locals 0

    .prologue
    .line 168
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 169
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    .line 170
    return-void
.end method

.method public sort()V
    .locals 0

    .prologue
    .line 153
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 154
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    .line 155
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 159
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 160
    return-void
.end method

.method public swap(II)V
    .locals 0
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 118
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 119
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    .line 120
    return-void
.end method

.method public truncate(I)V
    .locals 0
    .param p1, "newSize"    # I

    .prologue
    .line 173
    .local p0, "this":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 174
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 175
    return-void
.end method

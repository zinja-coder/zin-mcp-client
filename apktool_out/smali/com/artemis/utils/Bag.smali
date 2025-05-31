.class public Lcom/artemis/utils/Bag;
.super Ljava/lang/Object;
.source "Bag.java"

# interfaces
.implements Lcom/artemis/utils/ImmutableBag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artemis/utils/Bag$1;,
        Lcom/artemis/utils/Bag$BagIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/artemis/utils/ImmutableBag",
        "<TE;>;"
    }
.end annotation


# instance fields
.field data:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private it:Lcom/artemis/utils/Bag$BagIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<TE;>.BagIterator;"
        }
    .end annotation
.end field

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/artemis/utils/Bag;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/artemis/utils/Bag;->size:I

    .line 43
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private grow()V
    .locals 2

    .prologue
    .line 283
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget-object v1, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, 0x1

    .line 284
    .local v0, "newCapacity":I
    invoke-direct {p0, v0}, Lcom/artemis/utils/Bag;->grow(I)V

    .line 285
    return-void
.end method

.method private grow(I)V
    .locals 4
    .param p1, "newCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    const/4 v3, 0x0

    .line 297
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    .line 298
    .local v0, "oldData":[Ljava/lang/Object;, "[TE;"
    new-array v1, p1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lcom/artemis/utils/Bag;->size:I

    iget-object v1, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/artemis/utils/Bag;->grow()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/artemis/utils/Bag;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/artemis/utils/Bag;->size:I

    aput-object p1, v0, v1

    .line 258
    return-void
.end method

.method public addAll(Lcom/artemis/utils/ImmutableBag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/ImmutableBag",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    .local p1, "items":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 350
    invoke-interface {p1, v0}, Lcom/artemis/utils/ImmutableBag;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/artemis/utils/Bag;->add(Ljava/lang/Object;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    const/4 v3, 0x0

    .line 324
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/artemis/utils/Bag;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 325
    iput v3, p0, Lcom/artemis/utils/Bag;->size:I

    .line 326
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/artemis/utils/Bag;->size:I

    if-le v1, v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 131
    const/4 v1, 0x1

    .line 134
    :goto_1
    return v1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public ensureCapacity(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 312
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 313
    invoke-direct {p0, p1}, Lcom/artemis/utils/Bag;->grow(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public fastClear()V
    .locals 1

    .prologue
    .line 338
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/artemis/utils/Bag;->size:I

    .line 340
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getData()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget v0, p0, Lcom/artemis/utils/Bag;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndexWithinBounds(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 229
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    invoke-virtual {p0}, Lcom/artemis/utils/Bag;->getCapacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/artemis/utils/Bag;->it:Lcom/artemis/utils/Bag$BagIterator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/artemis/utils/Bag$BagIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/artemis/utils/Bag$BagIterator;-><init>(Lcom/artemis/utils/Bag;Lcom/artemis/utils/Bag$1;)V

    iput-object v0, p0, Lcom/artemis/utils/Bag;->it:Lcom/artemis/utils/Bag$BagIterator;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Bag;->it:Lcom/artemis/utils/Bag$BagIterator;

    invoke-static {v0, v2}, Lcom/artemis/utils/Bag$BagIterator;->access$102(Lcom/artemis/utils/Bag$BagIterator;Z)Z

    .line 373
    iget-object v0, p0, Lcom/artemis/utils/Bag;->it:Lcom/artemis/utils/Bag$BagIterator;

    invoke-static {v0, v2}, Lcom/artemis/utils/Bag$BagIterator;->access$202(Lcom/artemis/utils/Bag$BagIterator;I)I

    .line 375
    iget-object v0, p0, Lcom/artemis/utils/Bag;->it:Lcom/artemis/utils/Bag$BagIterator;

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget-object v1, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 63
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/artemis/utils/Bag;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/artemis/utils/Bag;->size:I

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    .line 64
    iget-object v1, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v2, p0, Lcom/artemis/utils/Bag;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 65
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/artemis/utils/Bag;->size:I

    if-ge v1, v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    aget-object v0, v2, v1

    .line 109
    .local v0, "e2":Ljava/lang/Object;, "TE;"
    if-ne p1, v0, :cond_0

    .line 110
    iget-object v2, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v4, p0, Lcom/artemis/utils/Bag;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/artemis/utils/Bag;->size:I

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 111
    iget-object v2, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/artemis/utils/Bag;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 112
    const/4 v2, 0x1

    .line 116
    .end local v0    # "e2":Ljava/lang/Object;, "TE;"
    :goto_1
    return v2

    .line 106
    .restart local v0    # "e2":Ljava/lang/Object;, "TE;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "e2":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeAll(Lcom/artemis/utils/ImmutableBag;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/utils/ImmutableBag",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    .local p1, "bag":Lcom/artemis/utils/ImmutableBag;, "Lcom/artemis/utils/ImmutableBag<TE;>;"
    const/4 v4, 0x0

    .line 149
    .local v4, "modified":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v5

    .local v5, "s":I
    :goto_0
    if-le v5, v2, :cond_2

    .line 150
    invoke-interface {p1, v2}, Lcom/artemis/utils/ImmutableBag;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "e1":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v6, p0, Lcom/artemis/utils/Bag;->size:I

    if-ge v3, v6, :cond_0

    .line 153
    iget-object v6, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    aget-object v1, v6, v3

    .line 155
    .local v1, "e2":Ljava/lang/Object;, "TE;"
    if-ne v0, v1, :cond_1

    .line 156
    invoke-virtual {p0, v3}, Lcom/artemis/utils/Bag;->remove(I)Ljava/lang/Object;

    .line 157
    add-int/lit8 v3, v3, -0x1

    .line 158
    const/4 v4, 0x1

    .line 149
    .end local v1    # "e2":Ljava/lang/Object;, "TE;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .restart local v1    # "e2":Ljava/lang/Object;, "TE;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v0    # "e1":Ljava/lang/Object;, "TE;"
    .end local v1    # "e2":Ljava/lang/Object;, "TE;"
    .end local v3    # "j":I
    :cond_2
    return v4
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    const/4 v1, 0x0

    .line 83
    iget v2, p0, Lcom/artemis/utils/Bag;->size:I

    if-lez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/artemis/utils/Bag;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/artemis/utils/Bag;->size:I

    aget-object v0, v2, v3

    .line 85
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/artemis/utils/Bag;->size:I

    aput-object v1, v2, v3

    .line 89
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public safeGet(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 195
    mul-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/artemis/utils/Bag;->grow(I)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 270
    mul-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/artemis/utils/Bag;->grow(I)V

    .line 272
    :cond_0
    iget v0, p0, Lcom/artemis/utils/Bag;->size:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/artemis/utils/Bag;->size:I

    .line 273
    iget-object v0, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 274
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    iget v0, p0, Lcom/artemis/utils/Bag;->size:I

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-static {}, Lcom/artemis/utils/Sort;->instance()Lcom/artemis/utils/Sort;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/artemis/utils/Sort;->sort(Lcom/artemis/utils/Bag;Ljava/util/Comparator;)V

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    .local p0, "this":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<TE;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Bag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/artemis/utils/Bag;->size:I

    if-le v2, v0, :cond_1

    .line 383
    if-lez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/artemis/utils/Bag;->data:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

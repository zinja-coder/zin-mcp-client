.class Lcom/badlogic/gdx/utils/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 70
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 71
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    .line 73
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v3, 0x7

    iput v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 61
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 123
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 126
    array-length v0, p1

    .line 127
    .local v0, "len":I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_0

    ushr-int/lit8 v3, v0, 0x1

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 128
    .local v1, "newArray":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 137
    const/16 v3, 0x78

    if-ge v0, v3, :cond_1

    const/4 v2, 0x5

    .line 138
    .local v2, "stackLen":I
    :goto_1
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    .line 139
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    .line 140
    return-void

    .line 127
    .end local v1    # "newArray":[Ljava/lang/Object;
    .end local v2    # "stackLen":I
    :cond_0
    const/16 v3, 0x100

    goto :goto_0

    .line 137
    .restart local v1    # "newArray":[Ljava/lang/Object;
    :cond_1
    const/16 v3, 0x606

    if-ge v0, v3, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :cond_2
    const v3, 0x1d16f

    if-ge v0, v3, :cond_3

    const/16 v2, 0x13

    goto :goto_1

    :cond_3
    const/16 v2, 0x28

    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    .prologue
    .line 206
    if-ne p3, p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 207
    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    .line 209
    aget-object v3, p0, p3

    check-cast v3, Ljava/lang/Comparable;

    .line 212
    .local v3, "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    move v0, p1

    .line 213
    .local v0, "left":I
    move v4, p3

    .line 218
    .local v4, "right":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 219
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 220
    .local v1, "mid":I
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 221
    move v4, v1

    goto :goto_1

    .line 223
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 232
    .end local v1    # "mid":I
    :cond_2
    sub-int v2, p3, v0

    .line 234
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    .line 241
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    :goto_2
    aput-object v3, p0, v0

    .line 207
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 236
    :pswitch_0
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 238
    :pswitch_1
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_2

    .line 245
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .end local v4    # "right":I
    :cond_3
    return-void

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 268
    add-int/lit8 v0, p1, 0x1

    .line 269
    .local v0, "runHi":I
    if-ne v0, p2, :cond_0

    const/4 v2, 0x1

    .line 281
    :goto_0
    return v2

    .line 272
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    move v0, v1

    .line 273
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 281
    :cond_2
    sub-int v2, v0, p1

    goto :goto_0

    .line 277
    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_3
    move v0, v1

    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_2
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .line 764
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_0

    .line 766
    move v1, p1

    .line 767
    .local v1, "newSize":I
    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    .line 768
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 769
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 770
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 771
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 772
    add-int/lit8 v1, v1, 0x1

    .line 774
    if-gez v1, :cond_1

    .line 775
    move v1, p1

    .line 779
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 780
    .local v0, "newArray":[Ljava/lang/Object;
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 782
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "newSize":I
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 777
    .restart local v1    # "newSize":I
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 429
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    .line 430
    .local v3, "ofs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    .line 432
    sub-int v2, p3, p4

    .line 433
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 434
    move v0, v3

    .line 435
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 436
    if-gtz v3, :cond_0

    .line 437
    move v3, v2

    goto :goto_0

    .line 439
    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    .line 442
    :cond_2
    add-int/2addr v0, p4

    .line 443
    add-int/2addr v3, p4

    .line 466
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 467
    :goto_2
    if-ge v0, v3, :cond_8

    .line 468
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 470
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_7

    .line 471
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 446
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    add-int/lit8 v2, p4, 0x1

    .line 447
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5

    .line 448
    move v0, v3

    .line 449
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 450
    if-gtz v3, :cond_4

    .line 451
    move v3, v2

    goto :goto_3

    .line 453
    :cond_5
    if-le v3, v2, :cond_6

    move v3, v2

    .line 456
    :cond_6
    move v4, v0

    .line 457
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 458
    sub-int v3, p4, v4

    goto :goto_1

    .line 473
    .end local v4    # "tmp":I
    .restart local v1    # "m":I
    :cond_7
    move v3, v1

    goto :goto_2

    .line 476
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 493
    .local v3, "ofs":I
    const/4 v0, 0x0

    .line 494
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    .line 496
    add-int/lit8 v2, p4, 0x1

    .line 497
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 498
    move v0, v3

    .line 499
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 500
    if-gtz v3, :cond_0

    .line 501
    move v3, v2

    goto :goto_0

    .line 503
    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    .line 506
    :cond_2
    move v4, v0

    .line 507
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 508
    sub-int v3, p4, v4

    .line 530
    .end local v4    # "tmp":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 531
    :goto_2
    if-ge v0, v3, :cond_8

    .line 532
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 534
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_7

    .line 535
    move v3, v1

    goto :goto_2

    .line 511
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_3
    sub-int v2, p3, p4

    .line 512
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_3
    if-ge v3, v2, :cond_5

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 513
    move v0, v3

    .line 514
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 515
    if-gtz v3, :cond_4

    .line 516
    move v3, v2

    goto :goto_3

    .line 518
    :cond_5
    if-le v3, v2, :cond_6

    move v3, v2

    .line 521
    :cond_6
    add-int/2addr v0, p4

    .line 522
    add-int/2addr v3, p4

    goto :goto_1

    .line 537
    .restart local v1    # "m":I
    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 540
    .end local v1    # "m":I
    :cond_8
    return v3
.end method

.method private mergeAt(I)V
    .locals 9
    .param p1, "i"    # I

    .prologue
    .line 370
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    aget v0, v5, p1

    .line 371
    .local v0, "base1":I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v3, v5, p1

    .line 372
    .local v3, "len1":I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    aget v1, v5, v6

    .line 373
    .local v1, "base2":I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    aget v4, v5, v6

    .line 381
    .local v4, "len2":I
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int v6, v3, v4

    aput v6, v5, p1

    .line 382
    iget v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne p1, v5, :cond_0

    .line 383
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 384
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 386
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 392
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v3, v7}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 394
    .local v2, "k":I
    add-int/2addr v0, v2

    .line 395
    sub-int/2addr v3, v2

    .line 396
    if-nez v3, :cond_2

    .line 411
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v6, v0, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v7, v4, -0x1

    invoke-static {v5, v6, v1, v4, v7}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    .line 404
    if-eqz v4, :cond_1

    .line 407
    if-gt v3, v4, :cond_3

    .line 408
    invoke-direct {p0, v0, v3, v1, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 410
    :cond_3
    invoke-direct {p0, v0, v3, v1, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    .prologue
    .line 338
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 339
    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 340
    .local v0, "n":I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 341
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 342
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    .line 344
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 349
    .end local v0    # "n":I
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .prologue
    .line 353
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 354
    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 355
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 356
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 358
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 16
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 664
    .local v2, "a":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v12

    .line 665
    .local v12, "tmp":[Ljava/lang/Object;
    const/4 v13, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    add-int v13, p1, p2

    add-int/lit8 v5, v13, -0x1

    .line 668
    .local v5, "cursor1":I
    add-int/lit8 v7, p4, -0x1

    .line 669
    .local v7, "cursor2":I
    add-int v13, p3, p4

    add-int/lit8 v9, v13, -0x1

    .line 672
    .local v9, "dest":I
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .local v6, "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 673
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    .line 674
    const/4 v13, 0x0

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v10, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 756
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_0
    return-void

    .line 677
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    .line 678
    sub-int v9, v10, p2

    .line 679
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v5, v6, p2

    .line 680
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    goto :goto_0

    .line 685
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .local v11, "minGallop":I
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 688
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_1
    const/4 v3, 0x0

    .line 689
    .local v3, "count1":I
    const/4 v4, 0x0

    .line 696
    .local v4, "count2":I
    :cond_2
    aget-object v13, v12, v7

    check-cast v13, Ljava/lang/Comparable;

    aget-object v14, v2, v5

    invoke-interface {v13, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_5

    .line 697
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 698
    add-int/lit8 v3, v3, 0x1

    .line 699
    const/4 v4, 0x0

    .line 700
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_11

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 741
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :cond_3
    :goto_2
    const/4 v13, 0x1

    if-ge v11, v13, :cond_4

    const/4 v11, 0x1

    .end local v11    # "minGallop":I
    :cond_4
    move-object/from16 v0, p0

    iput v11, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 743
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_d

    .line 745
    sub-int v9, v9, p2

    .line 746
    sub-int v5, v5, p2

    .line 747
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    goto :goto_0

    .line 702
    .restart local v11    # "minGallop":I
    :cond_5
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .local v8, "cursor2":I
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    .line 703
    add-int/lit8 v4, v4, 0x1

    .line 704
    const/4 v3, 0x0

    .line 705
    add-int/lit8 p4, p4, -0x1

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_6

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_2

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_6
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 707
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    :goto_3
    or-int v13, v3, v4

    if-lt v13, v11, :cond_2

    .line 715
    :goto_4
    aget-object v13, v12, v7

    check-cast v13, Ljava/lang/Comparable;

    add-int/lit8 v14, p2, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v2, v0, v1, v14}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    sub-int v3, p2, v13

    .line 716
    if-eqz v3, :cond_7

    .line 717
    sub-int/2addr v9, v3

    .line 718
    sub-int/2addr v5, v3

    .line 719
    sub-int p2, p2, v3

    .line 720
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v2, v13, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    if-eqz p2, :cond_3

    .line 723
    :cond_7
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .restart local v8    # "cursor2":I
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    .line 724
    add-int/lit8 p4, p4, -0x1

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_8

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_2

    .line 726
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_8
    aget-object v13, v2, v5

    check-cast v13, Ljava/lang/Comparable;

    const/4 v14, 0x0

    add-int/lit8 v15, p4, -0x1

    move/from16 v0, p4

    invoke-static {v13, v12, v14, v0, v15}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    sub-int v4, p4, v13

    .line 727
    if-eqz v4, :cond_10

    .line 728
    sub-int v9, v10, v4

    .line 729
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v7, v8, v4

    .line 730
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    sub-int p4, p4, v4

    .line 731
    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v12, v13, v2, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    const/4 v13, 0x1

    move/from16 v0, p4

    if-le v0, v13, :cond_3

    .line 734
    :goto_5
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 735
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_9

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_2

    .line 736
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_9
    add-int/lit8 v11, v11, -0x1

    .line 737
    const/4 v13, 0x7

    if-lt v3, v13, :cond_b

    const/4 v13, 0x1

    move v14, v13

    :goto_6
    const/4 v13, 0x7

    if-lt v4, v13, :cond_c

    const/4 v13, 0x1

    :goto_7
    or-int/2addr v13, v14

    if-nez v13, :cond_f

    .line 738
    if-gez v11, :cond_a

    const/4 v11, 0x0

    .line 739
    :cond_a
    add-int/lit8 v11, v11, 0x2

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 740
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_1

    .line 737
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_b
    const/4 v13, 0x0

    move v14, v13

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    .line 749
    .end local v6    # "cursor1":I
    .end local v10    # "dest":I
    .end local v11    # "minGallop":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_d
    if-nez p4, :cond_e

    .line 750
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Comparison method violates its general contract!"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 754
    :cond_e
    const/4 v13, 0x0

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v9, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    .restart local v11    # "minGallop":I
    :cond_f
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_4

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_10
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_5

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_11
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 14
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 559
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 560
    .local v1, "a":[Ljava/lang/Object;
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    .line 561
    .local v11, "tmp":[Ljava/lang/Object;
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-static {v1, p1, v11, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    const/4 v4, 0x0

    .line 564
    .local v4, "cursor1":I
    move/from16 v6, p3

    .line 565
    .local v6, "cursor2":I
    move v8, p1

    .line 568
    .local v8, "dest":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .local v7, "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 569
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_0

    .line 570
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 649
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :goto_0
    return-void

    .line 573
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_0
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 574
    move/from16 v0, p4

    invoke-static {v1, v7, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    add-int v12, v9, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 576
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_0

    .line 579
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_1
    iget v10, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .local v10, "minGallop":I
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 582
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :goto_1
    const/4 v2, 0x0

    .line 583
    .local v2, "count1":I
    const/4 v3, 0x0

    .line 590
    .local v3, "count2":I
    :cond_2
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    aget-object v13, v11, v4

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_5

    .line 591
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 592
    add-int/lit8 v3, v3, 0x1

    .line 593
    const/4 v2, 0x0

    .line 594
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_11

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 636
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :cond_3
    :goto_2
    const/4 v12, 0x1

    if-ge v10, v12, :cond_4

    const/4 v10, 0x1

    .end local v10    # "minGallop":I
    :cond_4
    iput v10, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 638
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_d

    .line 640
    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    goto :goto_0

    .line 596
    .restart local v10    # "minGallop":I
    :cond_5
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 597
    add-int/lit8 v2, v2, 0x1

    .line 598
    const/4 v3, 0x0

    .line 599
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_2

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_6
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 601
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_3
    or-int v12, v2, v3

    if-lt v12, v10, :cond_2

    .line 609
    :goto_4
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-static {v12, v11, v4, v0, v13}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 610
    if-eqz v2, :cond_7

    .line 611
    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    add-int/2addr v8, v2

    .line 613
    add-int/2addr v4, v2

    .line 614
    sub-int p2, p2, v2

    .line 615
    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_3

    .line 618
    :cond_7
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 619
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_8

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_2

    .line 621
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_8
    aget-object v12, v11, v4

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v12, v1, v7, v0, v13}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    .line 622
    if-eqz v3, :cond_10

    .line 623
    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    add-int v8, v9, v3

    .line 625
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    add-int v6, v7, v3

    .line 626
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    sub-int p4, p4, v3

    .line 627
    if-eqz p4, :cond_3

    .line 629
    :goto_5
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .restart local v5    # "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 630
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_9

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_2

    .line 631
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_9
    add-int/lit8 v10, v10, -0x1

    .line 632
    const/4 v12, 0x7

    if-lt v2, v12, :cond_b

    const/4 v12, 0x1

    move v13, v12

    :goto_6
    const/4 v12, 0x7

    if-lt v3, v12, :cond_c

    const/4 v12, 0x1

    :goto_7
    or-int/2addr v12, v13

    if-nez v12, :cond_f

    .line 633
    if-gez v10, :cond_a

    const/4 v10, 0x0

    .line 634
    :cond_a
    add-int/lit8 v10, v10, 0x2

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 635
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_1

    .line 632
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_b
    const/4 v12, 0x0

    move v13, v12

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    goto :goto_7

    .line 642
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .end local v10    # "minGallop":I
    .restart local v4    # "cursor1":I
    .restart local v8    # "dest":I
    :cond_d
    if-nez p2, :cond_e

    .line 643
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Comparison method violates its general contract!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 647
    :cond_e
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    .restart local v10    # "minGallop":I
    :cond_f
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_4

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_10
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_5

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_11
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto/16 :goto_3
.end method

.method private static minRunLength(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    .line 315
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 316
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    .line 328
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 329
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3
    .param p0, "arrayLen"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 793
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 795
    :cond_1
    if-le p2, p0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 796
    :cond_2
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 290
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    .line 291
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 292
    aget-object v2, p0, v1

    .line 293
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 294
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "hi":I
    .restart local p2    # "hi":I
    aput-object v2, p0, v0

    move v0, p2

    .end local p2    # "hi":I
    .restart local v0    # "hi":I
    move v1, p1

    .line 295
    .end local p1    # "lo":I
    .restart local v1    # "lo":I
    goto :goto_0

    .line 296
    .end local v2    # "t":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 148
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 149
    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .locals 8
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 152
    array-length v6, p0

    invoke-static {v6, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    .line 153
    sub-int v3, p2, p1

    .line 154
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    if-ge v3, v6, :cond_0

    .line 191
    :goto_0
    return-void

    .line 157
    :cond_0
    const/16 v6, 0x20

    if-ge v3, v6, :cond_1

    .line 158
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 159
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_0

    .line 165
    .end local v1    # "initRunLen":I
    :cond_1
    new-instance v5, Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-direct {v5, p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    .line 166
    .local v5, "ts":Lcom/badlogic/gdx/utils/ComparableTimSort;
    invoke-static {v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 169
    .local v2, "minRun":I
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    .line 172
    .local v4, "runLen":I
    if-ge v4, v2, :cond_3

    .line 173
    if-gt v3, v2, :cond_4

    move v0, v3

    .line 174
    .local v0, "force":I
    :goto_1
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 175
    move v4, v0

    .line 179
    .end local v0    # "force":I
    :cond_3
    invoke-direct {v5, p1, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    .line 180
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    .line 183
    add-int/2addr p1, v4

    .line 184
    sub-int/2addr v3, v4

    .line 185
    if-nez v3, :cond_2

    .line 189
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 173
    goto :goto_1
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;II)V
    .locals 7
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .prologue
    .line 76
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 77
    array-length v5, p1

    invoke-static {v5, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    .line 78
    sub-int v3, p3, p2

    .line 79
    .local v3, "nRemaining":I
    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    .line 117
    :goto_0
    return-void

    .line 82
    :cond_0
    const/16 v5, 0x20

    if-ge v3, v5, :cond_1

    .line 83
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 84
    .local v1, "initRunLen":I
    add-int v5, p2, v1

    invoke-static {p1, p2, p3, v5}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_0

    .line 88
    .end local v1    # "initRunLen":I
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 92
    invoke-static {v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 95
    .local v2, "minRun":I
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    .line 98
    .local v4, "runLen":I
    if-ge v4, v2, :cond_3

    .line 99
    if-gt v3, v2, :cond_4

    move v0, v3

    .line 100
    .local v0, "force":I
    :goto_1
    add-int v5, p2, v0

    add-int v6, p2, v4

    invoke-static {p1, p2, v5, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 101
    move v4, v0

    .line 105
    .end local v0    # "force":I
    :cond_3
    invoke-direct {p0, p2, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    .line 106
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    .line 109
    add-int/2addr p2, v4

    .line 110
    sub-int/2addr v3, v4

    .line 111
    if-nez v3, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 99
    goto :goto_1
.end method

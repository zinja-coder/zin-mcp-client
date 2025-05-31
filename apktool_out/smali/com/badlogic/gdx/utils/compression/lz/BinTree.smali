.class public Lcom/badlogic/gdx/utils/compression/lz/BinTree;
.super Lcom/badlogic/gdx/utils/compression/lz/InWindow;
.source "BinTree.java"


# static fields
.field private static final CrcTable:[I

.field static final kBT2HashSize:I = 0x10000

.field static final kEmptyHashValue:I = 0x0

.field static final kHash2Size:I = 0x400

.field static final kHash3Offset:I = 0x400

.field static final kHash3Size:I = 0x10000

.field static final kMaxValForNormalize:I = 0x3fffffff

.field static final kStartMaxLen:I = 0x1


# instance fields
.field HASH_ARRAY:Z

.field _cutValue:I

.field _cyclicBufferPos:I

.field _cyclicBufferSize:I

.field _hash:[I

.field _hashMask:I

.field _hashSizeSum:I

.field _matchMaxLen:I

.field _son:[I

.field kFixHashSize:I

.field kMinMatchCheck:I

.field kNumHashDirectBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 298
    new-array v3, v5, [I

    sput-object v3, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 302
    move v2, v0

    .line 303
    .local v2, "r":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 304
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 305
    ushr-int/lit8 v3, v2, 0x1

    const v4, -0x12477ce0

    xor-int v2, v3, v4

    .line 303
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 308
    :cond_1
    sget-object v3, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    aput v2, v3, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "j":I
    .end local v2    # "r":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;-><init>()V

    .line 9
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    .line 15
    const/16 v0, 0xff

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 17
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    .line 29
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 31
    const v0, 0x10400

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    return-void
.end method


# virtual methods
.method public Create(IIII)Z
    .locals 5
    .param p1, "historySize"    # I
    .param p2, "keepAddBufferBefore"    # I
    .param p3, "matchMaxLen"    # I
    .param p4, "keepAddBufferAfter"    # I

    .prologue
    .line 61
    const v3, 0x3ffffeff    # 1.9999694f

    if-le p1, v3, :cond_0

    const/4 v3, 0x0

    .line 89
    :goto_0
    return v3

    .line 62
    :cond_0
    shr-int/lit8 v3, p3, 0x1

    add-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 64
    add-int v3, p1, p2

    add-int/2addr v3, p3

    add-int/2addr v3, p4

    div-int/lit8 v3, v3, 0x2

    add-int/lit16 v2, v3, 0x100

    .line 66
    .local v2, "windowReservSize":I
    add-int v3, p1, p2

    add-int v4, p3, p4

    invoke-super {p0, v3, v4, v2}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Create(III)V

    .line 68
    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    .line 70
    add-int/lit8 v0, p1, 0x1

    .line 71
    .local v0, "cyclicBufferSize":I
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-eq v3, v0, :cond_1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    .line 73
    :cond_1
    const/high16 v1, 0x10000

    .line 75
    .local v1, "hs":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v3, :cond_3

    .line 76
    add-int/lit8 v1, p1, -0x1

    .line 77
    shr-int/lit8 v3, v1, 0x1

    or-int/2addr v1, v3

    .line 78
    shr-int/lit8 v3, v1, 0x2

    or-int/2addr v1, v3

    .line 79
    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v1, v3

    .line 80
    shr-int/lit8 v3, v1, 0x8

    or-int/2addr v1, v3

    .line 81
    shr-int/lit8 v1, v1, 0x1

    .line 82
    const v3, 0xffff

    or-int/2addr v1, v3

    .line 83
    const/high16 v3, 0x1000000

    if-le v1, v3, :cond_2

    shr-int/lit8 v1, v1, 0x1

    .line 84
    :cond_2
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v1, v3

    .line 88
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-eq v1, v3, :cond_4

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    .line 89
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public GetMatches([I)I
    .locals 28
    .param p1, "distances"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_6

    .line 95
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    move/from16 v16, v0

    .line 104
    .local v16, "lenLimit":I
    :cond_0
    const/16 v19, 0x0

    .line 105
    .local v19, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    move/from16 v26, v0

    sub-int v17, v25, v26

    .line 106
    .local v17, "matchMinPos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v26, v0

    add-int v4, v25, v26

    .line 107
    .local v4, "cur":I
    const/16 v18, 0x1

    .line 108
    .local v18, "maxLen":I
    const/4 v10, 0x0

    .local v10, "hash2Value":I
    const/4 v11, 0x0

    .line 110
    .local v11, "hash3Value":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 111
    sget-object v25, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v4

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, 0x1

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    xor-int v24, v25, v26

    .line 112
    .local v24, "temp":I
    move/from16 v0, v24

    and-int/lit16 v10, v0, 0x3ff

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    add-int/lit8 v26, v4, 0x2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    xor-int v24, v24, v25

    .line 114
    const v25, 0xffff

    and-int v11, v24, v25

    .line 115
    sget-object v25, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, 0x3

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    aget v25, v25, v26

    shl-int/lit8 v25, v25, 0x5

    xor-int v25, v25, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    move/from16 v26, v0

    and-int v12, v25, v26

    .line 119
    .end local v24    # "temp":I
    .local v12, "hashValue":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    move/from16 v26, v0

    add-int v26, v26, v12

    aget v5, v25, v26

    .line 120
    .local v5, "curMatch":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v25, v0

    aget v6, v25, v10

    .line 122
    .local v6, "curMatch2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v25, v0

    add-int/lit16 v0, v11, 0x400

    move/from16 v26, v0

    aget v7, v25, v26

    .line 123
    .local v7, "curMatch3":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v26, v0

    aput v26, v25, v10

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v25, v0

    add-int/lit16 v0, v11, 0x400

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v27, v0

    aput v27, v25, v26

    .line 125
    move/from16 v0, v17

    if-le v6, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    move/from16 v26, v0

    add-int v26, v26, v6

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 126
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .local v20, "offset":I
    const/16 v18, 0x2

    aput v18, p1, v19

    .line 127
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v25, v0

    sub-int v25, v25, v6

    add-int/lit8 v25, v25, -0x1

    aput v25, p1, v20

    .line 129
    :cond_1
    move/from16 v0, v17

    if-le v7, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    move/from16 v26, v0

    add-int v26, v26, v7

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 130
    if-ne v7, v6, :cond_2

    add-int/lit8 v19, v19, -0x2

    .line 131
    :cond_2
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    const/16 v18, 0x3

    aput v18, p1, v19

    .line 132
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v25, v0

    sub-int v25, v25, v7

    add-int/lit8 v25, v25, -0x1

    aput v25, p1, v20

    .line 133
    move v6, v7

    .line 135
    :cond_3
    if-eqz v19, :cond_4

    if-ne v6, v5, :cond_4

    .line 136
    add-int/lit8 v19, v19, -0x2

    .line 137
    const/16 v18, 0x1

    .line 141
    .end local v6    # "curMatch2":I
    .end local v7    # "curMatch3":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    move/from16 v26, v0

    add-int v26, v26, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v27, v0

    aput v27, v25, v26

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x1

    add-int/lit8 v22, v25, 0x1

    .line 144
    .local v22, "ptr0":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    shl-int/lit8 v23, v25, 0x1

    .line 147
    .local v23, "ptr1":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .local v15, "len1":I
    move v14, v15

    .line 149
    .local v14, "len0":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 150
    move/from16 v0, v17

    if-le v5, v0, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    move/from16 v26, v0

    add-int v26, v26, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    move/from16 v27, v0

    add-int v26, v26, v27

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    move/from16 v27, v0

    add-int v27, v27, v4

    aget-byte v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 152
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    move/from16 v18, v0

    aput v18, p1, v19

    .line 153
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v25, v0

    sub-int v25, v25, v5

    add-int/lit8 v25, v25, -0x1

    aput v25, p1, v20

    .line 158
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .local v2, "count":I
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    move/from16 v20, v19

    .line 161
    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    :goto_2
    move/from16 v0, v17

    if-le v5, v0, :cond_f

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    if-nez v3, :cond_9

    .line 162
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v27, v26, v23

    aput v27, v25, v22

    move/from16 v19, v20

    .line 196
    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 197
    .end local v2    # "count":I
    .end local v4    # "cur":I
    .end local v5    # "curMatch":I
    .end local v10    # "hash2Value":I
    .end local v11    # "hash3Value":I
    .end local v12    # "hashValue":I
    .end local v14    # "len0":I
    .end local v15    # "len1":I
    .end local v17    # "matchMinPos":I
    .end local v18    # "maxLen":I
    .end local v19    # "offset":I
    .end local v22    # "ptr0":I
    .end local v23    # "ptr1":I
    :goto_5
    return v19

    .line 97
    .end local v16    # "lenLimit":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v26, v0

    sub-int v16, v25, v26

    .line 98
    .restart local v16    # "lenLimit":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 100
    const/16 v19, 0x0

    goto :goto_5

    .line 105
    .restart local v19    # "offset":I
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 117
    .restart local v4    # "cur":I
    .restart local v10    # "hash2Value":I
    .restart local v11    # "hash3Value":I
    .restart local v17    # "matchMinPos":I
    .restart local v18    # "maxLen":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    aget-byte v25, v25, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, 0x1

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    xor-int v12, v25, v26

    .restart local v12    # "hashValue":I
    goto/16 :goto_1

    .line 165
    .end local v19    # "offset":I
    .restart local v2    # "count":I
    .restart local v5    # "curMatch":I
    .restart local v14    # "len0":I
    .restart local v15    # "len1":I
    .restart local v20    # "offset":I
    .restart local v22    # "ptr0":I
    .restart local v23    # "ptr1":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v25, v0

    sub-int v9, v25, v5

    .line 166
    .local v9, "delta":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v9, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    sub-int v25, v25, v9

    :goto_6
    shl-int/lit8 v8, v25, 0x1

    .line 169
    .local v8, "cyclicPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    move/from16 v25, v0

    add-int v21, v25, v5

    .line 170
    .local v21, "pby1":I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 171
    .local v13, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    add-int v26, v21, v13

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int v27, v4, v13

    aget-byte v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 172
    :cond_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_b

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    add-int v26, v21, v13

    aget-byte v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int v27, v4, v13

    aget-byte v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 174
    :cond_b
    move/from16 v0, v18

    if-ge v0, v13, :cond_d

    .line 175
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move/from16 v18, v13

    aput v13, p1, v20

    .line 176
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    add-int/lit8 v25, v9, -0x1

    aput v25, p1, v19

    .line 177
    move/from16 v0, v16

    if-ne v13, v0, :cond_d

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v26, v0

    aget v26, v26, v8

    aput v26, v25, v23

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v26, v0

    add-int/lit8 v27, v8, 0x1

    aget v26, v26, v27

    aput v26, v25, v22

    move/from16 v19, v20

    .line 180
    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    goto/16 :goto_4

    .line 166
    .end local v8    # "cyclicPos":I
    .end local v13    # "len":I
    .end local v19    # "offset":I
    .end local v21    # "pby1":I
    .restart local v20    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v25, v0

    sub-int v25, v25, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    move/from16 v26, v0

    add-int v25, v25, v26

    goto/16 :goto_6

    .restart local v8    # "cyclicPos":I
    .restart local v13    # "len":I
    .restart local v21    # "pby1":I
    :cond_d
    move/from16 v19, v20

    .line 184
    .end local v20    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v25, v0

    add-int v26, v21, v13

    aget-byte v25, v25, v26

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v26, v0

    add-int v27, v4, v13

    aget-byte v26, v26, v27

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v25, v0

    aput v5, v25, v23

    .line 186
    add-int/lit8 v23, v8, 0x1

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v25, v0

    aget v5, v25, v23

    .line 188
    move v15, v13

    :goto_7
    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    move/from16 v20, v19

    .line 195
    .end local v19    # "offset":I
    .restart local v20    # "offset":I
    goto/16 :goto_2

    .line 190
    .end local v3    # "count":I
    .end local v20    # "offset":I
    .restart local v2    # "count":I
    .restart local v19    # "offset":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v25, v0

    aput v5, v25, v22

    .line 191
    move/from16 v22, v8

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v25, v0

    aget v5, v25, v22

    .line 193
    move v14, v13

    goto :goto_7

    .end local v2    # "count":I
    .end local v8    # "cyclicPos":I
    .end local v9    # "delta":I
    .end local v13    # "len":I
    .end local v19    # "offset":I
    .end local v21    # "pby1":I
    .restart local v3    # "count":I
    .restart local v20    # "offset":I
    :cond_f
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_3
.end method

.method public Init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Init()V

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    aput v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    .line 51
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    .line 52
    return-void
.end method

.method public MovePos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->MovePos()V

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    const v1, 0x3fffffff    # 1.9999999f

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Normalize()V

    .line 58
    :cond_1
    return-void
.end method

.method Normalize()V
    .locals 3

    .prologue
    .line 288
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int v0, v1, v2

    .line 289
    .local v0, "subValue":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    .line 290
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    .line 292
    return-void
.end method

.method NormalizeLinks([III)V
    .locals 2
    .param p1, "items"    # [I
    .param p2, "numItems"    # I
    .param p3, "subValue"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 278
    aget v1, p1, v0

    .line 279
    .local v1, "value":I
    if-gt v1, p3, :cond_0

    .line 280
    const/4 v1, 0x0

    .line 283
    :goto_1
    aput v1, p1, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    sub-int/2addr v1, p3

    goto :goto_1

    .line 285
    .end local v1    # "value":I
    :cond_1
    return-void
.end method

.method public SetCutValue(I)V
    .locals 0
    .param p1, "cutValue"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 296
    return-void
.end method

.method public SetType(I)V
    .locals 3
    .param p1, "numHashBytes"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 34
    if-le p1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    .line 35
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v0, :cond_1

    .line 36
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 38
    const v0, 0x10400

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    .line 44
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0

    .line 40
    :cond_1
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 42
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    goto :goto_1
.end method

.method public Skip(I)V
    .locals 23
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    .line 213
    .local v14, "lenLimit":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    move/from16 v21, v0

    sub-int v15, v20, v21

    .line 214
    .local v15, "matchMinPos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v21, v0

    add-int v4, v20, v21

    .line 218
    .local v4, "cur":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 219
    sget-object v20, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v4

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v4, 0x1

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    xor-int v19, v20, v21

    .line 220
    .local v19, "temp":I
    move/from16 v0, v19

    and-int/lit16 v8, v0, 0x3ff

    .line 221
    .local v8, "hash2Value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v21, v0

    aput v21, v20, v8

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, 0x2

    aget-byte v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    xor-int v19, v19, v20

    .line 223
    const v20, 0xffff

    and-int v9, v19, v20

    .line 224
    .local v9, "hash3Value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v20, v0

    add-int/lit16 v0, v9, 0x400

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v22, v0

    aput v22, v20, v21

    .line 225
    sget-object v20, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v4, 0x3

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    shl-int/lit8 v20, v20, 0x5

    xor-int v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    move/from16 v21, v0

    and-int v10, v20, v21

    .line 229
    .end local v8    # "hash2Value":I
    .end local v9    # "hash3Value":I
    .end local v19    # "temp":I
    .local v10, "hashValue":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    move/from16 v21, v0

    add-int v21, v21, v10

    aget v5, v20, v21

    .line 230
    .local v5, "curMatch":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    move/from16 v21, v0

    add-int v21, v21, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v22, v0

    aput v22, v20, v21

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x1

    add-int/lit8 v17, v20, 0x1

    .line 233
    .local v17, "ptr0":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    shl-int/lit8 v18, v20, 0x1

    .line 236
    .local v18, "ptr1":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .local v13, "len1":I
    move v12, v13

    .line 238
    .local v12, "len0":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .local v2, "count":I
    move v3, v2

    .line 240
    .end local v2    # "count":I
    .local v3, "count":I
    :goto_2
    if-le v5, v15, :cond_b

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    if-nez v3, :cond_5

    .line 241
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v22, v21, v18

    aput v22, v20, v17

    .line 272
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 273
    .end local v2    # "count":I
    .end local v4    # "cur":I
    .end local v5    # "curMatch":I
    .end local v10    # "hashValue":I
    .end local v12    # "len0":I
    .end local v13    # "len1":I
    .end local v15    # "matchMinPos":I
    .end local v17    # "ptr0":I
    .end local v18    # "ptr1":I
    :goto_5
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 274
    return-void

    .line 206
    .end local v14    # "lenLimit":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 207
    .restart local v14    # "lenLimit":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_1

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    goto :goto_5

    .line 213
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 227
    .restart local v4    # "cur":I
    .restart local v15    # "matchMinPos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v4

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v4, 0x1

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    xor-int v10, v20, v21

    .restart local v10    # "hashValue":I
    goto/16 :goto_1

    .line 245
    .restart local v2    # "count":I
    .restart local v5    # "curMatch":I
    .restart local v12    # "len0":I
    .restart local v13    # "len1":I
    .restart local v17    # "ptr0":I
    .restart local v18    # "ptr1":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move/from16 v20, v0

    sub-int v7, v20, v5

    .line 246
    .local v7, "delta":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v7, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    sub-int v20, v20, v7

    :goto_6
    shl-int/lit8 v6, v20, 0x1

    .line 249
    .local v6, "cyclicPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    move/from16 v20, v0

    add-int v16, v20, v5

    .line 250
    .local v16, "pby1":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 251
    .local v11, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    add-int v21, v16, v11

    aget-byte v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int v22, v4, v11

    aget-byte v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 252
    :cond_6
    add-int/lit8 v11, v11, 0x1

    if-eq v11, v14, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    add-int v21, v16, v11

    aget-byte v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int v22, v4, v11

    aget-byte v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 254
    :cond_7
    if-ne v11, v14, :cond_9

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    aput v21, v20, v18

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v6, 0x1

    aget v21, v21, v22

    aput v21, v20, v17

    goto/16 :goto_4

    .line 246
    .end local v6    # "cyclicPos":I
    .end local v11    # "len":I
    .end local v16    # "pby1":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    move/from16 v20, v0

    sub-int v20, v20, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    move/from16 v21, v0

    add-int v20, v20, v21

    goto :goto_6

    .line 260
    .restart local v6    # "cyclicPos":I
    .restart local v11    # "len":I
    .restart local v16    # "pby1":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v20, v0

    add-int v21, v16, v11

    aget-byte v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v21, v0

    add-int v22, v4, v11

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v20, v0

    aput v5, v20, v18

    .line 262
    add-int/lit8 v18, v6, 0x1

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v20, v0

    aget v5, v20, v18

    .line 264
    move v13, v11

    :goto_7
    move v3, v2

    .line 271
    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 266
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v20, v0

    aput v5, v20, v17

    .line 267
    move/from16 v17, v6

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v20, v0

    aget v5, v20, v17

    .line 269
    move v12, v11

    goto :goto_7

    .end local v2    # "count":I
    .end local v6    # "cyclicPos":I
    .end local v7    # "delta":I
    .end local v11    # "len":I
    .end local v16    # "pby1":I
    .restart local v3    # "count":I
    :cond_b
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_3
.end method

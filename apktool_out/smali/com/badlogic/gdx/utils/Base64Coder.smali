.class public Lcom/badlogic/gdx/utils/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static map1:[C = null

.field private static map2:[B = null

.field private static final systemLineSeparator:Ljava/lang/String; = "\n"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    .line 36
    new-array v3, v6, [C

    sput-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "i":I
    const/16 v0, 0x41

    .local v0, "c":C
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 40
    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    .line 39
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 41
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 42
    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    .line 41
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 43
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 44
    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-char v0, v3, v2

    .line 43
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 45
    :cond_2
    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v4, 0x2b

    aput-char v4, v3, v2

    .line 46
    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/16 v4, 0x2f

    aput-char v4, v3, v1

    .line 50
    const/16 v3, 0x80

    new-array v3, v3, [B

    sput-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    .line 52
    const/4 v1, 0x0

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_3
    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 53
    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 54
    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_4

    .line 55
    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    sget-object v4, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v4, v4, v1

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 56
    :cond_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 2
    .param p0, "in"    # [C

    .prologue
    .line 187
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .locals 22
    .param p0, "in"    # [C
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .prologue
    .line 198
    rem-int/lit8 v20, p2, 0x4

    if-eqz v20, :cond_0

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 199
    :cond_0
    :goto_0
    if-lez p2, :cond_1

    add-int v20, p1, p2

    add-int/lit8 v20, v20, -0x1

    aget-char v20, p0, v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 200
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 201
    :cond_1
    mul-int/lit8 v20, p2, 0x3

    div-int/lit8 v16, v20, 0x4

    .line 202
    .local v16, "oLen":I
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 203
    .local v19, "out":[B
    move/from16 v11, p1

    .line 204
    .local v11, "ip":I
    add-int v10, p1, p2

    .line 205
    .local v10, "iEnd":I
    const/16 v17, 0x0

    .local v17, "op":I
    move/from16 v18, v17

    .end local v17    # "op":I
    .local v18, "op":I
    move v12, v11

    .line 206
    .end local v11    # "ip":I
    .local v12, "ip":I
    :goto_1
    if-ge v12, v10, :cond_8

    .line 207
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    aget-char v6, p0, v12

    .line 208
    .local v6, "i0":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "ip":I
    .restart local v12    # "ip":I
    aget-char v7, p0, v11

    .line 209
    .local v7, "i1":I
    if-ge v12, v10, :cond_3

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    aget-char v8, p0, v12

    move v12, v11

    .line 210
    .end local v11    # "ip":I
    .local v8, "i2":I
    .restart local v12    # "ip":I
    :goto_2
    if-ge v12, v10, :cond_4

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    aget-char v9, p0, v12

    .line 211
    .local v9, "i3":I
    :goto_3
    const/16 v20, 0x7f

    move/from16 v0, v20

    if-gt v6, v0, :cond_2

    const/16 v20, 0x7f

    move/from16 v0, v20

    if-gt v7, v0, :cond_2

    const/16 v20, 0x7f

    move/from16 v0, v20

    if-gt v8, v0, :cond_2

    const/16 v20, 0x7f

    move/from16 v0, v20

    if-le v9, v0, :cond_5

    .line 212
    :cond_2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Illegal character in Base64 encoded data."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 209
    .end local v8    # "i2":I
    .end local v9    # "i3":I
    .end local v11    # "ip":I
    .restart local v12    # "ip":I
    :cond_3
    const/16 v8, 0x41

    goto :goto_2

    .line 210
    .restart local v8    # "i2":I
    :cond_4
    const/16 v9, 0x41

    move v11, v12

    .end local v12    # "ip":I
    .restart local v11    # "ip":I
    goto :goto_3

    .line 213
    .restart local v9    # "i3":I
    :cond_5
    sget-object v20, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    aget-byte v2, v20, v6

    .line 214
    .local v2, "b0":I
    sget-object v20, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    aget-byte v3, v20, v7

    .line 215
    .local v3, "b1":I
    sget-object v20, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    aget-byte v4, v20, v8

    .line 216
    .local v4, "b2":I
    sget-object v20, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    aget-byte v5, v20, v9

    .line 217
    .local v5, "b3":I
    if-ltz v2, :cond_6

    if-ltz v3, :cond_6

    if-ltz v4, :cond_6

    if-gez v5, :cond_7

    .line 218
    :cond_6
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Illegal character in Base64 encoded data."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 219
    :cond_7
    shl-int/lit8 v20, v2, 0x2

    ushr-int/lit8 v21, v3, 0x4

    or-int v13, v20, v21

    .line 220
    .local v13, "o0":I
    and-int/lit8 v20, v3, 0xf

    shl-int/lit8 v20, v20, 0x4

    ushr-int/lit8 v21, v4, 0x2

    or-int v14, v20, v21

    .line 221
    .local v14, "o1":I
    and-int/lit8 v20, v4, 0x3

    shl-int/lit8 v20, v20, 0x6

    or-int v15, v20, v5

    .line 222
    .local v15, "o2":I
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "op":I
    .restart local v17    # "op":I
    int-to-byte v0, v13

    move/from16 v20, v0

    aput-byte v20, v19, v18

    .line 223
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "op":I
    .restart local v18    # "op":I
    int-to-byte v0, v14

    move/from16 v20, v0

    aput-byte v20, v19, v17

    .line 224
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "op":I
    .restart local v17    # "op":I
    int-to-byte v0, v15

    move/from16 v20, v0

    aput-byte v20, v19, v18

    :goto_5
    move/from16 v18, v17

    .end local v17    # "op":I
    .restart local v18    # "op":I
    move v12, v11

    .line 225
    .end local v11    # "ip":I
    .restart local v12    # "ip":I
    goto/16 :goto_1

    .line 226
    .end local v2    # "b0":I
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    .end local v5    # "b3":I
    .end local v6    # "i0":I
    .end local v7    # "i1":I
    .end local v8    # "i2":I
    .end local v9    # "i3":I
    .end local v13    # "o0":I
    .end local v14    # "o1":I
    .end local v15    # "o2":I
    :cond_8
    return-object v19

    .end local v12    # "ip":I
    .restart local v2    # "b0":I
    .restart local v3    # "b1":I
    .restart local v4    # "b2":I
    .restart local v5    # "b3":I
    .restart local v6    # "i0":I
    .restart local v7    # "i1":I
    .restart local v8    # "i2":I
    .restart local v9    # "i3":I
    .restart local v11    # "ip":I
    .restart local v13    # "o0":I
    .restart local v14    # "o1":I
    .restart local v15    # "o2":I
    :cond_9
    move/from16 v17, v18

    .end local v18    # "op":I
    .restart local v17    # "op":I
    goto :goto_5

    :cond_a
    move/from16 v18, v17

    .end local v17    # "op":I
    .restart local v18    # "op":I
    goto :goto_4
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [C

    .line 164
    .local v0, "buf":[C
    const/4 v3, 0x0

    .line 165
    .local v3, "p":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 167
    .local v1, "c":C
    const/16 v5, 0x20

    if-eq v1, v5, :cond_0

    const/16 v5, 0xd

    if-eq v1, v5, :cond_0

    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    const/16 v5, 0x9

    if-eq v1, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .local v4, "p":I
    aput-char v1, v0, v3

    move v3, v4

    .line 165
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "c":C
    :cond_1
    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII)[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 2
    .param p0, "in"    # [B

    .prologue
    .line 104
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 1
    .param p0, "in"    # [B
    .param p1, "iLen"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 17
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .prologue
    .line 123
    mul-int/lit8 v15, p2, 0x4

    add-int/lit8 v15, v15, 0x2

    div-int/lit8 v10, v15, 0x3

    .line 124
    .local v10, "oDataLen":I
    add-int/lit8 v15, p2, 0x2

    div-int/lit8 v15, v15, 0x3

    mul-int/lit8 v11, v15, 0x4

    .line 125
    .local v11, "oLen":I
    new-array v14, v11, [C

    .line 126
    .local v14, "out":[C
    move/from16 v4, p1

    .line 127
    .local v4, "ip":I
    add-int v3, p1, p2

    .line 128
    .local v3, "iEnd":I
    const/4 v12, 0x0

    .local v12, "op":I
    move v13, v12

    .end local v12    # "op":I
    .local v13, "op":I
    move v5, v4

    .line 129
    .end local v4    # "ip":I
    .local v5, "ip":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 130
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    aget-byte v15, p0, v5

    and-int/lit16 v0, v15, 0xff

    .line 131
    .local v0, "i0":I
    if-ge v4, v3, :cond_0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    aget-byte v15, p0, v4

    and-int/lit16 v1, v15, 0xff

    .line 132
    .local v1, "i1":I
    :goto_1
    if-ge v5, v3, :cond_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    aget-byte v15, p0, v5

    and-int/lit16 v2, v15, 0xff

    .line 133
    .local v2, "i2":I
    :goto_2
    ushr-int/lit8 v6, v0, 0x2

    .line 134
    .local v6, "o0":I
    and-int/lit8 v15, v0, 0x3

    shl-int/lit8 v15, v15, 0x4

    ushr-int/lit8 v16, v1, 0x4

    or-int v7, v15, v16

    .line 135
    .local v7, "o1":I
    and-int/lit8 v15, v1, 0xf

    shl-int/lit8 v15, v15, 0x2

    ushr-int/lit8 v16, v2, 0x6

    or-int v8, v15, v16

    .line 136
    .local v8, "o2":I
    and-int/lit8 v9, v2, 0x3f

    .line 137
    .local v9, "o3":I
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "op":I
    .restart local v12    # "op":I
    sget-object v15, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v15, v15, v6

    aput-char v15, v14, v13

    .line 138
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "op":I
    .restart local v13    # "op":I
    sget-object v15, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v15, v15, v7

    aput-char v15, v14, v12

    .line 139
    if-ge v13, v10, :cond_2

    sget-object v15, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v15, v15, v8

    :goto_3
    aput-char v15, v14, v13

    .line 140
    add-int/lit8 v12, v13, 0x1

    .line 141
    .end local v13    # "op":I
    .restart local v12    # "op":I
    if-ge v12, v10, :cond_3

    sget-object v15, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v15, v15, v9

    :goto_4
    aput-char v15, v14, v12

    .line 142
    add-int/lit8 v12, v12, 0x1

    move v13, v12

    .end local v12    # "op":I
    .restart local v13    # "op":I
    move v5, v4

    .line 143
    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    goto :goto_0

    .line 131
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    .end local v5    # "ip":I
    .end local v6    # "o0":I
    .end local v7    # "o1":I
    .end local v8    # "o2":I
    .end local v9    # "o3":I
    .restart local v4    # "ip":I
    :cond_0
    const/4 v1, 0x0

    move v5, v4

    .end local v4    # "ip":I
    .restart local v5    # "ip":I
    goto :goto_1

    .line 132
    .restart local v1    # "i1":I
    :cond_1
    const/4 v2, 0x0

    move v4, v5

    .end local v5    # "ip":I
    .restart local v4    # "ip":I
    goto :goto_2

    .line 139
    .restart local v2    # "i2":I
    .restart local v6    # "o0":I
    .restart local v7    # "o1":I
    .restart local v8    # "o2":I
    .restart local v9    # "o3":I
    :cond_2
    const/16 v15, 0x3d

    goto :goto_3

    .line 141
    .end local v13    # "op":I
    .restart local v12    # "op":I
    :cond_3
    const/16 v15, 0x3d

    goto :goto_4

    .line 144
    .end local v0    # "i0":I
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    .end local v4    # "ip":I
    .end local v6    # "o0":I
    .end local v7    # "o1":I
    .end local v8    # "o2":I
    .end local v9    # "o3":I
    .end local v12    # "op":I
    .restart local v5    # "ip":I
    .restart local v13    # "op":I
    :cond_4
    return-object v14
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # [B

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p0

    const/16 v2, 0x4c

    const-string v3, "\n"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeLines([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "lineLen"    # I
    .param p4, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 84
    mul-int/lit8 v6, p3, 0x3

    div-int/lit8 v0, v6, 0x4

    .line 85
    .local v0, "blockLen":I
    if-gtz v0, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 86
    :cond_0
    add-int v6, p2, v0

    add-int/lit8 v6, v6, -0x1

    div-int v5, v6, v0

    .line 87
    .local v5, "lines":I
    add-int/lit8 v6, p2, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/2addr v7, v5

    add-int v2, v6, v7

    .line 88
    .local v2, "bufLen":I
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 89
    .local v1, "buf":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v3, 0x0

    .line 90
    .local v3, "ip":I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 91
    sub-int v6, p2, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 92
    .local v4, "l":I
    add-int v6, p1, v3

    invoke-static {p0, v6, v4}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII)[C

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 93
    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 94
    add-int/2addr v3, v4

    .line 95
    goto :goto_0

    .line 96
    .end local v4    # "l":I
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

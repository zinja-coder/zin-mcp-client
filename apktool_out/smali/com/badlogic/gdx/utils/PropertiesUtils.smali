.class public final Lcom/badlogic/gdx/utils/PropertiesUtils;
.super Ljava/lang/Object;
.source "PropertiesUtils.java"


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final NONE:I = 0x0

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V
    .locals 7
    .param p0, "outBuffer"    # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "escapeSpace"    # Z
    .param p3, "escapeUnicode"    # Z

    .prologue
    const/16 v6, 0x5c

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 257
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_8

    .line 258
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 260
    .local v0, "ch":C
    const/16 v5, 0x3d

    if-le v0, v5, :cond_2

    const/16 v5, 0x7f

    if-ge v0, v5, :cond_2

    .line 261
    if-ne v0, v6, :cond_1

    const-string v5, "\\\\"

    :goto_1
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 257
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_1

    .line 264
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 287
    const/16 v5, 0x20

    if-lt v0, v5, :cond_3

    const/16 v5, 0x7e

    if-le v0, v5, :cond_5

    :cond_3
    const/4 v5, 0x1

    :goto_3
    and-int/2addr v5, p3

    if-eqz v5, :cond_7

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "hex":Ljava/lang/String;
    const-string v5, "\\u"

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 290
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v3, v5, :cond_6

    .line 291
    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 266
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :sswitch_0
    if-eqz v2, :cond_4

    if-eqz p2, :cond_0

    :cond_4
    const-string v5, "\\ "

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 269
    :sswitch_1
    const-string v5, "\\n"

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 272
    :sswitch_2
    const-string v5, "\\r"

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 275
    :sswitch_3
    const-string v5, "\\t"

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 278
    :sswitch_4
    const-string v5, "\\f"

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 284
    :sswitch_5
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 287
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 293
    .restart local v1    # "hex":Ljava/lang/String;
    .restart local v3    # "j":I
    :cond_6
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 295
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_7
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 300
    .end local v0    # "ch":C
    :cond_8
    return-void

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xc -> :sswitch_4
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
        0x21 -> :sswitch_5
        0x23 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3d -> :sswitch_5
    .end sparse-switch
.end method

.method public static load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V
    .locals 21
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    new-instance v19, Ljava/lang/NullPointerException;

    const-string v20, "ObjectMap cannot be null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 55
    :cond_0
    if-nez p1, :cond_1

    new-instance v19, Ljava/lang/NullPointerException;

    const-string v20, "Reader cannot be null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 56
    :cond_1
    const/4 v11, 0x0

    .local v11, "mode":I
    const/16 v17, 0x0

    .local v17, "unicode":I
    const/4 v5, 0x0

    .line 57
    .local v5, "count":I
    const/16 v19, 0x28

    move/from16 v0, v19

    new-array v4, v0, [C

    .line 58
    .local v4, "buf":[C
    const/4 v14, 0x0

    .local v14, "offset":I
    const/4 v10, -0x1

    .line 59
    .local v10, "keyLength":I
    const/4 v7, 0x1

    .line 61
    .local v7, "firstChar":Z
    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v3, "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 65
    .local v8, "intVal":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    .line 197
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_18

    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_18

    .line 198
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 68
    :cond_3
    int-to-char v13, v8

    .line 70
    .local v13, "nextChar":C
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v14, v0, :cond_4

    .line 71
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [C

    .line 72
    .local v12, "newBuf":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v12, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    move-object v4, v12

    .line 75
    .end local v12    # "newBuf":[C
    :cond_4
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 76
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 77
    .local v6, "digit":I
    if-ltz v6, :cond_6

    .line 78
    shl-int/lit8 v19, v17, 0x4

    add-int v17, v19, v6

    .line 79
    add-int/lit8 v5, v5, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v5, v0, :cond_2

    .line 85
    :cond_5
    const/4 v11, 0x0

    .line 86
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .local v15, "offset":I
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v4, v14

    .line 87
    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_8

    move v14, v15

    .line 88
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_0

    .line 82
    :cond_6
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_5

    .line 83
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid Unicode sequence: illegal character"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .end local v6    # "digit":I
    :cond_7
    move v15, v14

    .line 91
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_b

    .line 92
    const/4 v11, 0x0

    .line 93
    sparse-switch v13, :sswitch_data_0

    .line 190
    :cond_9
    :goto_1
    const/4 v7, 0x0

    .line 191
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    .line 192
    move v10, v15

    .line 193
    const/4 v11, 0x0

    .line 195
    :cond_a
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    aput-char v13, v4, v15

    goto/16 :goto_0

    .line 95
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :sswitch_0
    const/4 v11, 0x3

    move v14, v15

    .line 96
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 98
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :sswitch_1
    const/4 v11, 0x5

    move v14, v15

    .line 99
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 101
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :sswitch_2
    const/16 v13, 0x8

    .line 102
    goto :goto_1

    .line 104
    :sswitch_3
    const/16 v13, 0xc

    .line 105
    goto :goto_1

    .line 107
    :sswitch_4
    const/16 v13, 0xa

    .line 108
    goto :goto_1

    .line 110
    :sswitch_5
    const/16 v13, 0xd

    .line 111
    goto :goto_1

    .line 113
    :sswitch_6
    const/16 v13, 0x9

    .line 114
    goto :goto_1

    .line 116
    :sswitch_7
    const/4 v11, 0x2

    .line 117
    const/4 v5, 0x0

    move/from16 v17, v5

    move v14, v15

    .line 118
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 121
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_b
    sparse-switch v13, :sswitch_data_1

    .line 173
    :cond_c
    invoke-static {v13}, Ljava/lang/Character;->isSpace(C)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 174
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_d

    .line 175
    const/4 v11, 0x5

    .line 178
    :cond_d
    if-eqz v15, :cond_1c

    if-eq v15, v10, :cond_1c

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v11, v0, :cond_15

    move v14, v15

    .line 179
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 124
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :sswitch_8
    if-eqz v7, :cond_c

    .line 126
    :cond_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 127
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_f

    move v14, v15

    .line 128
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 130
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_f
    int-to-char v13, v8

    .line 131
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v13, v0, :cond_1c

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v13, v0, :cond_e

    move v14, v15

    .line 132
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 139
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :sswitch_9
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_10

    .line 140
    const/4 v11, 0x5

    move v14, v15

    .line 141
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 145
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_10
    :sswitch_a
    const/4 v11, 0x0

    .line 146
    const/4 v7, 0x1

    .line 147
    if-gtz v15, :cond_11

    if-nez v15, :cond_13

    if-nez v10, :cond_13

    .line 148
    :cond_11
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    .line 149
    move v10, v15

    .line 151
    :cond_12
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 152
    .local v16, "temp":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v16    # "temp":Ljava/lang/String;
    :cond_13
    const/4 v10, -0x1

    .line 155
    const/4 v14, 0x0

    .line 156
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 158
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :sswitch_b
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_14

    .line 159
    move v10, v15

    .line 161
    :cond_14
    const/4 v11, 0x1

    move v14, v15

    .line 162
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 165
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :sswitch_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_c

    .line 166
    const/4 v11, 0x0

    .line 167
    move v10, v15

    move v14, v15

    .line 168
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 181
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_15
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_16

    .line 182
    const/4 v11, 0x4

    move v14, v15

    .line 183
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 186
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_16
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_17

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_9

    .line 187
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 200
    .end local v13    # "nextChar":C
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_18
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_19

    if-lez v14, :cond_19

    .line 201
    move v10, v14

    .line 203
    :cond_19
    if-ltz v10, :cond_1b

    .line 204
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v14}, Ljava/lang/String;-><init>([CII)V

    .line 205
    .restart local v16    # "temp":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 207
    .local v18, "value":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_1a

    .line 208
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u0000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 210
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "temp":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_1b
    return-void

    .end local v14    # "offset":I
    .restart local v13    # "nextChar":C
    .restart local v15    # "offset":I
    :cond_1c
    move v14, v15

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch

    .line 121
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method public static store(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/PropertiesUtils;->storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method private static storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "escapeUnicode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 236
    if-eqz p2, :cond_0

    .line 237
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/PropertiesUtils;->writeComment(Ljava/io/Writer;Ljava/lang/String;)V

    .line 239
    :cond_0
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 241
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 244
    .local v2, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 245
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    .line 246
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 247
    iget-object v3, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3, v5, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    .line 248
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 252
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 253
    return-void
.end method

.method private static writeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 11
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xff

    const/16 v9, 0xd

    const/16 v8, 0xa

    .line 303
    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 305
    .local v5, "len":I
    const/4 v1, 0x0

    .line 306
    .local v1, "curIndex":I
    const/4 v4, 0x0

    .line 307
    .local v4, "lastIndex":I
    :goto_0
    if-ge v1, v5, :cond_8

    .line 308
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 309
    .local v0, "c":C
    if-gt v0, v10, :cond_0

    if-eq v0, v8, :cond_0

    if-ne v0, v9, :cond_4

    .line 310
    :cond_0
    if-eq v4, v1, :cond_1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 311
    :cond_1
    if-le v0, v10, :cond_5

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "hex":Ljava/lang/String;
    const-string v6, "\\u"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 314
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    if-ge v3, v6, :cond_2

    .line 315
    const/16 v6, 0x30

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 326
    .end local v2    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v4, v1, 0x1

    .line 328
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 329
    goto :goto_0

    .line 319
    :cond_5
    const-string v6, "\n"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 320
    if-ne v0, v9, :cond_6

    add-int/lit8 v6, v5, -0x1

    if-eq v1, v6, :cond_6

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_6

    .line 321
    add-int/lit8 v1, v1, 0x1

    .line 323
    :cond_6
    add-int/lit8 v6, v5, -0x1

    if-eq v1, v6, :cond_7

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_3

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x21

    if-eq v6, v7, :cond_3

    .line 324
    :cond_7
    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 330
    .end local v0    # "c":C
    :cond_8
    if-eq v4, v1, :cond_9

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    :cond_9
    const-string v6, "\n"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 332
    return-void
.end method

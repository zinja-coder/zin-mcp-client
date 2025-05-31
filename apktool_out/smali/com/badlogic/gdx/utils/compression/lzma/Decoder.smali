.class public Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;,
        Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;
    }
.end annotation


# instance fields
.field m_DictionarySize:I

.field m_DictionarySizeCheck:I

.field m_IsMatchDecoders:[S

.field m_IsRep0LongDecoders:[S

.field m_IsRepDecoders:[S

.field m_IsRepG0Decoders:[S

.field m_IsRepG1Decoders:[S

.field m_IsRepG2Decoders:[S

.field m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

.field m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

.field m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

.field m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_PosDecoders:[S

.field m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_PosStateMask:I

.field m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

.field m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/16 v2, 0xc

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    .line 121
    new-instance v1, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    .line 123
    new-array v1, v5, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    .line 124
    new-array v1, v2, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    .line 125
    new-array v1, v2, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    .line 126
    new-array v1, v2, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    .line 127
    new-array v1, v2, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    .line 128
    new-array v1, v5, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    .line 130
    new-array v1, v4, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 131
    const/16 v1, 0x72

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    .line 133
    new-instance v1, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 135
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    .line 136
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    .line 138
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    .line 140
    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    .line 141
    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 147
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .locals 21
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "outSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->SetStream(Ljava/io/InputStream;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->SetStream(Ljava/io/OutputStream;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->Init()V

    .line 196
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v17

    .line 197
    .local v17, "state":I
    const/4 v13, 0x0

    .local v13, "rep0":I
    const/4 v14, 0x0

    .local v14, "rep1":I
    const/4 v15, 0x0

    .local v15, "rep2":I
    const/16 v16, 0x0

    .line 199
    .local v16, "rep3":I
    const-wide/16 v8, 0x0

    .line 200
    .local v8, "nowPos64":J
    const/4 v12, 0x0

    .line 201
    .local v12, "prevByte":B
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, p3, v18

    if-ltz v18, :cond_0

    cmp-long v18, v8, p3

    if-gez v18, :cond_b

    .line 202
    :cond_0
    long-to-int v0, v8

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosStateMask:I

    move/from16 v19, v0

    and-int v11, v18, v19

    .line 203
    .local v11, "posState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    move-object/from16 v19, v0

    shl-int/lit8 v20, v17, 0x4

    add-int v20, v20, v11

    invoke-virtual/range {v18 .. v20}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    move-object/from16 v18, v0

    long-to-int v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->GetDecoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    move-result-object v4

    .line 205
    .local v4, "decoder2":Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->GetByte(I)B

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->DecodeWithMatchByte(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;B)B

    move-result v12

    .line 209
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->PutByte(B)V

    .line 210
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v17

    .line 211
    const-wide/16 v18, 0x1

    add-long v8, v8, v18

    .line 212
    goto :goto_0

    .line 208
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->DecodeNormal(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)B

    move-result v12

    goto :goto_1

    .line 214
    .end local v4    # "decoder2":Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 215
    const/4 v6, 0x0

    .line 216
    .local v6, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    move-object/from16 v19, v0

    shl-int/lit8 v20, v17, 0x4

    add-int v20, v20, v11

    invoke-virtual/range {v18 .. v20}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_3

    .line 218
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v17

    .line 219
    const/4 v6, 0x1

    .line 237
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v18

    add-int/lit8 v6, v18, 0x2

    .line 239
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v17

    .line 264
    :cond_4
    :goto_3
    int-to-long v0, v13

    move-wide/from16 v18, v0

    cmp-long v18, v18, v8

    if-gez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v13, v0, :cond_e

    .line 266
    :cond_5
    const/16 v18, 0x0

    .line 276
    .end local v6    # "len":I
    .end local v11    # "posState":I
    :goto_4
    return v18

    .line 223
    .restart local v6    # "len":I
    .restart local v11    # "posState":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_7

    .line 224
    move v5, v14

    .line 234
    .local v5, "distance":I
    :goto_5
    move v14, v13

    .line 235
    move v13, v5

    goto :goto_2

    .line 226
    .end local v5    # "distance":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v18

    if-nez v18, :cond_8

    .line 227
    move v5, v15

    .line 232
    .restart local v5    # "distance":I
    :goto_6
    move v15, v14

    goto :goto_5

    .line 229
    .end local v5    # "distance":I
    :cond_8
    move/from16 v5, v16

    .line 230
    .restart local v5    # "distance":I
    move/from16 v16, v15

    goto :goto_6

    .line 242
    .end local v5    # "distance":I
    .end local v6    # "len":I
    :cond_9
    move/from16 v16, v15

    .line 243
    move v15, v14

    .line 244
    move v14, v13

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v18

    add-int/lit8 v6, v18, 0x2

    .line 246
    .restart local v6    # "len":I
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v17

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    move-object/from16 v18, v0

    invoke-static {v6}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v19

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v10

    .line 248
    .local v10, "posSlot":I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-lt v10, v0, :cond_d

    .line 249
    shr-int/lit8 v18, v10, 0x1

    add-int/lit8 v7, v18, -0x1

    .line 250
    .local v7, "numDirectBits":I
    and-int/lit8 v18, v10, 0x1

    or-int/lit8 v18, v18, 0x2

    shl-int v13, v18, v7

    .line 251
    const/16 v18, 0xe

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    move-object/from16 v18, v0

    sub-int v19, v13, v10

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->ReverseDecode([SILcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v18

    add-int v13, v13, v18

    goto/16 :goto_3

    .line 254
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, -0x4

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeDirectBits(I)I

    move-result v18

    shl-int/lit8 v18, v18, 0x4

    add-int v13, v13, v18

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->ReverseDecode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v18

    add-int v13, v13, v18

    .line 256
    if-gez v13, :cond_4

    .line 257
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    .line 273
    .end local v6    # "len":I
    .end local v7    # "numDirectBits":I
    .end local v10    # "posSlot":I
    .end local v11    # "posState":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->ReleaseStream()V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->ReleaseStream()V

    .line 276
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 258
    .restart local v6    # "len":I
    .restart local v7    # "numDirectBits":I
    .restart local v10    # "posSlot":I
    .restart local v11    # "posState":I
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 262
    .end local v7    # "numDirectBits":I
    :cond_d
    move v13, v10

    goto/16 :goto_3

    .line 268
    .end local v10    # "posSlot":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v6}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->CopyBlock(II)V

    .line 269
    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->GetByte(I)B

    move-result v12

    goto/16 :goto_0
.end method

.method Init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Init(Z)V

    .line 173
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 174
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 175
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 176
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 177
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 179
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 181
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->Init()V

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Init()V

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Init()V

    .line 187
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 188
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Init()V

    .line 189
    return-void
.end method

.method public SetDecoderProperties([B)Z
    .locals 10
    .param p1, "properties"    # [B

    .prologue
    const/4 v7, 0x0

    .line 280
    array-length v8, p1

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v7

    .line 281
    :cond_1
    aget-byte v8, p1, v7

    and-int/lit16 v6, v8, 0xff

    .line 282
    .local v6, "val":I
    rem-int/lit8 v2, v6, 0x9

    .line 283
    .local v2, "lc":I
    div-int/lit8 v5, v6, 0x9

    .line 284
    .local v5, "remainder":I
    rem-int/lit8 v3, v5, 0x5

    .line 285
    .local v3, "lp":I
    div-int/lit8 v4, v5, 0x5

    .line 286
    .local v4, "pb":I
    const/4 v0, 0x0

    .line 287
    .local v0, "dictionarySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v8, 0x4

    if-ge v1, v8, :cond_2

    .line 288
    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    mul-int/lit8 v9, v1, 0x8

    shl-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_2
    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetLcLpPb(III)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 290
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetDictionarySize(I)Z

    move-result v7

    goto :goto_0
.end method

.method SetDictionarySize(I)Z
    .locals 4
    .param p1, "dictionarySize"    # I

    .prologue
    const/4 v0, 0x1

    .line 151
    if-gez p1, :cond_1

    const/4 v0, 0x0

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    if-eq v1, p1, :cond_0

    .line 153
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    .line 154
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    .line 155
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Create(I)V

    goto :goto_0
.end method

.method SetLcLpPb(III)Z
    .locals 4
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 161
    const/16 v2, 0x8

    if-gt p1, v2, :cond_0

    if-gt p2, v3, :cond_0

    if-le p3, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 167
    :goto_0
    return v1

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-virtual {v2, p2, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->Create(II)V

    .line 163
    shl-int v0, v1, p3

    .line 164
    .local v0, "numPosStates":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Create(I)V

    .line 165
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Create(I)V

    .line 166
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosStateMask:I

    goto :goto_0
.end method

.class public Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
.super Ljava/lang/Object;
.source "PixmapIO.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PNG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;
    }
.end annotation


# static fields
.field private static final COLOR_ARGB:B = 0x6t

.field private static final COMPRESSION_DEFLATE:B = 0x0t

.field private static final FILTER_NONE:B = 0x0t

.field private static final IDAT:I = 0x49444154

.field private static final IEND:I = 0x49454e44

.field private static final IHDR:I = 0x49484452

.field private static final INTERLACE_NONE:B = 0x0t

.field private static final PAETH:B = 0x4t

.field private static final SIGNATURE:[B


# instance fields
.field private final buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

.field private curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

.field private flipY:Z

.field private lastLineLen:I

.field private lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

.field private prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V

    .line 197
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialBufferSize"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    .line 200
    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    .line 201
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    .line 202
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v0, v1, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

    .line 203
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 318
    return-void
.end method

.method public setCompression(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 213
    return-void
.end method

.method public setFlipY(Z)V
    .locals 0
    .param p1, "flipY"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    .line 208
    return-void
.end method

.method public write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 2
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 218
    .local v0, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 31
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v7, Ljava/io/DataOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 227
    .local v7, "dataOutput":Ljava/io/DataOutputStream;
    sget-object v28, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->SIGNATURE:[B

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    const v29, 0x49484452

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x6

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    const v29, 0x49444154    # 803861.25f

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/zip/Deflater;->reset()V

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v28

    mul-int/lit8 v10, v28, 0x4

    .line 244
    .local v10, "lineLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v28, v0

    if-nez v28, :cond_6

    .line 245
    new-instance v28, Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v0, v28

    iget-object v11, v0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 246
    .local v11, "lineOut":[B
    new-instance v28, Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 247
    .local v6, "curLine":[B
    new-instance v28, Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    move-object/from16 v20, v0

    .line 255
    .local v20, "prevLine":[B
    :cond_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lastLineLen:I

    .line 257
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 258
    .local v19, "pixels":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 259
    .local v13, "oldPosition":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v28

    sget-object v29, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_7

    const/16 v23, 0x1

    .line 260
    .local v23, "rgba8888":Z
    :goto_0
    const/16 v27, 0x0

    .local v27, "y":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    .local v8, "h":I
    :goto_1
    move/from16 v0, v27

    if-ge v0, v8, :cond_c

    .line 261
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    sub-int v28, v8, v27

    add-int/lit8 v22, v28, -0x1

    .line 262
    .local v22, "py":I
    :goto_2
    if-eqz v23, :cond_9

    .line 263
    mul-int v28, v22, v10

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 275
    :cond_1
    const/16 v28, 0x0

    const/16 v29, 0x0

    aget-byte v29, v6, v29

    const/16 v30, 0x0

    aget-byte v30, v20, v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v11, v28

    .line 276
    const/16 v28, 0x1

    const/16 v29, 0x1

    aget-byte v29, v6, v29

    const/16 v30, 0x1

    aget-byte v30, v20, v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v11, v28

    .line 277
    const/16 v28, 0x2

    const/16 v29, 0x2

    aget-byte v29, v6, v29

    const/16 v30, 0x2

    aget-byte v30, v20, v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v11, v28

    .line 278
    const/16 v28, 0x3

    const/16 v29, 0x3

    aget-byte v29, v6, v29

    const/16 v30, 0x3

    aget-byte v30, v20, v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v11, v28

    .line 280
    const/16 v25, 0x4

    .local v25, "x":I
    :goto_3
    move/from16 v0, v25

    if-ge v0, v10, :cond_b

    .line 281
    add-int/lit8 v28, v25, -0x4

    aget-byte v28, v6, v28

    move/from16 v0, v28

    and-int/lit16 v3, v0, 0xff

    .line 282
    .local v3, "a":I
    aget-byte v28, v20, v25

    move/from16 v0, v28

    and-int/lit16 v4, v0, 0xff

    .line 283
    .local v4, "b":I
    add-int/lit8 v28, v25, -0x4

    aget-byte v28, v20, v28

    move/from16 v0, v28

    and-int/lit16 v5, v0, 0xff

    .line 284
    .local v5, "c":I
    add-int v28, v3, v4

    sub-int v14, v28, v5

    .line 285
    .local v14, "p":I
    sub-int v15, v14, v3

    .line 286
    .local v15, "pa":I
    if-gez v15, :cond_2

    neg-int v15, v15

    .line 287
    :cond_2
    sub-int v16, v14, v4

    .line 288
    .local v16, "pb":I
    if-gez v16, :cond_3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 289
    :cond_3
    sub-int v17, v14, v5

    .line 290
    .local v17, "pc":I
    if-gez v17, :cond_4

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    .line 291
    :cond_4
    move/from16 v0, v16

    if-gt v15, v0, :cond_a

    move/from16 v0, v17

    if-gt v15, v0, :cond_a

    .line 292
    move v5, v3

    .line 295
    :cond_5
    :goto_4
    aget-byte v28, v6, v25

    sub-int v28, v28, v5

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v11, v25

    .line 280
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 249
    .end local v3    # "a":I
    .end local v4    # "b":I
    .end local v5    # "c":I
    .end local v6    # "curLine":[B
    .end local v8    # "h":I
    .end local v11    # "lineOut":[B
    .end local v13    # "oldPosition":I
    .end local v14    # "p":I
    .end local v15    # "pa":I
    .end local v16    # "pb":I
    .end local v17    # "pc":I
    .end local v19    # "pixels":Ljava/nio/ByteBuffer;
    .end local v20    # "prevLine":[B
    .end local v22    # "py":I
    .end local v23    # "rgba8888":Z
    .end local v25    # "x":I
    .end local v27    # "y":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v11

    .line 250
    .restart local v11    # "lineOut":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v6

    .line 251
    .restart local v6    # "curLine":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v20

    .line 252
    .restart local v20    # "prevLine":[B
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lastLineLen:I

    .local v12, "n":I
    :goto_5
    if-ge v9, v12, :cond_0

    .line 253
    const/16 v28, 0x0

    aput-byte v28, v20, v9

    .line 252
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 259
    .end local v9    # "i":I
    .end local v12    # "n":I
    .restart local v13    # "oldPosition":I
    .restart local v19    # "pixels":Ljava/nio/ByteBuffer;
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_0

    .restart local v8    # "h":I
    .restart local v23    # "rgba8888":Z
    .restart local v27    # "y":I
    :cond_8
    move/from16 v22, v27

    .line 261
    goto/16 :goto_2

    .line 266
    .restart local v22    # "py":I
    :cond_9
    const/16 v21, 0x0

    .local v21, "px":I
    const/16 v25, 0x0

    .restart local v25    # "x":I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 267
    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v18

    .line 268
    .local v18, "pixel":I
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "x":I
    .local v26, "x":I
    shr-int/lit8 v28, v18, 0x18

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v6, v25

    .line 269
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "x":I
    .restart local v25    # "x":I
    shr-int/lit8 v28, v18, 0x10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v6, v26

    .line 270
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "x":I
    .restart local v26    # "x":I
    shr-int/lit8 v28, v18, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v6, v25

    .line 271
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "x":I
    .restart local v25    # "x":I
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v6, v26

    .line 266
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 293
    .end local v18    # "pixel":I
    .end local v21    # "px":I
    .restart local v3    # "a":I
    .restart local v4    # "b":I
    .restart local v5    # "c":I
    .restart local v14    # "p":I
    .restart local v15    # "pa":I
    .restart local v16    # "pb":I
    .restart local v17    # "pc":I
    :cond_a
    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 294
    move v5, v4

    goto/16 :goto_4

    .line 298
    .end local v3    # "a":I
    .end local v4    # "b":I
    .end local v5    # "c":I
    .end local v14    # "p":I
    .end local v15    # "pa":I
    .end local v16    # "pb":I
    .end local v17    # "pc":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v11, v1, v10}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 301
    move-object/from16 v24, v6

    .line 302
    .local v24, "temp":[B
    move-object/from16 v6, v20

    .line 303
    move-object/from16 v20, v24

    .line 260
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 305
    .end local v22    # "py":I
    .end local v24    # "temp":[B
    .end local v25    # "x":I
    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    const v29, 0x49454e44    # 808164.25f

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 313
    return-void
.end method

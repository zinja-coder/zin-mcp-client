.class public abstract Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "BaseTmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        ">;>",
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        "TP;>;"
    }
.end annotation


# static fields
.field protected static final FLAG_FLIP_DIAGONALLY:I = 0x20000000

.field protected static final FLAG_FLIP_HORIZONTALLY:I = -0x80000000

.field protected static final FLAG_FLIP_VERTICALLY:I = 0x40000000

.field protected static final MASK_CLEAR:I = -0x20000000


# instance fields
.field protected convertObjectToTileSpace:Z

.field protected map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected mapHeightInPixels:I

.field protected mapTileHeight:I

.field protected mapTileWidth:I

.field protected mapWidthInPixels:I

.field protected root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field protected xml:Lcom/badlogic/gdx/utils/XmlReader;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 64
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    .line 65
    return-void
.end method

.method protected static getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\\/"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 346
    .local v0, "result":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "token":Ljava/lang/String;
    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    .line 354
    .end local v1    # "token":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getTileIds(Lcom/badlogic/gdx/utils/XmlReader$Element;II)[I
    .locals 20
    .param p0, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 284
    const-string v17, "data"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v6

    .line 285
    .local v6, "data":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v17, "encoding"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 286
    .local v8, "encoding":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 287
    new-instance v17, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v18, "Unsupported encoding (XML) for TMX Layer Data"

    invoke-direct/range {v17 .. v18}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 289
    :cond_0
    mul-int v17, p1, p2

    move/from16 v0, v17

    new-array v10, v0, [I

    .line 290
    .local v10, "ids":[I
    const-string v17, "csv"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 291
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "array":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_a

    .line 293
    aget-object v17, v2, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    aput v17, v10, v9

    .line 292
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "array":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_1
    const-string v17, "base64"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 297
    const/4 v11, 0x0

    .line 299
    .local v11, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v17, "compression"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "compression":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 301
    .local v3, "bytes":[B
    if-nez v4, :cond_3

    .line 302
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v11    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    move-object v11, v12

    .line 310
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :goto_1
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v14, v0, [B

    .line 311
    .local v14, "temp":[B
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_9

    .line 312
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_3
    move/from16 v0, p1

    if-ge v15, v0, :cond_8

    .line 313
    invoke-virtual {v11, v14}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 314
    .local v13, "read":I
    :goto_4
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    .line 315
    array-length v0, v14

    move/from16 v17, v0

    sub-int v17, v17, v13

    move/from16 v0, v17

    invoke-virtual {v11, v14, v13, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 316
    .local v5, "curr":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    .line 319
    .end local v5    # "curr":I
    :cond_2
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_7

    .line 320
    new-instance v17, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v18, "Error Reading TMX Layer Data: Premature end of tile data"

    invoke-direct/range {v17 .. v18}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v3    # "bytes":[B
    .end local v4    # "compression":Ljava/lang/String;
    .end local v13    # "read":I
    .end local v14    # "temp":[B
    .end local v15    # "x":I
    .end local v16    # "y":I
    :catch_0
    move-exception v7

    .line 326
    .local v7, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v17, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Reading TMX Layer Data - IOException: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    invoke-static {v11}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v17

    .line 303
    .restart local v3    # "bytes":[B
    .restart local v4    # "compression":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v17, "gzip"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 304
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v0, v3

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 305
    :cond_4
    const-string v17, "zlib"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 306
    new-instance v12, Ljava/util/zip/InflaterInputStream;

    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 308
    :cond_5
    new-instance v17, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unrecognised compression ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") for TMX Layer Data"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 317
    .restart local v5    # "curr":I
    .restart local v13    # "read":I
    .restart local v14    # "temp":[B
    .restart local v15    # "x":I
    .restart local v16    # "y":I
    :cond_6
    add-int/2addr v13, v5

    .line 318
    goto/16 :goto_4

    .line 321
    .end local v5    # "curr":I
    :cond_7
    mul-int v17, v16, p1

    add-int v17, v17, v15

    const/16 v18, 0x0

    aget-byte v18, v14, v18

    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v18

    const/16 v19, 0x1

    aget-byte v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v19

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    const/16 v19, 0x2

    aget-byte v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v19

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    const/16 v19, 0x3

    aget-byte v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v19

    shl-int/lit8 v19, v19, 0x18

    or-int v18, v18, v19

    aput v18, v10, v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 311
    .end local v13    # "read":I
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 328
    .end local v15    # "x":I
    :cond_9
    invoke-static {v11}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 336
    .end local v3    # "bytes":[B
    .end local v4    # "compression":Ljava/lang/String;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v14    # "temp":[B
    .end local v16    # "y":I
    :cond_a
    return-object v10

    .line 333
    :cond_b
    new-instance v17, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unrecognised encoding ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") for TMX Layer Data"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method protected static unsignedByteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 340
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method protected createTileLayerCell(ZZZ)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .locals 3
    .param p1, "flipHorizontally"    # Z
    .param p2, "flipVertically"    # Z
    .param p3, "flipDiagonally"    # Z

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 263
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    .line 264
    .local v0, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-eqz p3, :cond_3

    .line 265
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 266
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipHorizontally(Z)V

    .line 267
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)V

    .line 280
    :goto_0
    return-object v0

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)V

    goto :goto_0

    .line 270
    :cond_1
    if-eqz p2, :cond_2

    .line 271
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipVertically(Z)V

    .line 274
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipHorizontally(Z)V

    .line 278
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipVertically(Z)V

    goto :goto_0
.end method

.method protected loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 5
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    const/4 v2, 0x1

    .line 150
    const-string v3, "name"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "name":Ljava/lang/String;
    const-string v3, "opacity"

    const-string v4, "1.0"

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 152
    .local v1, "opacity":F
    const-string v3, "visible"

    invoke-virtual {p2, v3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 154
    .local v2, "visible":Z
    :goto_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/maps/MapLayer;->setName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/maps/MapLayer;->setOpacity(F)V

    .line 156
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/maps/MapLayer;->setVisible(Z)V

    .line 157
    return-void

    .line 152
    .end local v2    # "visible":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected loadImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 11
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p3, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .prologue
    .line 122
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "imagelayer"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 123
    const-string v8, "x"

    const-string v9, "0"

    invoke-virtual {p2, v8, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 124
    .local v6, "x":I
    iget v8, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    const-string v9, "y"

    const-string v10, "0"

    invoke-virtual {p2, v9, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sub-int v7, v8, v9

    .line 125
    .local v7, "y":I
    const/4 v5, 0x0

    .line 127
    .local v5, "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v8, "image"

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    .line 129
    .local v1, "image":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v1, :cond_0

    .line 130
    const-string v8, "source"

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "source":Ljava/lang/String;
    invoke-static {p3, v4}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 132
    .local v0, "handle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v8}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 133
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 136
    .end local v0    # "handle":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "source":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-direct {v2, v5, v6, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    .line 138
    .local v2, "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;
    invoke-virtual {p0, v2, p2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 140
    const-string v8, "properties"

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 141
    .local v3, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v8

    invoke-virtual {p0, v8, v3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 145
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 147
    .end local v1    # "image":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v2    # "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;
    .end local v3    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v5    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_2
    return-void
.end method

.method protected loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 31
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 160
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "object"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 161
    const/4 v11, 0x0

    .line 163
    .local v11, "object":Lcom/badlogic/gdx/maps/MapObject;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->convertObjectToTileSpace:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapTileWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v18, v28, v29

    .line 164
    .local v18, "scaleX":F
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->convertObjectToTileSpace:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapTileHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v19, v28, v29

    .line 166
    .local v19, "scaleY":F
    :goto_1
    const-string v28, "x"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v28

    mul-float v26, v28, v18

    .line 167
    .local v26, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const-string v29, "y"

    const/16 v30, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v29

    sub-float v28, v28, v29

    mul-float v27, v28, v19

    .line 169
    .local v27, "y":F
    const-string v28, "width"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v28

    mul-float v25, v28, v18

    .line 170
    .local v25, "width":F
    const-string v28, "height"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v28

    mul-float v8, v28, v19

    .line 172
    .local v8, "height":F
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v28

    if-lez v28, :cond_3

    .line 173
    const/4 v4, 0x0

    .line 174
    .local v4, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v28, "polygon"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 175
    const-string v28, "points"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 176
    .local v13, "points":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 177
    .local v24, "vertices":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v0, v13

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_2

    .line 178
    aget-object v28, v13, v9

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 179
    .local v12, "point":[Ljava/lang/String;
    mul-int/lit8 v28, v9, 0x2

    const/16 v29, 0x0

    aget-object v29, v12, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    mul-float v29, v29, v18

    aput v29, v24, v28

    .line 180
    mul-int/lit8 v28, v9, 0x2

    add-int/lit8 v28, v28, 0x1

    const/16 v29, 0x1

    aget-object v29, v12, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v19

    aput v29, v24, v28

    .line 177
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 163
    .end local v4    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v8    # "height":F
    .end local v9    # "i":I
    .end local v12    # "point":[Ljava/lang/String;
    .end local v13    # "points":[Ljava/lang/String;
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v24    # "vertices":[F
    .end local v25    # "width":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_0
    const/high16 v18, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 164
    .restart local v18    # "scaleX":F
    :cond_1
    const/high16 v19, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 182
    .restart local v4    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v8    # "height":F
    .restart local v9    # "i":I
    .restart local v13    # "points":[Ljava/lang/String;
    .restart local v19    # "scaleY":F
    .restart local v24    # "vertices":[F
    .restart local v25    # "width":F
    .restart local v26    # "x":F
    .restart local v27    # "y":F
    :cond_2
    new-instance v14, Lcom/badlogic/gdx/math/Polygon;

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    .line 183
    .local v14, "polygon":Lcom/badlogic/gdx/math/Polygon;
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Lcom/badlogic/gdx/math/Polygon;->setPosition(FF)V

    .line 184
    new-instance v11, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;

    .end local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-direct {v11, v14}, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;-><init>(Lcom/badlogic/gdx/math/Polygon;)V

    .line 200
    .end local v4    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v9    # "i":I
    .end local v13    # "points":[Ljava/lang/String;
    .end local v14    # "polygon":Lcom/badlogic/gdx/math/Polygon;
    .end local v24    # "vertices":[F
    .restart local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :cond_3
    :goto_3
    if-nez v11, :cond_4

    .line 201
    const/4 v7, 0x0

    .line 202
    .local v7, "gid":Ljava/lang/String;
    const-string v28, "gid"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 203
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v10, v0

    .line 204
    .local v10, "id":I
    const/high16 v28, -0x80000000

    and-int v28, v28, v10

    if-eqz v28, :cond_d

    const/4 v5, 0x1

    .line 205
    .local v5, "flipHorizontally":Z
    :goto_4
    const/high16 v28, 0x40000000    # 2.0f

    and-int v28, v28, v10

    if-eqz v28, :cond_e

    const/4 v6, 0x1

    .line 207
    .local v6, "flipVertically":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v28

    const v29, 0x1fffffff

    and-int v29, v29, v10

    invoke-virtual/range {v28 .. v29}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v22

    .line 208
    .local v22, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    new-instance v21, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 209
    .local v21, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 210
    new-instance v20, Lcom/badlogic/gdx/maps/objects/TextureMapObject;

    invoke-direct/range {v20 .. v21}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 211
    .local v20, "textureMapObject":Lcom/badlogic/gdx/maps/objects/TextureMapObject;
    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    const-string v29, "gid"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setX(F)V

    .line 213
    sub-float v28, v27, v8

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setY(F)V

    .line 214
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setScaleX(F)V

    .line 215
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setScaleY(F)V

    .line 216
    const-string v28, "rotation"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v28

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setRotation(F)V

    .line 217
    move-object/from16 v11, v20

    .line 222
    .end local v5    # "flipHorizontally":Z
    .end local v6    # "flipVertically":Z
    .end local v7    # "gid":Ljava/lang/String;
    .end local v10    # "id":I
    .end local v20    # "textureMapObject":Lcom/badlogic/gdx/maps/objects/TextureMapObject;
    .end local v21    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v22    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :cond_4
    :goto_6
    const-string v28, "name"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/maps/MapObject;->setName(Ljava/lang/String;)V

    .line 223
    const-string v28, "rotation"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, "rotation":Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 225
    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    const-string v29, "rotation"

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    :cond_5
    const-string v28, "type"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 228
    .local v23, "type":Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 229
    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    const-string v29, "type"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    :cond_6
    const-string v28, "id"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v10

    .line 232
    .restart local v10    # "id":I
    if-eqz v10, :cond_7

    .line 233
    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    const-string v29, "id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    :cond_7
    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    const-string v29, "x"

    mul-float v30, v26, v18

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    const-string v29, "y"

    sub-float v30, v27, v8

    mul-float v30, v30, v19

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    const-string v29, "width"

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    const-string v29, "height"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    const-string v28, "visible"

    const/16 v29, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    const/16 v28, 0x1

    :goto_7
    move/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/maps/MapObject;->setVisible(Z)V

    .line 240
    const-string v28, "properties"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v16

    .line 241
    .local v16, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v16, :cond_8

    .line 242
    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 244
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/maps/MapObjects;->add(Lcom/badlogic/gdx/maps/MapObject;)V

    .line 246
    .end local v8    # "height":F
    .end local v10    # "id":I
    .end local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .end local v16    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v17    # "rotation":Ljava/lang/String;
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v23    # "type":Ljava/lang/String;
    .end local v25    # "width":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_9
    return-void

    .line 185
    .restart local v4    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v8    # "height":F
    .restart local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .restart local v18    # "scaleX":F
    .restart local v19    # "scaleY":F
    .restart local v25    # "width":F
    .restart local v26    # "x":F
    .restart local v27    # "y":F
    :cond_a
    const-string v28, "polyline"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 186
    const-string v28, "points"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 187
    .restart local v13    # "points":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 188
    .restart local v24    # "vertices":[F
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_8
    array-length v0, v13

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_b

    .line 189
    aget-object v28, v13, v9

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 190
    .restart local v12    # "point":[Ljava/lang/String;
    mul-int/lit8 v28, v9, 0x2

    const/16 v29, 0x0

    aget-object v29, v12, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    mul-float v29, v29, v18

    aput v29, v24, v28

    .line 191
    mul-int/lit8 v28, v9, 0x2

    add-int/lit8 v28, v28, 0x1

    const/16 v29, 0x1

    aget-object v29, v12, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v19

    aput v29, v24, v28

    .line 188
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 193
    .end local v12    # "point":[Ljava/lang/String;
    :cond_b
    new-instance v15, Lcom/badlogic/gdx/math/Polyline;

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Lcom/badlogic/gdx/math/Polyline;-><init>([F)V

    .line 194
    .local v15, "polyline":Lcom/badlogic/gdx/math/Polyline;
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Lcom/badlogic/gdx/math/Polyline;->setPosition(FF)V

    .line 195
    new-instance v11, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;

    .end local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-direct {v11, v15}, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;-><init>(Lcom/badlogic/gdx/math/Polyline;)V

    .line 196
    .restart local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    goto/16 :goto_3

    .end local v9    # "i":I
    .end local v13    # "points":[Ljava/lang/String;
    .end local v15    # "polyline":Lcom/badlogic/gdx/math/Polyline;
    .end local v24    # "vertices":[F
    :cond_c
    const-string v28, "ellipse"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 197
    new-instance v11, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;

    .end local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    sub-float v28, v27, v8

    move/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-direct {v11, v0, v1, v2, v8}, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;-><init>(FFFF)V

    .restart local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    goto/16 :goto_3

    .line 204
    .end local v4    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v7    # "gid":Ljava/lang/String;
    .restart local v10    # "id":I
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 205
    .restart local v5    # "flipHorizontally":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 219
    .end local v5    # "flipHorizontally":Z
    .end local v10    # "id":I
    :cond_f
    new-instance v11, Lcom/badlogic/gdx/maps/objects/RectangleMapObject;

    .end local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    sub-float v28, v27, v8

    move/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-direct {v11, v0, v1, v2, v8}, Lcom/badlogic/gdx/maps/objects/RectangleMapObject;-><init>(FFFF)V

    .restart local v11    # "object":Lcom/badlogic/gdx/maps/MapObject;
    goto/16 :goto_6

    .line 239
    .end local v7    # "gid":Ljava/lang/String;
    .restart local v10    # "id":I
    .restart local v17    # "rotation":Ljava/lang/String;
    .restart local v23    # "type":Ljava/lang/String;
    :cond_10
    const/16 v28, 0x0

    goto/16 :goto_7
.end method

.method protected loadObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 7
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 104
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "objectgroup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    const-string v5, "name"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Lcom/badlogic/gdx/maps/MapLayer;

    invoke-direct {v1}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    .line 107
    .local v1, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/maps/MapLayer;->setName(Ljava/lang/String;)V

    .line 108
    const-string v5, "properties"

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    .line 109
    .local v4, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/MapLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 113
    :cond_0
    const-string v5, "object"

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 114
    .local v3, "objectElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {p0, p1, v1, v3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    .line 117
    .end local v3    # "objectElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_2
    return-void
.end method

.method protected loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 7
    .param p1, "properties"    # Lcom/badlogic/gdx/maps/MapProperties;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    const/4 v6, 0x0

    .line 249
    if-nez p2, :cond_1

    .line 260
    :cond_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "properties"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    const-string v4, "property"

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 252
    .local v2, "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v4, "name"

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "name":Ljava/lang/String;
    const-string v4, "value"

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 255
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v3

    .line 257
    :cond_2
    invoke-virtual {p1, v1, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected loadTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 22
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 68
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "layer"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 69
    const-string v19, "width"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v16

    .line 70
    .local v16, "width":I
    const-string v19, "height"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v7

    .line 71
    .local v7, "height":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getParent()Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v19

    const-string v20, "tilewidth"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v14

    .line 72
    .local v14, "tileWidth":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getParent()Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v19

    const-string v20, "tileheight"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v13

    .line 73
    .local v13, "tileHeight":I
    new-instance v10, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    move/from16 v0, v16

    invoke-direct {v10, v0, v7, v14, v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;-><init>(IIII)V

    .line 75
    .local v10, "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 77
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v7}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getTileIds(Lcom/badlogic/gdx/utils/XmlReader$Element;II)[I

    move-result-object v9

    .line 78
    .local v9, "ids":[I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v15

    .line 79
    .local v15, "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v7, :cond_5

    .line 80
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 81
    mul-int v19, v18, v16

    add-int v19, v19, v17

    aget v8, v9, v19

    .line 82
    .local v8, "id":I
    const/high16 v19, -0x80000000

    and-int v19, v19, v8

    if-eqz v19, :cond_1

    const/4 v5, 0x1

    .line 83
    .local v5, "flipHorizontally":Z
    :goto_2
    const/high16 v19, 0x40000000    # 2.0f

    and-int v19, v19, v8

    if-eqz v19, :cond_2

    const/4 v6, 0x1

    .line 84
    .local v6, "flipVertically":Z
    :goto_3
    const/high16 v19, 0x20000000

    and-int v19, v19, v8

    if-eqz v19, :cond_3

    const/4 v4, 0x1

    .line 86
    .local v4, "flipDiagonally":Z
    :goto_4
    const v19, 0x1fffffff

    and-int v19, v19, v8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v12

    .line 87
    .local v12, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v12, :cond_0

    .line 88
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v4}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->createTileLayerCell(ZZZ)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v3

    .line 89
    .local v3, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 90
    add-int/lit8 v19, v7, -0x1

    sub-int v19, v19, v18

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    .line 80
    .end local v3    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 82
    .end local v4    # "flipDiagonally":Z
    .end local v5    # "flipHorizontally":Z
    .end local v6    # "flipVertically":Z
    .end local v12    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 83
    .restart local v5    # "flipHorizontally":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 84
    .restart local v6    # "flipVertically":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 79
    .end local v5    # "flipHorizontally":Z
    .end local v6    # "flipVertically":Z
    .end local v8    # "id":I
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 95
    .end local v17    # "x":I
    :cond_5
    const-string v19, "properties"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v11

    .line 96
    .local v11, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v11, :cond_6

    .line 97
    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 99
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 101
    .end local v7    # "height":I
    .end local v9    # "ids":[I
    .end local v10    # "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    .end local v11    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v13    # "tileHeight":I
    .end local v14    # "tileWidth":I
    .end local v15    # "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .end local v16    # "width":I
    .end local v18    # "y":I
    :cond_7
    return-void
.end method

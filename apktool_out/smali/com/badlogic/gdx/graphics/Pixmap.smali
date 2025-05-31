.class public Lcom/badlogic/gdx/graphics/Pixmap;
.super Ljava/lang/Object;
.source "Pixmap.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Pixmap$Filter;,
        Lcom/badlogic/gdx/graphics/Pixmap$Blending;,
        Lcom/badlogic/gdx/graphics/Pixmap$Format;
    }
.end annotation


# static fields
.field private static blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;


# instance fields
.field color:I

.field private disposed:Z

.field final pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 114
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-static {p3}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 115
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    .line 116
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 6
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v2, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    .line 138
    .local v0, "bytes":[B
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 v3, 0x0

    array-length v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 139
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V
    .locals 1
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 147
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 148
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .param p1, "encodedData"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 125
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Couldn\'t load pixmap from image data"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-object v0
.end method

.method public static setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V
    .locals 1
    .param p0, "blending"    # Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .prologue
    .line 98
    sput-object p0, Lcom/badlogic/gdx/graphics/Pixmap;->blending:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    .line 99
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(I)V

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setFilter(Lcom/badlogic/gdx/graphics/Pixmap$Filter;)V
    .locals 1
    .param p0, "filter"    # Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    .prologue
    .line 106
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setScale(I)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Pixmap already disposed!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->dispose()V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    .line 310
    return-void
.end method

.method public drawCircle(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "radius"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawCircle(IIII)V

    .line 263
    return-void
.end method

.method public drawLine(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawLine(IIIII)V

    .line 192
    return-void
.end method

.method public drawPixel(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(III)V

    .line 318
    return-void
.end method

.method public drawPixel(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(III)V

    .line 327
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 8
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 212
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V
    .locals 8
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "srcx"    # I
    .param p5, "srcy"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V

    .line 225
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V
    .locals 10
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "srcx"    # I
    .param p3, "srcy"    # I
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I
    .param p6, "dstx"    # I
    .param p7, "dsty"    # I
    .param p8, "dstWidth"    # I
    .param p9, "dstHeight"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIIIII)V

    .line 243
    return-void
.end method

.method public drawRectangle(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawRect(IIIII)V

    .line 203
    return-void
.end method

.method public fill()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->clear(I)V

    .line 175
    return-void
.end method

.method public fillCircle(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "radius"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillCircle(IIII)V

    .line 272
    return-void
.end method

.method public fillRectangle(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillRect(IIIII)V

    .line 254
    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 8
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v7, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillTriangle(IIIIIII)V

    .line 284
    return-void
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFormat()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    return-object v0
.end method

.method public getGLFormat()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLFormat()I

    move-result v0

    return v0
.end method

.method public getGLInternalFormat()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLInternalFormat()I

    move-result v0

    return v0
.end method

.method public getGLType()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLType()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPixel(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public getPixels()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->disposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Pixmap already disposed"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->pixmap:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 163
    invoke-static {p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(FFFF)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 164
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 154
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 169
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(FFFF)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->color:I

    .line 170
    return-void
.end method

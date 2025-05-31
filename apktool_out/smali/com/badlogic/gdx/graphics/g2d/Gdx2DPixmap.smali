.class public Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
.super Ljava/lang/Object;
.source "Gdx2DPixmap.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final GDX2D_BLEND_NONE:I = 0x0

.field public static final GDX2D_BLEND_SRC_OVER:I = 0x1

.field public static final GDX2D_FORMAT_ALPHA:I = 0x1

.field public static final GDX2D_FORMAT_LUMINANCE_ALPHA:I = 0x2

.field public static final GDX2D_FORMAT_RGB565:I = 0x5

.field public static final GDX2D_FORMAT_RGB888:I = 0x3

.field public static final GDX2D_FORMAT_RGBA4444:I = 0x6

.field public static final GDX2D_FORMAT_RGBA8888:I = 0x4

.field public static final GDX2D_SCALE_LINEAR:I = 0x1

.field public static final GDX2D_SCALE_NEAREST:I


# instance fields
.field basePtr:J

.field format:I

.field height:I

.field nativeData:[J

.field pixelPtr:Ljava/nio/ByteBuffer;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(I)V

    .line 52
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setScale(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/GdxRuntimeException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->newPixmap([JIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Error loading pixmap."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "requestedFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v5, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v3, 0x4

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    .line 70
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 71
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    new-array v0, v4, [B

    .line 72
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 74
    .local v2, "readBytes":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 75
    invoke-virtual {v1, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 79
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    array-length v4, v0

    invoke-static {v3, v0, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->load([J[BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    .line 80
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading pixmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFailureReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    aget-wide v4, v3, v5

    iput-wide v4, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    .line 83
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    long-to-int v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    .line 84
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v4, 0x2

    aget-wide v4, v3, v4

    long-to-int v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    .line 85
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v4, 0x3

    aget-wide v4, v3, v4

    long-to-int v3, v4

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    .line 87
    if-eqz p2, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    if-eq p2, v3, :cond_2

    .line 88
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->convert(I)V

    .line 90
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;[J)V
    .locals 2
    .param p1, "pixelPtr"    # Ljava/nio/ByteBuffer;
    .param p2, "nativeData"    # [J

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    .line 104
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    .line 105
    const/4 v0, 0x0

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    .line 106
    const/4 v0, 0x1

    aget-wide v0, p2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    .line 107
    const/4 v0, 0x2

    aget-wide v0, p2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    .line 108
    const/4 v0, 0x3

    aget-wide v0, p2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    .line 109
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 3
    .param p1, "encodedData"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "requestedFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->load([J[BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading pixmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFailureReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    .line 64
    if-eqz p4, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    if-eq p4, v0, :cond_1

    .line 65
    invoke-direct {p0, p4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->convert(I)V

    .line 67
    :cond_1
    return-void
.end method

.method private static native clear(JI)V
.end method

.method private convert(I)V
    .locals 8
    .param p1, "requestedFormat"    # I

    .prologue
    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    invoke-direct {v0, v1, v3, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V

    .line 113
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->dispose()V

    .line 115
    iget-wide v2, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    iput-wide v2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    .line 116
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    .line 117
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    .line 118
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->nativeData:[J

    .line 119
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    .line 120
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    .line 121
    return-void
.end method

.method private static native drawCircle(JIIII)V
.end method

.method private static native drawLine(JIIIII)V
.end method

.method private static native drawPixmap(JJIIIIIIII)V
.end method

.method private static native drawRect(JIIIII)V
.end method

.method private static native fillCircle(JIIII)V
.end method

.method private static native fillRect(JIIIII)V
.end method

.method private static native fillTriangle(JIIIIIII)V
.end method

.method private static native free(J)V
.end method

.method public static native getFailureReason()Ljava/lang/String;
.end method

.method private static native getPixel(JII)I
.end method

.method private static native load([J[BII)Ljava/nio/ByteBuffer;
.end method

.method public static newPixmap(III)Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-direct {v1, p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newPixmap(Ljava/io/InputStream;I)Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "requestedFormat"    # I

    .prologue
    .line 174
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native newPixmap([JIII)Ljava/nio/ByteBuffer;
.end method

.method public static native setBlend(I)V
.end method

.method private static native setPixel(JIII)V
.end method

.method public static native setScale(I)V
.end method


# virtual methods
.method public clear(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->clear(JI)V

    .line 129
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->free(J)V

    .line 125
    return-void
.end method

.method public drawCircle(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "radius"    # I
    .param p4, "color"    # I

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawCircle(JIIII)V

    .line 149
    return-void
.end method

.method public drawLine(IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "color"    # I

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawLine(JIIIII)V

    .line 141
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V
    .locals 12
    .param p1, "src"    # Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "dstX"    # I
    .param p5, "dstY"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 164
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    move v4, p2

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(JJIIIIIIII)V

    .line 165
    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIIIII)V
    .locals 12
    .param p1, "src"    # Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I
    .param p6, "dstX"    # I
    .param p7, "dstY"    # I
    .param p8, "dstWidth"    # I
    .param p9, "dstHeight"    # I

    .prologue
    .line 169
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(JJIIIIIIII)V

    .line 170
    return-void
.end method

.method public drawRect(IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color"    # I

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawRect(JIIIII)V

    .line 145
    return-void
.end method

.method public fillCircle(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "radius"    # I
    .param p4, "color"    # I

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillCircle(JIIII)V

    .line 157
    return-void
.end method

.method public fillRect(IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color"    # I

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillRect(JIIIII)V

    .line 153
    return-void
.end method

.method public fillTriangle(IIIIIII)V
    .locals 9
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I
    .param p7, "color"    # I

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillTriangle(JIIIIIII)V

    .line 161
    return-void
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    packed-switch v0, :pswitch_data_0

    .line 256
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    const-string v0, "alpha"

    goto :goto_0

    .line 246
    :pswitch_1
    const-string v0, "luminance alpha"

    goto :goto_0

    .line 248
    :pswitch_2
    const-string v0, "rgb888"

    goto :goto_0

    .line 250
    :pswitch_3
    const-string v0, "rgba8888"

    goto :goto_0

    .line 252
    :pswitch_4
    const-string v0, "rgb565"

    goto :goto_0

    .line 254
    :pswitch_5
    const-string v0, "rgba4444"

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getGLFormat()I
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLInternalFormat()I

    move-result v0

    return v0
.end method

.method public getGLInternalFormat()I
    .locals 3

    .prologue
    .line 205
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    packed-switch v0, :pswitch_data_0

    .line 217
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_0
    const/16 v0, 0x1906

    .line 215
    :goto_0
    return v0

    .line 209
    :pswitch_1
    const/16 v0, 0x190a

    goto :goto_0

    .line 212
    :pswitch_2
    const/16 v0, 0x1907

    goto :goto_0

    .line 215
    :pswitch_3
    const/16 v0, 0x1908

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getGLType()I
    .locals 3

    .prologue
    .line 226
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    packed-switch v0, :pswitch_data_0

    .line 237
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_0
    const/16 v0, 0x1401

    .line 235
    :goto_0
    return v0

    .line 233
    :pswitch_1
    const v0, 0x8363

    goto :goto_0

    .line 235
    :pswitch_2
    const v0, 0x8033

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->height:I

    return v0
.end method

.method public getPixel(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(JII)I

    move-result v0

    return v0
.end method

.method public getPixels()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->pixelPtr:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->width:I

    return v0
.end method

.method public setPixel(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->basePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(JIII)V

    .line 133
    return-void
.end method

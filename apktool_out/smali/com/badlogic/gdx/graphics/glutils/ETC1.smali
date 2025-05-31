.class public Lcom/badlogic/gdx/graphics/glutils/ETC1;
.super Ljava/lang/Object;
.source "ETC1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
    }
.end annotation


# static fields
.field public static ETC1_RGB8_OES:I

.field public static PKM_HEADER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x10

    sput v0, Lcom/badlogic/gdx/graphics/glutils/ETC1;->PKM_HEADER_SIZE:I

    .line 41
    const v0, 0x8d64

    sput v0, Lcom/badlogic/gdx/graphics/glutils/ETC1;->ETC1_RGB8_OES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static decodeImage(Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 8
    .param p0, "etc1Data"    # Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
    .param p1, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .prologue
    const/4 v3, 0x0

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "dataOffset":I
    const/4 v4, 0x0

    .line 177
    .local v4, "width":I
    const/4 v5, 0x0

    .line 179
    .local v5, "height":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->hasPKMHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/16 v1, 0x10

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getWidthPKM(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getHeightPKM(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 189
    :goto_0
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getPixelSize(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v6

    .line 190
    .local v6, "pixelSize":I
    new-instance v7, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v7, v4, v5, p1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 191
    .local v7, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->decodeImage(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    .line 192
    return-object v7

    .line 184
    .end local v6    # "pixelSize":I
    .end local v7    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_0
    const/4 v1, 0x0

    .line 185
    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->width:I

    .line 186
    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->height:I

    goto :goto_0
.end method

.method private static native decodeImage(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V
.end method

.method public static encodeImage(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
    .locals 6
    .param p0, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    const/4 v5, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getPixelSize(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v1

    .line 153
    .local v1, "pixelSize":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    invoke-static {v2, v5, v3, v4, v1}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->encodeImage(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    .local v0, "compressedData":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 155
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;-><init>(IILjava/nio/ByteBuffer;I)V

    return-object v2
.end method

.method private static native encodeImage(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;
.end method

.method public static encodeImagePKM(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
    .locals 6
    .param p0, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getPixelSize(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v1

    .line 164
    .local v1, "pixelSize":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->encodeImagePKM(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    .local v0, "compressedData":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 166
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;-><init>(IILjava/nio/ByteBuffer;I)V

    return-object v2
.end method

.method private static native encodeImagePKM(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;
.end method

.method public static native formatHeader(Ljava/nio/ByteBuffer;III)V
.end method

.method public static native getCompressedDataSize(II)I
.end method

.method static native getHeightPKM(Ljava/nio/ByteBuffer;I)I
.end method

.method private static getPixelSize(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I
    .locals 2
    .param p0, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .prologue
    .line 143
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x2

    .line 144
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Can only handle RGB565 or RGB888 images"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static native getWidthPKM(Ljava/nio/ByteBuffer;I)I
.end method

.method static native isValidPKM(Ljava/nio/ByteBuffer;I)Z
.end method

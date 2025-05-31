.class public Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;
.super Ljava/lang/Object;
.source "KTXTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;
.implements Lcom/badlogic/gdx/graphics/CubemapData;


# static fields
.field private static final GL_TEXTURE_1D:I = 0x1234

.field private static final GL_TEXTURE_1D_ARRAY_EXT:I = 0x1234

.field private static final GL_TEXTURE_2D_ARRAY_EXT:I = 0x1234

.field private static final GL_TEXTURE_3D:I = 0x1234


# instance fields
.field private compressedData:Ljava/nio/ByteBuffer;

.field private file:Lcom/badlogic/gdx/files/FileHandle;

.field private glBaseInternalFormat:I

.field private glFormat:I

.field private glInternalFormat:I

.field private glType:I

.field private glTypeSize:I

.field private imagePos:I

.field private numberOfArrayElements:I

.field private numberOfFaces:I

.field private numberOfMipmapLevels:I

.field private pixelDepth:I

.field private pixelHeight:I

.field private pixelWidth:I

.field private useMipMaps:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "genMipMaps"    # Z

    .prologue
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    .line 44
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    .line 45
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    .line 58
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    .line 59
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    .line 60
    return-void
.end method


# virtual methods
.method public consumeCubemapData()V
    .locals 1

    .prologue
    .line 153
    const v0, 0x8513

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->consumeCustomData(I)V

    .line 154
    return-void
.end method

.method public consumeCustomData(I)V
    .locals 34
    .param p1, "target"    # I

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Call prepare() before calling consumeCompressedData()"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_0
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v21

    .line 162
    .local v21, "buffer":Ljava/nio/IntBuffer;
    const/16 v22, 0x0

    .line 163
    .local v22, "compressed":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    if-nez v2, :cond_3

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    add-int/2addr v2, v3

    if-eqz v2, :cond_2

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "either both or none of glType, glFormat must be zero"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_2
    const/16 v22, 0x1

    .line 169
    :cond_3
    const/16 v33, 0x1

    .line 170
    .local v33, "textureDimensions":I
    const/16 v27, 0x1234

    .line 171
    .local v27, "glTarget":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    if-lez v2, :cond_4

    .line 172
    const/16 v33, 0x2

    .line 173
    const/16 v27, 0xde1

    .line 175
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    if-lez v2, :cond_5

    .line 176
    const/16 v33, 0x3

    .line 177
    const/16 v27, 0x1234

    .line 179
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    .line 180
    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_8

    .line 181
    const v27, 0x8513

    .line 187
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    if-lez v2, :cond_7

    .line 188
    const/16 v2, 0x1234

    move/from16 v0, v27

    if-ne v0, v2, :cond_a

    .line 189
    const/16 v27, 0x1234

    .line 194
    :goto_0
    add-int/lit8 v33, v33, 0x1

    .line 196
    :cond_7
    const/16 v2, 0x1234

    move/from16 v0, v27

    if-ne v0, v2, :cond_c

    .line 197
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Unsupported texture format (only 2D texture are supported in LibGdx for the time being)"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_8
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "cube map needs 2D faces"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 185
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "numberOfFaces must be either 1 or 6"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_a
    const/16 v2, 0xde1

    move/from16 v0, v27

    if-ne v0, v2, :cond_b

    .line 191
    const/16 v27, 0x1234

    goto :goto_0

    .line 193
    :cond_b
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "No API for 3D and cube arrays yet"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_c
    const/16 v32, -0x1

    .line 200
    .local v32, "singleFace":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_12

    const v2, 0x8513

    move/from16 v0, p1

    if-eq v0, v2, :cond_12

    .line 202
    const v2, 0x8515

    move/from16 v0, p1

    if-gt v2, v0, :cond_d

    const v2, 0x851a

    move/from16 v0, p1

    if-le v0, v2, :cond_e

    .line 203
    :cond_d
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "You must specify either GL_TEXTURE_CUBE_MAP to bind all 6 faces of the cube or the requested face GL_TEXTURE_CUBE_MAP_POSITIVE_X and followings."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_e
    const v2, 0x8515

    sub-int v32, p1, v2

    .line 206
    const p1, 0x8515

    .line 219
    :cond_f
    :goto_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xcf5

    move-object/from16 v0, v21

    invoke-interface {v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 220
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v31

    .line 221
    .local v31, "previousUnpackAlignment":I
    const/4 v2, 0x4

    move/from16 v0, v31

    if-eq v0, v2, :cond_10

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xcf5

    const/4 v5, 0x4

    invoke-interface {v2, v3, v5}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 222
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    .line 223
    .local v14, "glInternalFormat":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    move/from16 v18, v0

    .line 224
    .local v18, "glFormat":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    move/from16 v30, v0

    .line 225
    .local v30, "pos":I
    const/4 v4, 0x0

    .local v4, "level":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v4, v2, :cond_1c

    .line 226
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    shr-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 227
    .local v15, "pixelWidth":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    shr-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 228
    .local v16, "pixelHeight":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    shr-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 229
    .local v28, "pixelDepth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v25

    .line 231
    .local v25, "faceLodSize":I
    add-int/lit8 v2, v25, 0x3

    and-int/lit8 v26, v2, -0x4

    .line 232
    .local v26, "faceLodSizeRounded":I
    add-int/lit8 v30, v30, 0x4

    .line 233
    const/16 v24, 0x0

    .local v24, "face":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    move/from16 v0, v24

    if-ge v0, v2, :cond_1b

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 235
    add-int v30, v30, v26

    .line 236
    const/4 v2, -0x1

    move/from16 v0, v32

    if-eq v0, v2, :cond_15

    move/from16 v0, v32

    move/from16 v1, v24

    if-eq v0, v1, :cond_15

    .line 233
    :cond_11
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 207
    .end local v4    # "level":I
    .end local v14    # "glInternalFormat":I
    .end local v15    # "pixelWidth":I
    .end local v16    # "pixelHeight":I
    .end local v18    # "glFormat":I
    .end local v24    # "face":I
    .end local v25    # "faceLodSize":I
    .end local v26    # "faceLodSizeRounded":I
    .end local v28    # "pixelDepth":I
    .end local v30    # "pos":I
    .end local v31    # "previousUnpackAlignment":I
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_13

    const v2, 0x8513

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    .line 209
    const p1, 0x8515

    goto/16 :goto_1

    .line 212
    :cond_13
    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    const v2, 0x8515

    move/from16 v0, p1

    if-gt v2, v0, :cond_14

    const v2, 0x851a

    move/from16 v0, p1

    if-gt v0, v2, :cond_14

    const/16 v2, 0xde1

    move/from16 v0, p1

    if-eq v0, v2, :cond_f

    .line 214
    :cond_14
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid target requested : 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", expecting : 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    .restart local v4    # "level":I
    .restart local v14    # "glInternalFormat":I
    .restart local v15    # "pixelWidth":I
    .restart local v16    # "pixelHeight":I
    .restart local v18    # "glFormat":I
    .restart local v24    # "face":I
    .restart local v25    # "faceLodSize":I
    .restart local v26    # "faceLodSizeRounded":I
    .restart local v28    # "pixelDepth":I
    .restart local v30    # "pos":I
    .restart local v31    # "previousUnpackAlignment":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 238
    .local v10, "data":Ljava/nio/ByteBuffer;
    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 239
    const/4 v2, 0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_11

    .line 245
    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_1a

    .line 246
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    if-lez v2, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    move/from16 v16, v0

    .line 247
    :cond_16
    if-eqz v22, :cond_19

    .line 248
    sget v2, Lcom/badlogic/gdx/graphics/glutils/ETC1;->ETC1_RGB8_OES:I

    if-ne v14, v2, :cond_18

    .line 249
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v3, "GL_OES_compressed_ETC1_RGB8_texture"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 250
    new-instance v23, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    const/4 v2, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-direct {v0, v15, v1, v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;-><init>(IILjava/nio/ByteBuffer;I)V

    .line 251
    .local v23, "etcData":Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->decodeImage(Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v29

    .line 252
    .local v29, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v3, p1, v24

    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v5

    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v9

    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v10

    .end local v10    # "data":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 254
    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto/16 :goto_4

    .line 256
    .end local v23    # "etcData":Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
    .end local v29    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v10    # "data":Ljava/nio/ByteBuffer;
    :cond_17
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v3, p1, v24

    const/4 v8, 0x0

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v9, v25

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto/16 :goto_4

    .line 261
    :cond_18
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v3, p1, v24

    const/4 v8, 0x0

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v9, v25

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto/16 :goto_4

    .line 265
    :cond_19
    sget-object v11, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v12, p1, v24

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    move/from16 v19, v0

    move v13, v4

    move-object/from16 v20, v10

    invoke-interface/range {v11 .. v20}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto/16 :goto_4

    .line 266
    :cond_1a
    const/4 v2, 0x3

    move/from16 v0, v33

    if-ne v0, v2, :cond_11

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    move/from16 v28, v0

    goto/16 :goto_4

    .line 225
    .end local v10    # "data":Ljava/nio/ByteBuffer;
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 277
    .end local v15    # "pixelWidth":I
    .end local v16    # "pixelHeight":I
    .end local v24    # "face":I
    .end local v25    # "faceLodSize":I
    .end local v26    # "faceLodSizeRounded":I
    .end local v28    # "pixelDepth":I
    :cond_1c
    const/4 v2, 0x4

    move/from16 v0, v31

    if-eq v0, v2, :cond_1d

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xcf5

    move/from16 v0, v31

    invoke-interface {v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 278
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps()Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 281
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->disposePreparedData()V

    .line 282
    return-void
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePreparedData()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 286
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 287
    return-void
.end method

.method public getData(II)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "requestedLevel"    # I
    .param p2, "requestedFace"    # I

    .prologue
    .line 322
    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    .line 323
    .local v5, "pos":I
    const/4 v4, 0x0

    .local v4, "level":I
    :goto_0
    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v4, v6, :cond_3

    .line 324
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 325
    .local v2, "faceLodSize":I
    add-int/lit8 v6, v2, 0x3

    and-int/lit8 v3, v6, -0x4

    .line 326
    .local v3, "faceLodSizeRounded":I
    add-int/lit8 v5, v5, 0x4

    .line 327
    if-ne v4, p1, :cond_1

    .line 328
    const/4 v1, 0x0

    .local v1, "face":I
    :goto_1
    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    if-ge v1, v6, :cond_2

    .line 329
    if-ne v1, p2, :cond_0

    .line 330
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 332
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 341
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    .end local v1    # "face":I
    .end local v2    # "faceLodSize":I
    .end local v3    # "faceLodSizeRounded":I
    :goto_2
    return-object v0

    .line 335
    .restart local v1    # "face":I
    .restart local v2    # "faceLodSize":I
    .restart local v3    # "faceLodSizeRounded":I
    :cond_0
    add-int/2addr v5, v3

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    .end local v1    # "face":I
    :cond_1
    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 323
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "faceLodSize":I
    .end local v3    # "faceLodSizeRounded":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation directly handles texture formats."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGlInternalFormat()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    return v0
.end method

.method public getNumberOfFaces()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    return v0
.end method

.method public getNumberOfMipMapLevels()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 17

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    if-eqz v14, :cond_0

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Already prepared"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 75
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v14, :cond_1

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Need a file to load from"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 77
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".zktx"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 78
    const/16 v14, 0x2800

    new-array v1, v14, [B

    .line 79
    .local v1, "buffer":[B
    const/4 v9, 0x0

    .line 81
    .local v9, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v9    # "in":Ljava/io/DataInputStream;
    .local v10, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 83
    .local v8, "fileSize":I
    invoke-static {v8}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 84
    const/4 v13, 0x0

    .line 85
    .local v13, "readBytes":I
    :goto_0
    invoke-virtual {v10, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v15, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 89
    .end local v8    # "fileSize":I
    .end local v13    # "readBytes":I
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 90
    .end local v10    # "in":Ljava/io/DataInputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    :goto_1
    :try_start_2
    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t load zktx file \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_2
    invoke-static {v9}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v14

    .line 87
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fileSize":I
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "readBytes":I
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    invoke-static {v10}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    .end local v1    # "buffer":[B
    .end local v8    # "fileSize":I
    .end local v10    # "in":Ljava/io/DataInputStream;
    .end local v13    # "readBytes":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, -0x55

    if-eq v14, v15, :cond_4

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 95
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 98
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0x4b

    if-eq v14, v15, :cond_5

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 99
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0x54

    if-eq v14, v15, :cond_6

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 100
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0x58

    if-eq v14, v15, :cond_7

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 101
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_8

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 102
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0x31

    if-eq v14, v15, :cond_9

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 103
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0x31

    if-eq v14, v15, :cond_a

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 104
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, -0x45

    if-eq v14, v15, :cond_b

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 105
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_c

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 106
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_d

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 107
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0x1a

    if-eq v14, v15, :cond_e

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 108
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_f

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 109
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 110
    .local v5, "endianTag":I
    const v14, 0x4030201

    if-eq v5, v14, :cond_10

    const v14, 0x1020304

    if-eq v5, v14, :cond_10

    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Invalid KTX Header"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 111
    :cond_10
    const v14, 0x4030201

    if-eq v5, v14, :cond_11

    .line 112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v14

    sget-object v16, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_13

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_4
    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glType:I

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glTypeSize:I

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glFormat:I

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glInternalFormat:I

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->glBaseInternalFormat:I

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelWidth:I

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelHeight:I

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->pixelDepth:I

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfArrayElements:I

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    .line 124
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-nez v14, :cond_12

    .line 125
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    .line 126
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    .line 128
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 129
    .local v2, "bytesOfKeyValueData":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    add-int/2addr v14, v2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    .line 130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v14

    if-nez v14, :cond_15

    .line 131
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->imagePos:I

    .line 132
    .local v12, "pos":I
    const/4 v11, 0x0

    .local v11, "level":I
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfMipmapLevels:I

    if-ge v11, v14, :cond_14

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    .line 134
    .local v6, "faceLodSize":I
    add-int/lit8 v14, v6, 0x3

    and-int/lit8 v7, v14, -0x4

    .line 135
    .local v7, "faceLodSizeRounded":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->numberOfFaces:I

    mul-int/2addr v14, v7

    add-int/lit8 v14, v14, 0x4

    add-int/2addr v12, v14

    .line 132
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 112
    .end local v2    # "bytesOfKeyValueData":I
    .end local v6    # "faceLodSize":I
    .end local v7    # "faceLodSizeRounded":I
    .end local v11    # "level":I
    .end local v12    # "pos":I
    :cond_13
    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto/16 :goto_4

    .line 137
    .restart local v2    # "bytesOfKeyValueData":I
    .restart local v11    # "level":I
    .restart local v12    # "pos":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    invoke-static {v12}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 140
    .local v3, "directBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 142
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->compressedData:Ljava/nio/ByteBuffer;

    .line 144
    .end local v3    # "directBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "level":I
    .end local v12    # "pos":I
    :cond_15
    return-void

    .line 92
    .end local v2    # "bytesOfKeyValueData":I
    .end local v5    # "endianTag":I
    .restart local v1    # "buffer":[B
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v14

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_2

    .line 89
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method public useMipMaps()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps:Z

    return v0
.end method

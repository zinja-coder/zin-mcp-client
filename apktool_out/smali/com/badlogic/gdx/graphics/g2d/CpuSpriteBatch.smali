.class public Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;
.super Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.source "CpuSpriteBatch.java"


# instance fields
.field private final adjustAffine:Lcom/badlogic/gdx/math/Affine2;

.field private adjustNeeded:Z

.field private haveIdentityRealMatrix:Z

.field private final tmpAffine:Lcom/badlogic/gdx/math/Affine2;

.field private final virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 52
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "defaultShader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->tmpAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 58
    return-void
.end method

.method private static checkEqual(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Affine2;)Z
    .locals 5
    .param p0, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p1, "affine"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object v0

    .line 640
    .local v0, "val":[F
    aget v3, v0, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    aget v3, v0, v1

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x4

    aget v3, v0, v3

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x5

    aget v3, v0, v3

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/16 v3, 0xc

    aget v3, v0, v3

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/16 v3, 0xd

    aget v3, v0, v3

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static checkEqual(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 7
    .param p0, "a"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p1, "b"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 628
    if-ne p0, p1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v1

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v0

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v4

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v5

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v6

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static checkIdt(Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 6
    .param p0, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object v0

    .line 648
    .local v0, "val":[F
    aget v3, v0, v2

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    aget v3, v0, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x4

    aget v3, v0, v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x5

    aget v3, v0, v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    const/16 v3, 0xc

    aget v3, v0, v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/16 v3, 0xd

    aget v3, v0, v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 20
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "srcX"    # I
    .param p12, "srcY"    # I
    .param p13, "srcWidth"    # I
    .param p14, "srcHeight"    # I
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    .prologue
    .line 276
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v19, v1, v2

    .line 277
    .local v19, "invTexWidth":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v18, v1, v2

    .line 279
    .local v18, "invTexHeight":F
    move/from16 v0, p11

    int-to-float v1, v0

    mul-float v12, v1, v19

    .line 280
    .local v12, "u":F
    add-int v1, p12, p14

    int-to-float v1, v1

    mul-float v13, v1, v18

    .line 281
    .local v13, "v":F
    add-int v1, p11, p13

    int-to-float v1, v1

    mul-float v14, v1, v19

    .line 282
    .local v14, "u2":F
    move/from16 v0, p12

    int-to-float v1, v0

    mul-float v15, v1, v18

    .local v15, "v2":F
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v16, p15

    move/from16 v17, p16

    .line 284
    invoke-direct/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjustedUV(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    .line 285
    return-void
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 8
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"    # [F
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 596
    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawing:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 602
    .local v1, "t":Lcom/badlogic/gdx/math/Affine2;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    array-length v4, v4

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    sub-int/2addr v4, v5

    invoke-static {v4, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 604
    .local v0, "copyCount":I
    :cond_2
    sub-int/2addr p4, v0

    .line 605
    :goto_0
    if-lez v0, :cond_3

    .line 606
    aget v2, p2, p3

    .line 607
    .local v2, "x":F
    add-int/lit8 v4, p3, 0x1

    aget v3, p2, v4

    .line 609
    .local v3, "y":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v6, v2

    iget v7, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 610
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v6, v2

    iget v7, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 611
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    aput v6, v4, v5

    .line 612
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, p3, 0x3

    aget v6, p2, v6

    aput v6, v4, v5

    .line 613
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, p3, 0x4

    aget v6, p2, v6

    aput v6, v4, v5

    .line 615
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    .line 616
    add-int/lit8 p3, p3, 0x5

    .line 617
    add-int/lit8 v0, v0, -0x5

    .line 618
    goto :goto_0

    .line 620
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_3
    if-lez p4, :cond_4

    .line 621
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 622
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    array-length v4, v4

    invoke-static {v4, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 624
    :cond_4
    if-gtz p4, :cond_2

    .line 625
    return-void
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 18
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .prologue
    .line 270
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move-object/from16 v0, p1

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move-object/from16 v0, p1

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjustedUV(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    .line 272
    return-void
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 39
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "clockwise"    # Z

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawing:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    new-instance v35, Ljava/lang/IllegalStateException;

    const-string v36, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct/range {v35 .. v36}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 413
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_4

    .line 414
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 418
    :cond_1
    :goto_0
    add-float v25, p2, p4

    .line 419
    .local v25, "worldOriginX":F
    add-float v26, p3, p5

    .line 420
    .local v26, "worldOriginY":F
    move/from16 v0, p4

    neg-float v3, v0

    .line 421
    .local v3, "fx":F
    move/from16 v0, p5

    neg-float v5, v0

    .line 422
    .local v5, "fy":F
    sub-float v4, p6, p4

    .line 423
    .local v4, "fx2":F
    sub-float v6, p7, p5

    .line 426
    .local v6, "fy2":F
    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, p8, v35

    if-nez v35, :cond_2

    const/high16 v35, 0x3f800000    # 1.0f

    cmpl-float v35, p9, v35

    if-eqz v35, :cond_3

    .line 427
    :cond_2
    mul-float v3, v3, p8

    .line 428
    mul-float v5, v5, p9

    .line 429
    mul-float v4, v4, p8

    .line 430
    mul-float v6, v6, p9

    .line 434
    :cond_3
    move v7, v3

    .line 435
    .local v7, "p1x":F
    move v8, v5

    .line 436
    .local v8, "p1y":F
    move v9, v3

    .line 437
    .local v9, "p2x":F
    move v10, v6

    .line 438
    .local v10, "p2y":F
    move v11, v4

    .line 439
    .local v11, "p3x":F
    move v12, v6

    .line 440
    .local v12, "p3y":F
    move v13, v4

    .line 441
    .local v13, "p4x":F
    move v14, v5

    .line 453
    .local v14, "p4y":F
    const/16 v35, 0x0

    cmpl-float v35, p10, v35

    if-eqz v35, :cond_5

    .line 454
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 455
    .local v2, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 457
    .local v15, "sin":F
    mul-float v35, v2, v7

    mul-float v36, v15, v8

    sub-float v27, v35, v36

    .line 458
    .local v27, "x1":F
    mul-float v35, v15, v7

    mul-float v36, v2, v8

    add-float v31, v35, v36

    .line 460
    .local v31, "y1":F
    mul-float v35, v2, v9

    mul-float v36, v15, v10

    sub-float v28, v35, v36

    .line 461
    .local v28, "x2":F
    mul-float v35, v15, v9

    mul-float v36, v2, v10

    add-float v32, v35, v36

    .line 463
    .local v32, "y2":F
    mul-float v35, v2, v11

    mul-float v36, v15, v12

    sub-float v29, v35, v36

    .line 464
    .local v29, "x3":F
    mul-float v35, v15, v11

    mul-float v36, v2, v12

    add-float v33, v35, v36

    .line 466
    .local v33, "y3":F
    sub-float v35, v29, v28

    add-float v30, v27, v35

    .line 467
    .local v30, "x4":F
    sub-float v35, v32, v31

    sub-float v34, v33, v35

    .line 482
    .end local v2    # "cos":F
    .end local v15    # "sin":F
    .local v34, "y4":F
    :goto_1
    add-float v27, v27, v25

    .line 483
    add-float v31, v31, v26

    .line 484
    add-float v28, v28, v25

    .line 485
    add-float v32, v32, v26

    .line 486
    add-float v29, v29, v25

    .line 487
    add-float v33, v33, v26

    .line 488
    add-float v30, v30, v25

    .line 489
    add-float v34, v34, v26

    .line 492
    if-eqz p11, :cond_6

    .line 493
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v17, v0

    .line 494
    .local v17, "u1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v21, v0

    .line 495
    .local v21, "v1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v18, v0

    .line 496
    .local v18, "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v22, v0

    .line 497
    .local v22, "v2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v19, v0

    .line 498
    .local v19, "u3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v23, v0

    .line 499
    .local v23, "v3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v20, v0

    .line 500
    .local v20, "u4":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v24, v0

    .line 512
    .local v24, "v4":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    move-object/from16 v16, v0

    .line 514
    .local v16, "t":Lcom/badlogic/gdx/math/Affine2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v37, v0

    mul-float v37, v37, v27

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v38, v0

    mul-float v38, v38, v31

    add-float v37, v37, v38

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v38, v0

    add-float v37, v37, v38

    aput v37, v35, v36

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v37, v0

    mul-float v37, v37, v27

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v38, v0

    mul-float v38, v38, v31

    add-float v37, v37, v38

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v38, v0

    add-float v37, v37, v38

    aput v37, v35, v36

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v37, v0

    aput v37, v35, v36

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x3

    aput v17, v35, v36

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x4

    aput v21, v35, v36

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v37, v0

    mul-float v37, v37, v28

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v38, v0

    mul-float v38, v38, v32

    add-float v37, v37, v38

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v38, v0

    add-float v37, v37, v38

    aput v37, v35, v36

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x6

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v37, v0

    mul-float v37, v37, v28

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v38, v0

    mul-float v38, v38, v32

    add-float v37, v37, v38

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v38, v0

    add-float v37, v37, v38

    aput v37, v35, v36

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v37, v0

    aput v37, v35, v36

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x8

    aput v18, v35, v36

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x9

    aput v22, v35, v36

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0xa

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v37, v0

    mul-float v37, v37, v29

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v38, v0

    mul-float v38, v38, v33

    add-float v37, v37, v38

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v38, v0

    add-float v37, v37, v38

    aput v37, v35, v36

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0xb

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v37, v0

    mul-float v37, v37, v29

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v38, v0

    mul-float v38, v38, v33

    add-float v37, v37, v38

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v38, v0

    add-float v37, v37, v38

    aput v37, v35, v36

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v37, v0

    aput v37, v35, v36

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0xd

    aput v19, v35, v36

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0xe

    aput v23, v35, v36

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0xf

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v37, v0

    mul-float v37, v37, v30

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v38, v0

    mul-float v38, v38, v34

    add-float v37, v37, v38

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v38, v0

    add-float v37, v37, v38

    aput v37, v35, v36

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v37, v0

    mul-float v37, v37, v30

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v38, v0

    mul-float v38, v38, v34

    add-float v37, v37, v38

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v38, v0

    add-float v37, v37, v38

    aput v37, v35, v36

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v37, v0

    aput v37, v35, v36

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x12

    aput v20, v35, v36

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x13

    aput v24, v35, v36

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x14

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    .line 539
    return-void

    .line 415
    .end local v3    # "fx":F
    .end local v4    # "fx2":F
    .end local v5    # "fy":F
    .end local v6    # "fy2":F
    .end local v7    # "p1x":F
    .end local v8    # "p1y":F
    .end local v9    # "p2x":F
    .end local v10    # "p2y":F
    .end local v11    # "p3x":F
    .end local v12    # "p3y":F
    .end local v13    # "p4x":F
    .end local v14    # "p4y":F
    .end local v16    # "t":Lcom/badlogic/gdx/math/Affine2;
    .end local v17    # "u1":F
    .end local v18    # "u2":F
    .end local v19    # "u3":F
    .end local v20    # "u4":F
    .end local v21    # "v1":F
    .end local v22    # "v2":F
    .end local v23    # "v3":F
    .end local v24    # "v4":F
    .end local v25    # "worldOriginX":F
    .end local v26    # "worldOriginY":F
    .end local v27    # "x1":F
    .end local v28    # "x2":F
    .end local v29    # "x3":F
    .end local v30    # "x4":F
    .end local v31    # "y1":F
    .end local v32    # "y2":F
    .end local v33    # "y3":F
    .end local v34    # "y4":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0

    .line 469
    .restart local v3    # "fx":F
    .restart local v4    # "fx2":F
    .restart local v5    # "fy":F
    .restart local v6    # "fy2":F
    .restart local v7    # "p1x":F
    .restart local v8    # "p1y":F
    .restart local v9    # "p2x":F
    .restart local v10    # "p2y":F
    .restart local v11    # "p3x":F
    .restart local v12    # "p3y":F
    .restart local v13    # "p4x":F
    .restart local v14    # "p4y":F
    .restart local v25    # "worldOriginX":F
    .restart local v26    # "worldOriginY":F
    :cond_5
    move/from16 v27, v7

    .line 470
    .restart local v27    # "x1":F
    move/from16 v31, v8

    .line 472
    .restart local v31    # "y1":F
    move/from16 v28, v9

    .line 473
    .restart local v28    # "x2":F
    move/from16 v32, v10

    .line 475
    .restart local v32    # "y2":F
    move/from16 v29, v11

    .line 476
    .restart local v29    # "x3":F
    move/from16 v33, v12

    .line 478
    .restart local v33    # "y3":F
    move/from16 v30, v13

    .line 479
    .restart local v30    # "x4":F
    move/from16 v34, v14

    .restart local v34    # "y4":F
    goto/16 :goto_1

    .line 502
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v17, v0

    .line 503
    .restart local v17    # "u1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v21, v0

    .line 504
    .restart local v21    # "v1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v18, v0

    .line 505
    .restart local v18    # "u2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v22, v0

    .line 506
    .restart local v22    # "v2":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 v19, v0

    .line 507
    .restart local v19    # "u3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v23, v0

    .line 508
    .restart local v23    # "v3":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 v20, v0

    .line 509
    .restart local v20    # "u4":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v24, v0

    .restart local v24    # "v4":F
    goto/16 :goto_2
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 18
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 542
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawing:Z

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 544
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v14, v15, :cond_2

    .line 545
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 548
    :cond_1
    :goto_0
    move-object/from16 v1, p4

    .line 551
    .local v1, "t":Lcom/badlogic/gdx/math/Affine2;
    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 552
    .local v6, "x1":F
    iget v10, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 553
    .local v10, "y1":F
    iget v14, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v14, v14, p3

    iget v15, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float v7, v14, v15

    .line 554
    .local v7, "x2":F
    iget v14, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v14, v14, p3

    iget v15, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float v11, v14, v15

    .line 555
    .local v11, "y2":F
    iget v14, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v14, v14, p2

    iget v15, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    iget v15, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float v8, v14, v15

    .line 556
    .local v8, "x3":F
    iget v14, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v14, v14, p2

    iget v15, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    iget v15, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float v12, v14, v15

    .line 557
    .local v12, "y3":F
    iget v14, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v14, v14, p2

    iget v15, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float v9, v14, v15

    .line 558
    .local v9, "x4":F
    iget v14, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v14, v14, p2

    iget v15, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float v13, v14, v15

    .line 561
    .local v13, "y4":F
    move-object/from16 v0, p1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 562
    .local v2, "u":F
    move-object/from16 v0, p1

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 563
    .local v4, "v":F
    move-object/from16 v0, p1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 564
    .local v3, "u2":F
    move-object/from16 v0, p1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 566
    .local v5, "v2":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 568
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x0

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v17, v0

    mul-float v17, v17, v10

    add-float v16, v16, v17

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x1

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v17, v0

    mul-float v17, v17, v10

    add-float v16, v16, v17

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v16, v0

    aput v16, v14, v15

    .line 571
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x3

    aput v2, v14, v15

    .line 572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x4

    aput v4, v14, v15

    .line 574
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x5

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    add-float v16, v16, v17

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 575
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x6

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    add-float v16, v16, v17

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v16, v0

    aput v16, v14, v15

    .line 577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x8

    aput v2, v14, v15

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x9

    aput v5, v14, v15

    .line 580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0xa

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v16, v16, v17

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0xb

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v16, v16, v17

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 582
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v16, v0

    aput v16, v14, v15

    .line 583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0xd

    aput v3, v14, v15

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0xe

    aput v5, v14, v15

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0xf

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v17, v0

    mul-float v17, v17, v13

    add-float v16, v16, v17

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x10

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v17, v0

    mul-float v17, v17, v13

    add-float v16, v16, v17

    iget v0, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v16, v0

    aput v16, v14, v15

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x12

    aput v3, v14, v15

    .line 590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v15, v15, 0x13

    aput v4, v14, v15

    .line 592
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v14, v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    .line 593
    return-void

    .line 546
    .end local v1    # "t":Lcom/badlogic/gdx/math/Affine2;
    .end local v2    # "u":F
    .end local v3    # "u2":F
    .end local v4    # "v":F
    .end local v5    # "v2":F
    .end local v6    # "x1":F
    .end local v7    # "x2":F
    .end local v8    # "x3":F
    .end local v9    # "x4":F
    .end local v10    # "y1":F
    .end local v11    # "y2":F
    .end local v12    # "y3":F
    .end local v13    # "y4":F
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    array-length v15, v15

    if-ne v14, v15, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0
.end method

.method private drawAdjustedUV(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V
    .locals 32
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "u"    # F
    .param p12, "v"    # F
    .param p13, "u2"    # F
    .param p14, "v2"    # F
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawing:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    new-instance v28, Ljava/lang/IllegalStateException;

    const-string v29, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 291
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 292
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 296
    :cond_1
    :goto_0
    add-float v18, p2, p4

    .line 297
    .local v18, "worldOriginX":F
    add-float v19, p3, p5

    .line 298
    .local v19, "worldOriginY":F
    move/from16 v0, p4

    neg-float v3, v0

    .line 299
    .local v3, "fx":F
    move/from16 v0, p5

    neg-float v5, v0

    .line 300
    .local v5, "fy":F
    sub-float v4, p6, p4

    .line 301
    .local v4, "fx2":F
    sub-float v6, p7, p5

    .line 304
    .local v6, "fy2":F
    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v28, p8, v28

    if-nez v28, :cond_2

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v28, p9, v28

    if-eqz v28, :cond_3

    .line 305
    :cond_2
    mul-float v3, v3, p8

    .line 306
    mul-float v5, v5, p9

    .line 307
    mul-float v4, v4, p8

    .line 308
    mul-float v6, v6, p9

    .line 312
    :cond_3
    move v7, v3

    .line 313
    .local v7, "p1x":F
    move v8, v5

    .line 314
    .local v8, "p1y":F
    move v9, v3

    .line 315
    .local v9, "p2x":F
    move v10, v6

    .line 316
    .local v10, "p2y":F
    move v11, v4

    .line 317
    .local v11, "p3x":F
    move v12, v6

    .line 318
    .local v12, "p3y":F
    move v13, v4

    .line 319
    .local v13, "p4x":F
    move v14, v5

    .line 331
    .local v14, "p4y":F
    const/16 v28, 0x0

    cmpl-float v28, p10, v28

    if-eqz v28, :cond_7

    .line 332
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 333
    .local v2, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 335
    .local v15, "sin":F
    mul-float v28, v2, v7

    mul-float v29, v15, v8

    sub-float v20, v28, v29

    .line 336
    .local v20, "x1":F
    mul-float v28, v15, v7

    mul-float v29, v2, v8

    add-float v24, v28, v29

    .line 338
    .local v24, "y1":F
    mul-float v28, v2, v9

    mul-float v29, v15, v10

    sub-float v21, v28, v29

    .line 339
    .local v21, "x2":F
    mul-float v28, v15, v9

    mul-float v29, v2, v10

    add-float v25, v28, v29

    .line 341
    .local v25, "y2":F
    mul-float v28, v2, v11

    mul-float v29, v15, v12

    sub-float v22, v28, v29

    .line 342
    .local v22, "x3":F
    mul-float v28, v15, v11

    mul-float v29, v2, v12

    add-float v26, v28, v29

    .line 344
    .local v26, "y3":F
    sub-float v28, v22, v21

    add-float v23, v20, v28

    .line 345
    .local v23, "x4":F
    sub-float v28, v25, v24

    sub-float v27, v26, v28

    .line 360
    .end local v2    # "cos":F
    .end local v15    # "sin":F
    .local v27, "y4":F
    :goto_1
    add-float v20, v20, v18

    .line 361
    add-float v24, v24, v19

    .line 362
    add-float v21, v21, v18

    .line 363
    add-float v25, v25, v19

    .line 364
    add-float v22, v22, v18

    .line 365
    add-float v26, v26, v19

    .line 366
    add-float v23, v23, v18

    .line 367
    add-float v27, v27, v19

    .line 369
    if-eqz p15, :cond_4

    .line 370
    move/from16 v17, p11

    .line 371
    .local v17, "tmp":F
    move/from16 p11, p13

    .line 372
    move/from16 p13, v17

    .line 374
    .end local v17    # "tmp":F
    :cond_4
    if-eqz p16, :cond_5

    .line 375
    move/from16 v17, p12

    .line 376
    .restart local v17    # "tmp":F
    move/from16 p12, p14

    .line 377
    move/from16 p14, v17

    .line 380
    .end local v17    # "tmp":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    move-object/from16 v16, v0

    .line 382
    .local v16, "t":Lcom/badlogic/gdx/math/Affine2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v30, v0

    mul-float v30, v30, v20

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v31, v0

    mul-float v31, v31, v24

    add-float v30, v30, v31

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v31, v0

    add-float v30, v30, v31

    aput v30, v28, v29

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v30, v0

    mul-float v30, v30, v20

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v31, v0

    mul-float v31, v31, v24

    add-float v30, v30, v31

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v31, v0

    add-float v30, v30, v31

    aput v30, v28, v29

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v30, v0

    aput v30, v28, v29

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x3

    aput p11, v28, v29

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x4

    aput p12, v28, v29

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v30, v0

    mul-float v30, v30, v21

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v31, v0

    mul-float v31, v31, v25

    add-float v30, v30, v31

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v31, v0

    add-float v30, v30, v31

    aput v30, v28, v29

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x6

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v30, v0

    mul-float v30, v30, v21

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v31, v0

    mul-float v31, v31, v25

    add-float v30, v30, v31

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v31, v0

    add-float v30, v30, v31

    aput v30, v28, v29

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v30, v0

    aput v30, v28, v29

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x8

    aput p11, v28, v29

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x9

    aput p14, v28, v29

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0xa

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v30, v0

    mul-float v30, v30, v22

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v31, v0

    mul-float v31, v31, v26

    add-float v30, v30, v31

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v31, v0

    add-float v30, v30, v31

    aput v30, v28, v29

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0xb

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v30, v0

    mul-float v30, v30, v22

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v31, v0

    mul-float v31, v31, v26

    add-float v30, v30, v31

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v31, v0

    add-float v30, v30, v31

    aput v30, v28, v29

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v30, v0

    aput v30, v28, v29

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0xd

    aput p13, v28, v29

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0xe

    aput p14, v28, v29

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0xf

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    move/from16 v30, v0

    mul-float v30, v30, v23

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    move/from16 v31, v0

    mul-float v31, v31, v27

    add-float v30, v30, v31

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    move/from16 v31, v0

    add-float v30, v30, v31

    aput v30, v28, v29

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    move/from16 v30, v0

    mul-float v30, v30, v23

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    move/from16 v31, v0

    mul-float v31, v31, v27

    add-float v30, v30, v31

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    move/from16 v31, v0

    add-float v30, v30, v31

    aput v30, v28, v29

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->color:F

    move/from16 v30, v0

    aput v30, v28, v29

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x12

    aput p13, v28, v29

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x13

    aput p12, v28, v29

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x14

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    .line 407
    return-void

    .line 293
    .end local v3    # "fx":F
    .end local v4    # "fx2":F
    .end local v5    # "fy":F
    .end local v6    # "fy2":F
    .end local v7    # "p1x":F
    .end local v8    # "p1y":F
    .end local v9    # "p2x":F
    .end local v10    # "p2y":F
    .end local v11    # "p3x":F
    .end local v12    # "p3y":F
    .end local v13    # "p4x":F
    .end local v14    # "p4y":F
    .end local v16    # "t":Lcom/badlogic/gdx/math/Affine2;
    .end local v18    # "worldOriginX":F
    .end local v19    # "worldOriginY":F
    .end local v20    # "x1":F
    .end local v21    # "x2":F
    .end local v22    # "x3":F
    .end local v23    # "x4":F
    .end local v24    # "y1":F
    .end local v25    # "y2":F
    .end local v26    # "y3":F
    .end local v27    # "y4":F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    goto/16 :goto_0

    .line 347
    .restart local v3    # "fx":F
    .restart local v4    # "fx2":F
    .restart local v5    # "fy":F
    .restart local v6    # "fy2":F
    .restart local v7    # "p1x":F
    .restart local v8    # "p1y":F
    .restart local v9    # "p2x":F
    .restart local v10    # "p2y":F
    .restart local v11    # "p3x":F
    .restart local v12    # "p3y":F
    .restart local v13    # "p4x":F
    .restart local v14    # "p4y":F
    .restart local v18    # "worldOriginX":F
    .restart local v19    # "worldOriginY":F
    :cond_7
    move/from16 v20, v7

    .line 348
    .restart local v20    # "x1":F
    move/from16 v24, v8

    .line 350
    .restart local v24    # "y1":F
    move/from16 v21, v9

    .line 351
    .restart local v21    # "x2":F
    move/from16 v25, v10

    .line 353
    .restart local v25    # "y2":F
    move/from16 v22, v11

    .line 354
    .restart local v22    # "x3":F
    move/from16 v26, v12

    .line 356
    .restart local v26    # "y3":F
    move/from16 v23, v13

    .line 357
    .restart local v23    # "x4":F
    move/from16 v27, v14

    .restart local v27    # "y4":F
    goto/16 :goto_1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 18
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v1, :cond_0

    .line 194
    invoke-super/range {p0 .. p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 18
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v1, :cond_0

    .line 203
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 18
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "u2"    # F
    .param p9, "v2"    # F

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v1, :cond_0

    .line 185
    invoke-super/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-direct/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjustedUV(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 1
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "srcX"    # I
    .param p12, "srcY"    # I
    .param p13, "srcWidth"    # I
    .param p14, "srcHeight"    # I
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 154
    invoke-super/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 18
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "srcWidth"    # I
    .param p9, "srcHeight"    # I
    .param p10, "flipX"    # Z
    .param p11, "flipY"    # Z

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v1, :cond_0

    .line 166
    invoke-super/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    invoke-direct/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 18
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v1, :cond_0

    .line 175
    invoke-super/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-direct/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 2
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"    # [F
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 249
    rem-int/lit8 v0, p4, 0x14

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "invalid vertex count"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_1

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 11
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v9, v8

    move v10, v4

    invoke-direct/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 11
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 221
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 231
    invoke-super/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "clockwise"    # Z

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 241
    invoke-super/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V

    goto :goto_0
.end method

.method public flushAndSyncTransformMatrix()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->flush()V

    .line 72
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkIdt(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    .line 76
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->det()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Transform matrix is singular, can\'t sync"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 82
    :cond_1
    return-void
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    goto :goto_0
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Affine2;)V
    .locals 2
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 125
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 127
    .local v0, "realMatrix":Lcom/badlogic/gdx/math/Matrix4;
    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkEqual(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Affine2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    .line 148
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    .line 132
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    .line 138
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Affine2;->inv()Lcom/badlogic/gdx/math/Affine2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->mul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    .line 145
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkIdt(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    goto :goto_0
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 3
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 95
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 97
    .local v0, "realMatrix":Lcom/badlogic/gdx/math/Matrix4;
    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkEqual(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    .line 118
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    .line 107
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->tmpAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    .line 111
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Affine2;->inv()Lcom/badlogic/gdx/math/Affine2;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->tmpAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Affine2;->mul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 115
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkIdt(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    goto :goto_0
.end method

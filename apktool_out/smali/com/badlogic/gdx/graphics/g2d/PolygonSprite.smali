.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;
.super Ljava/lang/Object;
.source "PolygonSprite.java"


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private dirty:Z

.field private height:F

.field private originX:F

.field private originY:F

.field region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private vertices:[F

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 40
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(FFFF)V

    .line 41
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setSize(FF)V

    .line 42
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V
    .locals 2
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 47
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->set(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V
    .locals 9
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 264
    .local v8, "region":Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getVertices()[F

    move-result-object v2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    array-length v4, v0

    iget-object v5, v8, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    array-length v7, v0

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V

    .line 265
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;F)V
    .locals 3
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;
    .param p2, "alphaModulation"    # F

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 269
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 270
    .local v1, "oldAlpha":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 271
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    .line 273
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 274
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 275
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getVertices()[F

    move-result-object v5

    .line 241
    .local v5, "vertices":[F
    aget v3, v5, v8

    .line 242
    .local v3, "minx":F
    aget v4, v5, v9

    .line 243
    .local v4, "miny":F
    aget v1, v5, v8

    .line 244
    .local v1, "maxx":F
    aget v2, v5, v9

    .line 246
    .local v2, "maxy":F
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    array-length v8, v5

    if-ge v0, v8, :cond_4

    .line 247
    aget v6, v5, v0

    .line 248
    .local v6, "x":F
    add-int/lit8 v8, v0, 0x1

    aget v7, v5, v8

    .line 249
    .local v7, "y":F
    cmpl-float v8, v3, v6

    if-lez v8, :cond_0

    move v3, v6

    .line 250
    :cond_0
    cmpg-float v8, v1, v6

    if-gez v8, :cond_1

    move v1, v6

    .line 251
    :cond_1
    cmpl-float v8, v4, v7

    if-lez v8, :cond_2

    move v4, v7

    .line 252
    :cond_2
    cmpg-float v8, v2, v7

    if-gez v8, :cond_3

    move v2, v7

    .line 246
    :cond_3
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 255
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_4
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v3, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 256
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v4, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 257
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v9, v1, v3

    iput v9, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 258
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v9, v2, v4

    iput v9, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 259
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v8
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    return v0
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    return v0
.end method

.method public getVertexColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 322
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    .line 323
    .local v1, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 324
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 325
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 326
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 327
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 328
    return-object v0
.end method

.method public getVertices()[F
    .locals 23

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    move-object/from16 v17, v0

    .line 231
    :cond_0
    return-object v17

    .line 207
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 209
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    .line 210
    .local v7, "originX":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    .line 211
    .local v8, "originY":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 212
    .local v13, "scaleX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 213
    .local v14, "scaleY":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 214
    .local v9, "region":Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    move-object/from16 v17, v0

    .line 215
    .local v17, "vertices":[F
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 217
    .local v10, "regionVertices":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    move/from16 v20, v0

    add-float v18, v20, v7

    .line 218
    .local v18, "worldOriginX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    move/from16 v20, v0

    add-float v19, v20, v8

    .line 219
    .local v19, "worldOriginY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    move/from16 v20, v0

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v11, v20, v21

    .line 220
    .local v11, "sX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    move/from16 v20, v0

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 221
    .local v12, "sY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 222
    .local v2, "cos":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 225
    .local v15, "sin":F
    const/4 v5, 0x0

    .local v5, "i":I
    const/16 v16, 0x0

    .local v16, "v":I
    array-length v6, v10

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 226
    aget v20, v10, v5

    mul-float v20, v20, v11

    sub-float v20, v20, v7

    mul-float v3, v20, v13

    .line 227
    .local v3, "fx":F
    add-int/lit8 v20, v5, 0x1

    aget v20, v10, v20

    mul-float v20, v20, v12

    sub-float v20, v20, v8

    mul-float v4, v20, v14

    .line 228
    .local v4, "fy":F
    mul-float v20, v2, v3

    mul-float v21, v15, v4

    sub-float v20, v20, v21

    add-float v20, v20, v18

    aput v20, v17, v16

    .line 229
    add-int/lit8 v20, v16, 0x1

    mul-float v21, v15, v3

    mul-float v22, v2, v4

    add-float v21, v21, v22

    add-float v21, v21, v19

    aput v21, v17, v20

    .line 225
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v16, v16, 0x5

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 181
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 183
    return-void
.end method

.method public scale(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 199
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 200
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 202
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V
    .locals 2
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    .prologue
    .line 51
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sprite cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 55
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 57
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 58
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 59
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    .line 60
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    .line 61
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 62
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 63
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 65
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 66
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 72
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 73
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 74
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 77
    return-void
.end method

.method public setColor(FFFF)V
    .locals 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 159
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 160
    mul-float v4, v6, p4

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    mul-float v5, v6, p3

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    mul-float v5, v6, p2

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    mul-float v5, v6, p1

    float-to-int v5, v5

    or-int v2, v4, v5

    .line 161
    .local v2, "intBits":I
    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    .line 162
    .local v0, "color":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 163
    .local v3, "vertices":[F
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 164
    aput v0, v3, v1

    .line 163
    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 150
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 151
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 153
    .local v0, "color":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 154
    .local v2, "vertices":[F
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 155
    aput v0, v2, v1

    .line 154
    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .prologue
    .line 169
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    .line 170
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 172
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 93
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translate(FF)V

    .line 94
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V
    .locals 8
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 334
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 335
    .local v2, "regionVertices":[F
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 337
    .local v3, "textureCoords":[F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    if-eqz v6, :cond_0

    array-length v6, v2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    array-length v7, v7

    if-eq v6, v7, :cond_1

    :cond_0
    array-length v6, v2

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x5

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 340
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 341
    .local v5, "vertices":[F
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v4, 0x2

    .local v4, "v":I
    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 342
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    aput v6, v5, v4

    .line 343
    add-int/lit8 v6, v4, 0x1

    aget v7, v3, v0

    aput v7, v5, v6

    .line 344
    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v0, 0x1

    aget v7, v3, v7

    aput v7, v5, v6

    .line 341
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v4, 0x5

    goto :goto_0

    .line 347
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 348
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 175
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 177
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scaleXY"    # F

    .prologue
    .line 186
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 187
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 189
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 192
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 193
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 195
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 84
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 87
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 100
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translateX(F)V

    .line 101
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 107
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translateY(F)V

    .line 108
    return-void
.end method

.method public translate(FF)V
    .locals 4
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    .line 137
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 138
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 140
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 143
    .local v1, "vertices":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 144
    aget v2, v1, v0

    add-float/2addr v2, p1

    aput v2, v1, v0

    .line 145
    add-int/lit8 v2, v0, 0x1

    aget v3, v1, v2

    add-float/2addr v3, p2

    aput v3, v1, v2

    .line 143
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public translateX(F)V
    .locals 3
    .param p1, "xAmount"    # F

    .prologue
    .line 113
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 115
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 118
    .local v1, "vertices":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 119
    aget v2, v1, v0

    add-float/2addr v2, p1

    aput v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public translateY(F)V
    .locals 3
    .param p1, "yAmount"    # F

    .prologue
    .line 125
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 127
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 130
    .local v1, "vertices":[F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 131
    aget v2, v1, v0

    add-float/2addr v2, p1

    aput v2, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

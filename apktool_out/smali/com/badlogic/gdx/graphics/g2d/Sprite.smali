.class public Lcom/badlogic/gdx/graphics/g2d/Sprite;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "Sprite.java"


# static fields
.field static final SPRITE_SIZE:I = 0x14

.field static final VERTEX_SIZE:I = 0x5


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private dirty:Z

.field height:F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field final vertices:[F

.field width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 51
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "srcWidth"    # I
    .param p3, "srcHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 64
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 3
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 71
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "texture cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 73
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(IIII)V

    .line 74
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 75
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 2
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 101
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 102
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 83
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 84
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 85
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 95
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 96
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 98
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 4
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 516
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "alphaModulation"    # F

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 520
    .local v0, "oldAlpha":F
    mul-float v1, v0, p2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setAlpha(F)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 522
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setAlpha(F)V

    .line 523
    return-void
.end method

.method public flip(ZZ)V
    .locals 8
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 637
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 638
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 639
    .local v1, "vertices":[F
    if-eqz p1, :cond_0

    .line 640
    aget v0, v1, v3

    .line 641
    .local v0, "temp":F
    aget v2, v1, v7

    aput v2, v1, v3

    .line 642
    aput v0, v1, v7

    .line 643
    aget v0, v1, v5

    .line 644
    const/16 v2, 0x12

    aget v2, v1, v2

    aput v2, v1, v5

    .line 645
    const/16 v2, 0x12

    aput v0, v1, v2

    .line 647
    .end local v0    # "temp":F
    :cond_0
    if-eqz p2, :cond_1

    .line 648
    aget v0, v1, v4

    .line 649
    .restart local v0    # "temp":F
    const/16 v2, 0xe

    aget v2, v1, v2

    aput v2, v1, v4

    .line 650
    const/16 v2, 0xe

    aput v0, v1, v2

    .line 651
    aget v0, v1, v6

    .line 652
    const/16 v2, 0x13

    aget v2, v1, v2

    aput v2, v1, v6

    .line 653
    const/16 v2, 0x13

    aput v0, v1, v2

    .line 655
    .end local v0    # "temp":F
    :cond_1
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x6

    const/4 v6, 0x5

    .line 483
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v4

    .line 485
    .local v4, "vertices":[F
    const/4 v5, 0x0

    aget v2, v4, v5

    .line 486
    .local v2, "minx":F
    const/4 v5, 0x1

    aget v3, v4, v5

    .line 487
    .local v3, "miny":F
    const/4 v5, 0x0

    aget v0, v4, v5

    .line 488
    .local v0, "maxx":F
    const/4 v5, 0x1

    aget v1, v4, v5

    .line 490
    .local v1, "maxy":F
    aget v5, v4, v6

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    aget v2, v4, v6

    .line 491
    :cond_0
    aget v5, v4, v8

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    aget v2, v4, v8

    .line 492
    :cond_1
    aget v5, v4, v10

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    aget v2, v4, v10

    .line 494
    :cond_2
    aget v5, v4, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    aget v0, v4, v6

    .line 495
    :cond_3
    aget v5, v4, v8

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4

    aget v0, v4, v8

    .line 496
    :cond_4
    aget v5, v4, v10

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    aget v0, v4, v10

    .line 498
    :cond_5
    aget v5, v4, v7

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    aget v3, v4, v7

    .line 499
    :cond_6
    aget v5, v4, v9

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    aget v3, v4, v9

    .line 500
    :cond_7
    const/16 v5, 0x10

    aget v5, v4, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_8

    const/16 v5, 0x10

    aget v3, v4, v5

    .line 502
    :cond_8
    aget v5, v4, v7

    cmpg-float v5, v1, v5

    if-gez v5, :cond_9

    aget v1, v4, v7

    .line 503
    :cond_9
    aget v5, v4, v9

    cmpg-float v5, v1, v5

    if-gez v5, :cond_a

    aget v1, v4, v9

    .line 504
    :cond_a
    const/16 v5, 0x10

    aget v5, v4, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_b

    const/16 v5, 0x10

    aget v1, v4, v5

    .line 506
    :cond_b
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v5, :cond_c

    new-instance v5, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 507
    :cond_c
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v2, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 508
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v3, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 509
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v0, v2

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 510
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v1, v3

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 511
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v5
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 568
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    .line 569
    .local v1, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 570
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 571
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 572
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 573
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 574
    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .locals 27

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 411
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    move-object/from16 v16, v0

    .line 414
    .local v16, "vertices":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v3, v0

    .line 415
    .local v3, "localX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v9, v0

    .line 416
    .local v9, "localY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    move/from16 v25, v0

    add-float v4, v3, v25

    .line 417
    .local v4, "localX2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    move/from16 v25, v0

    add-float v10, v9, v25

    .line 418
    .local v10, "localY2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    move/from16 v25, v0

    sub-float v17, v25, v3

    .line 419
    .local v17, "worldOriginX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    move/from16 v25, v0

    sub-float v18, v25, v9

    .line 420
    .local v18, "worldOriginY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_1

    .line 421
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    move/from16 v25, v0

    mul-float v3, v3, v25

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    move/from16 v25, v0

    mul-float v9, v9, v25

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    move/from16 v25, v0

    mul-float v4, v4, v25

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    move/from16 v25, v0

    mul-float v10, v10, v25

    .line 426
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_3

    .line 427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v2

    .line 428
    .local v2, "cos":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v15

    .line 429
    .local v15, "sin":F
    mul-float v7, v3, v2

    .line 430
    .local v7, "localXCos":F
    mul-float v8, v3, v15

    .line 431
    .local v8, "localXSin":F
    mul-float v13, v9, v2

    .line 432
    .local v13, "localYCos":F
    mul-float v14, v9, v15

    .line 433
    .local v14, "localYSin":F
    mul-float v5, v4, v2

    .line 434
    .local v5, "localX2Cos":F
    mul-float v6, v4, v15

    .line 435
    .local v6, "localX2Sin":F
    mul-float v11, v10, v2

    .line 436
    .local v11, "localY2Cos":F
    mul-float v12, v10, v15

    .line 438
    .local v12, "localY2Sin":F
    sub-float v25, v7, v14

    add-float v19, v25, v17

    .line 439
    .local v19, "x1":F
    add-float v25, v13, v8

    add-float v22, v25, v18

    .line 440
    .local v22, "y1":F
    const/16 v25, 0x0

    aput v19, v16, v25

    .line 441
    const/16 v25, 0x1

    aput v22, v16, v25

    .line 443
    sub-float v25, v7, v12

    add-float v20, v25, v17

    .line 444
    .local v20, "x2":F
    add-float v25, v11, v8

    add-float v23, v25, v18

    .line 445
    .local v23, "y2":F
    const/16 v25, 0x5

    aput v20, v16, v25

    .line 446
    const/16 v25, 0x6

    aput v23, v16, v25

    .line 448
    sub-float v25, v5, v12

    add-float v21, v25, v17

    .line 449
    .local v21, "x3":F
    add-float v25, v11, v6

    add-float v24, v25, v18

    .line 450
    .local v24, "y3":F
    const/16 v25, 0xa

    aput v21, v16, v25

    .line 451
    const/16 v25, 0xb

    aput v24, v16, v25

    .line 453
    const/16 v25, 0xf

    sub-float v26, v21, v20

    add-float v26, v26, v19

    aput v26, v16, v25

    .line 454
    const/16 v25, 0x10

    sub-float v26, v23, v22

    sub-float v26, v24, v26

    aput v26, v16, v25

    .line 474
    .end local v2    # "cos":F
    .end local v3    # "localX":F
    .end local v4    # "localX2":F
    .end local v5    # "localX2Cos":F
    .end local v6    # "localX2Sin":F
    .end local v7    # "localXCos":F
    .end local v8    # "localXSin":F
    .end local v9    # "localY":F
    .end local v10    # "localY2":F
    .end local v11    # "localY2Cos":F
    .end local v12    # "localY2Sin":F
    .end local v13    # "localYCos":F
    .end local v14    # "localYSin":F
    .end local v15    # "sin":F
    .end local v16    # "vertices":[F
    .end local v17    # "worldOriginX":F
    .end local v18    # "worldOriginY":F
    .end local v19    # "x1":F
    .end local v20    # "x2":F
    .end local v21    # "x3":F
    .end local v22    # "y1":F
    .end local v23    # "y2":F
    .end local v24    # "y3":F
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    move-object/from16 v25, v0

    return-object v25

    .line 456
    .restart local v3    # "localX":F
    .restart local v4    # "localX2":F
    .restart local v9    # "localY":F
    .restart local v10    # "localY2":F
    .restart local v16    # "vertices":[F
    .restart local v17    # "worldOriginX":F
    .restart local v18    # "worldOriginY":F
    :cond_3
    add-float v19, v3, v17

    .line 457
    .restart local v19    # "x1":F
    add-float v22, v9, v18

    .line 458
    .restart local v22    # "y1":F
    add-float v20, v4, v17

    .line 459
    .restart local v20    # "x2":F
    add-float v23, v10, v18

    .line 461
    .restart local v23    # "y2":F
    const/16 v25, 0x0

    aput v19, v16, v25

    .line 462
    const/16 v25, 0x1

    aput v22, v16, v25

    .line 464
    const/16 v25, 0x5

    aput v19, v16, v25

    .line 465
    const/16 v25, 0x6

    aput v23, v16, v25

    .line 467
    const/16 v25, 0xa

    aput v20, v16, v25

    .line 468
    const/16 v25, 0xb

    aput v23, v16, v25

    .line 470
    const/16 v25, 0xf

    aput v20, v16, v25

    .line 471
    const/16 v25, 0x10

    aput v22, v16, v25

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 346
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    goto :goto_0
.end method

.method public rotate90(Z)V
    .locals 8
    .param p1, "clockwise"    # Z

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x3

    .line 354
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 356
    .local v1, "vertices":[F
    if-eqz p1, :cond_0

    .line 357
    aget v0, v1, v3

    .line 358
    .local v0, "temp":F
    const/16 v2, 0x13

    aget v2, v1, v2

    aput v2, v1, v3

    .line 359
    const/16 v2, 0x13

    const/16 v3, 0xe

    aget v3, v1, v3

    aput v3, v1, v2

    .line 360
    const/16 v2, 0xe

    aget v3, v1, v6

    aput v3, v1, v2

    .line 361
    aput v0, v1, v6

    .line 363
    aget v0, v1, v4

    .line 364
    const/16 v2, 0x12

    aget v2, v1, v2

    aput v2, v1, v4

    .line 365
    const/16 v2, 0x12

    aget v3, v1, v7

    aput v3, v1, v2

    .line 366
    aget v2, v1, v5

    aput v2, v1, v7

    .line 367
    aput v0, v1, v5

    .line 381
    :goto_0
    return-void

    .line 369
    .end local v0    # "temp":F
    :cond_0
    aget v0, v1, v3

    .line 370
    .restart local v0    # "temp":F
    aget v2, v1, v6

    aput v2, v1, v3

    .line 371
    const/16 v2, 0xe

    aget v2, v1, v2

    aput v2, v1, v6

    .line 372
    const/16 v2, 0xe

    const/16 v3, 0x13

    aget v3, v1, v3

    aput v3, v1, v2

    .line 373
    const/16 v2, 0x13

    aput v0, v1, v2

    .line 375
    aget v0, v1, v4

    .line 376
    aget v2, v1, v5

    aput v2, v1, v4

    .line 377
    aget v2, v1, v7

    aput v2, v1, v5

    .line 378
    const/16 v2, 0x12

    aget v2, v1, v2

    aput v2, v1, v7

    .line 379
    const/16 v2, 0x12

    aput v0, v1, v2

    goto :goto_0
.end method

.method public scale(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 403
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 404
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 406
    return-void
.end method

.method public scroll(FF)V
    .locals 11
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 658
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 659
    .local v4, "vertices":[F
    cmpl-float v5, p1, v7

    if-eqz v5, :cond_0

    .line 660
    aget v5, v4, v9

    add-float/2addr v5, p1

    rem-float v0, v5, v8

    .line 661
    .local v0, "u":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v1, v0, v5

    .line 662
    .local v1, "u2":F
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 663
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 664
    aput v0, v4, v9

    .line 665
    const/16 v5, 0x8

    aput v0, v4, v5

    .line 666
    const/16 v5, 0xd

    aput v1, v4, v5

    .line 667
    const/16 v5, 0x12

    aput v1, v4, v5

    .line 669
    .end local v0    # "u":F
    .end local v1    # "u2":F
    :cond_0
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_1

    .line 670
    aget v5, v4, v10

    add-float/2addr v5, p2

    rem-float v2, v5, v8

    .line 671
    .local v2, "v":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v3, v2, v5

    .line 672
    .local v3, "v2":F
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 673
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 674
    const/4 v5, 0x4

    aput v3, v4, v5

    .line 675
    aput v2, v4, v10

    .line 676
    const/16 v5, 0xe

    aput v2, v4, v5

    .line 677
    const/16 v5, 0x13

    aput v3, v4, v5

    .line 679
    .end local v2    # "v":F
    .end local v3    # "v2":F
    :cond_1
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 4
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .prologue
    const/4 v3, 0x0

    .line 107
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sprite cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 110
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 111
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 112
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 113
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 114
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 115
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 116
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 117
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 118
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionWidth:I

    .line 119
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionHeight:I

    .line 120
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 121
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 122
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 123
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 124
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 126
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 127
    return-void
.end method

.method public setAlpha(F)V
    .locals 5
    .param p1, "a"    # F

    .prologue
    const/4 v4, 0x2

    .line 283
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    aget v3, v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v2

    .line 284
    .local v2, "intBits":I
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    shl-int/lit8 v0, v3, 0x18

    .line 287
    .local v0, "alphaBits":I
    const v3, 0xffffff

    and-int/2addr v2, v3

    .line 289
    or-int/2addr v2, v0

    .line 290
    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    .line 291
    .local v1, "color":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    aput v1, v3, v4

    .line 292
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v4, 0x7

    aput v1, v3, v4

    .line 293
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v4, 0xc

    aput v1, v3, v4

    .line 294
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v4, 0x11

    aput v1, v3, v4

    .line 295
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 132
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 133
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 134
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 135
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 137
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    add-float v1, p1, p3

    .line 140
    .local v1, "x2":F
    add-float v2, p2, p4

    .line 141
    .local v2, "y2":F
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 142
    .local v0, "vertices":[F
    const/4 v3, 0x0

    aput p1, v0, v3

    .line 143
    aput p2, v0, v6

    .line 145
    const/4 v3, 0x5

    aput p1, v0, v3

    .line 146
    const/4 v3, 0x6

    aput v2, v0, v3

    .line 148
    const/16 v3, 0xa

    aput v1, v0, v3

    .line 149
    const/16 v3, 0xb

    aput v2, v0, v3

    .line 151
    const/16 v3, 0xf

    aput v1, v0, v3

    .line 152
    const/16 v3, 0x10

    aput p2, v0, v3

    .line 154
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    goto :goto_0
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setCenterX(F)V

    .line 218
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setCenterY(F)V

    .line 219
    return-void
.end method

.method public setCenterX(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 207
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setX(F)V

    .line 208
    return-void
.end method

.method public setCenterY(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 212
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setY(F)V

    .line 213
    return-void
.end method

.method public setColor(F)V
    .locals 2
    .param p1, "color"    # F

    .prologue
    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 312
    .local v0, "vertices":[F
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 313
    const/4 v1, 0x7

    aput p1, v0, v1

    .line 314
    const/16 v1, 0xc

    aput p1, v0, v1

    .line 315
    const/16 v1, 0x11

    aput p1, v0, v1

    .line 316
    return-void
.end method

.method public setColor(FFFF)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 299
    mul-float v3, v5, p4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    mul-float v4, v5, p3

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    mul-float v4, v5, p2

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    mul-float v4, v5, p1

    float-to-int v4, v4

    or-int v1, v3, v4

    .line 300
    .local v1, "intBits":I
    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    .line 301
    .local v0, "color":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 302
    .local v2, "vertices":[F
    const/4 v3, 0x2

    aput v0, v2, v3

    .line 303
    const/4 v3, 0x7

    aput v0, v2, v3

    .line 304
    const/16 v3, 0xc

    aput v0, v2, v3

    .line 305
    const/16 v3, 0x11

    aput v0, v2, v3

    .line 306
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 274
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 275
    .local v1, "vertices":[F
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 276
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 277
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 278
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 279
    return-void
.end method

.method public setFlip(ZZ)V
    .locals 3
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "performX":Z
    const/4 v1, 0x0

    .line 624
    .local v1, "performY":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->isFlipX()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 625
    const/4 v0, 0x1

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->isFlipY()Z

    move-result v2

    if-eq v2, p2, :cond_1

    .line 628
    const/4 v1, 0x1

    .line 630
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    .line 631
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .prologue
    .line 320
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 321
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 323
    return-void
.end method

.method public setOriginCenter()V
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 327
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 328
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 330
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 188
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    .line 189
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 2
    .param p1, "u"    # F
    .param p2, "v"    # F
    .param p3, "u2"    # F
    .param p4, "v2"    # F

    .prologue
    .line 578
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 580
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 581
    .local v0, "vertices":[F
    const/4 v1, 0x3

    aput p1, v0, v1

    .line 582
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 584
    const/16 v1, 0x8

    aput p1, v0, v1

    .line 585
    const/16 v1, 0x9

    aput p2, v0, v1

    .line 587
    const/16 v1, 0xd

    aput p3, v0, v1

    .line 588
    const/16 v1, 0xe

    aput p2, v0, v1

    .line 590
    const/16 v1, 0x12

    aput p3, v0, v1

    .line 591
    const/16 v1, 0x13

    aput p4, v0, v1

    .line 592
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 334
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 336
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scaleXY"    # F

    .prologue
    .line 386
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 387
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 389
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 394
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 395
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 397
    return-void
.end method

.method public setSize(FF)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 161
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 162
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 164
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float v1, v3, p1

    .line 167
    .local v1, "x2":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float v2, v3, p2

    .line 168
    .local v2, "y2":F
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 169
    .local v0, "vertices":[F
    const/4 v3, 0x0

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    aput v4, v0, v3

    .line 170
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    aput v3, v0, v6

    .line 172
    const/4 v3, 0x5

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    aput v4, v0, v3

    .line 173
    const/4 v3, 0x6

    aput v2, v0, v3

    .line 175
    const/16 v3, 0xa

    aput v1, v0, v3

    .line 176
    const/16 v3, 0xb

    aput v2, v0, v3

    .line 178
    const/16 v3, 0xf

    aput v1, v0, v3

    .line 179
    const/16 v3, 0x10

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    aput v4, v0, v3

    .line 181
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    goto :goto_0
.end method

.method public setU(F)V
    .locals 2
    .param p1, "u"    # F

    .prologue
    .line 595
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 597
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x8

    aput p1, v0, v1

    .line 598
    return-void
.end method

.method public setU2(F)V
    .locals 2
    .param p1, "u2"    # F

    .prologue
    .line 607
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    .line 608
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xd

    aput p1, v0, v1

    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x12

    aput p1, v0, v1

    .line 610
    return-void
.end method

.method public setV(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 601
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 602
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x9

    aput p1, v0, v1

    .line 603
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xe

    aput p1, v0, v1

    .line 604
    return-void
.end method

.method public setV2(F)V
    .locals 2
    .param p1, "v2"    # F

    .prologue
    .line 613
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x13

    aput p1, v0, v1

    .line 616
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 195
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translateX(F)V

    .line 196
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 202
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translateY(F)V

    .line 203
    return-void
.end method

.method public translate(FF)V
    .locals 3
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    .line 252
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 253
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v1, p2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 255
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 258
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 259
    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 261
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 262
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 264
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 265
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 267
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 268
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public translateX(F)V
    .locals 3
    .param p1, "xAmount"    # F

    .prologue
    .line 224
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 226
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 229
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 230
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 231
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 232
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public translateY(F)V
    .locals 3
    .param p1, "yAmount"    # F

    .prologue
    .line 238
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 240
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 243
    .local v0, "vertices":[F
    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 244
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 245
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 246
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    goto :goto_0
.end method

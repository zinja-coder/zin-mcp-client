.class public Lcom/badlogic/gdx/math/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# static fields
.field private static final serialVersionUID:J = 0x4f909a54ea199076L

.field public static final tmp:Lcom/badlogic/gdx/math/Rectangle;

.field public static final tmp2:Lcom/badlogic/gdx/math/Rectangle;


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    .line 26
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp2:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 44
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 45
    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 46
    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 1
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 53
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 55
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 56
    return-void
.end method


# virtual methods
.method public area()F
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 186
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 6
    .param p1, "rectangle"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 198
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 199
    .local v1, "xmin":F
    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v0, v1, v4

    .line 201
    .local v0, "xmax":F
    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 202
    .local v3, "ymin":F
    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v2, v3, v4

    .line 204
    .local v2, "ymax":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 192
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    if-ne p0, p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 386
    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 387
    .local v0, "other":Lcom/badlogic/gdx/math/Rectangle;
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 388
    :cond_4
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 389
    :cond_5
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 390
    :cond_6
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public fitInside(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 5
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 346
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v0

    .line 348
    .local v0, "ratio":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 350
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 356
    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 357
    return-object p0

    .line 353
    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0
.end method

.method public fitOutside(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 5
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 327
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v0

    .line 329
    .local v0, "ratio":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 331
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 337
    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 338
    return-object p0

    .line 334
    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getCenter(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 300
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 301
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 302
    return-object p1
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return v0
.end method

.method public getPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 131
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "size"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 179
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 373
    const/16 v0, 0x1f

    .line 374
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 375
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 376
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 377
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 378
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 379
    return v1
.end method

.method public merge(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 248
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 249
    .local v2, "minX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 250
    .local v0, "maxX":F
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 251
    sub-float v4, v0, v2

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 253
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 254
    .local v3, "minY":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 255
    .local v1, "maxY":F
    iput v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 256
    sub-float v4, v1, v3

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 258
    return-object p0
.end method

.method public merge(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 7
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 230
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 231
    .local v2, "minX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 232
    .local v0, "maxX":F
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 233
    sub-float v4, v0, v2

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 235
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 236
    .local v3, "minY":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 237
    .local v1, "maxY":F
    iput v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 238
    sub-float v4, v1, v3

    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 240
    return-object p0
.end method

.method public merge(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 2
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 265
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->merge(FF)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public merge([Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 8
    .param p1, "vecs"    # [Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 272
    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 273
    .local v3, "minX":F
    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v1, v6, v7

    .line 274
    .local v1, "maxX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 275
    .local v4, "minY":F
    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v2, v6, v7

    .line 276
    .local v2, "maxY":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    .line 277
    aget-object v5, p1, v0

    .line 278
    .local v5, "v":Lcom/badlogic/gdx/math/Vector2;
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 279
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 280
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 281
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v5    # "v":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    iput v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 284
    sub-float v6, v1, v3

    iput v6, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 285
    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 286
    sub-float v6, v2, v4

    iput v6, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 287
    return-object p0
.end method

.method public overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p1, "r"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 211
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public perimeter()F
    .locals 3

    .prologue
    .line 369
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 65
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 66
    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 67
    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 69
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1
    .param p1, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 218
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 219
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 220
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 221
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 223
    return-object p0
.end method

.method public setCenter(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 310
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v0, v2

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v1, v2

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 311
    return-object p0
.end method

.method public setCenter(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 4
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 318
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    .line 319
    return-object p0
.end method

.method public setHeight(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 125
    return-object p0
.end method

.method public setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 149
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 150
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 152
    return-object p0
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 138
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 139
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 141
    return-object p0
.end method

.method public setSize(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "sizeXY"    # F

    .prologue
    .line 170
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 171
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 173
    return-object p0
.end method

.method public setSize(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 160
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 161
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 163
    return-object p0
.end method

.method public setWidth(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 111
    return-object p0
.end method

.method public setX(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 83
    return-object p0
.end method

.method public setY(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 95
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 97
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

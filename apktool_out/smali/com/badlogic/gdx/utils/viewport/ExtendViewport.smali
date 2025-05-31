.class public Lcom/badlogic/gdx/utils/viewport/ExtendViewport;
.super Lcom/badlogic/gdx/utils/viewport/Viewport;
.source "ExtendViewport.java"


# instance fields
.field private maxWorldHeight:F

.field private maxWorldWidth:F

.field private minWorldHeight:F

.field private minWorldWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 6
    .param p1, "minWorldWidth"    # F
    .param p2, "minWorldHeight"    # F

    .prologue
    const/4 v3, 0x0

    .line 34
    new-instance v5, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 35
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .param p1, "minWorldWidth"    # F
    .param p2, "minWorldHeight"    # F
    .param p3, "maxWorldWidth"    # F
    .param p4, "maxWorldHeight"    # F

    .prologue
    .line 45
    new-instance v5, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 46
    return-void
.end method

.method public constructor <init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V
    .locals 0
    .param p1, "minWorldWidth"    # F
    .param p2, "minWorldHeight"    # F
    .param p3, "maxWorldWidth"    # F
    .param p4, "maxWorldHeight"    # F
    .param p5, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;-><init>()V

    .line 52
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 53
    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 54
    iput p3, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    .line 55
    iput p4, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    .line 56
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFLcom/badlogic/gdx/graphics/Camera;)V
    .locals 6
    .param p1, "minWorldWidth"    # F
    .param p2, "minWorldHeight"    # F
    .param p3, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    const/4 v3, 0x0

    .line 39
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;-><init>(FFFFLcom/badlogic/gdx/graphics/Camera;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getMaxWorldHeight()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    return v0
.end method

.method public getMaxWorldWidth()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    return v0
.end method

.method public getMinWorldHeight()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    return v0
.end method

.method public getMinWorldWidth()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    return v0
.end method

.method public setMaxWorldHeight(F)V
    .locals 0
    .param p1, "maxWorldHeight"    # F

    .prologue
    .line 122
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    .line 123
    return-void
.end method

.method public setMaxWorldWidth(F)V
    .locals 0
    .param p1, "maxWorldWidth"    # F

    .prologue
    .line 114
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    .line 115
    return-void
.end method

.method public setMinWorldHeight(F)V
    .locals 0
    .param p1, "minWorldHeight"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 107
    return-void
.end method

.method public setMinWorldWidth(F)V
    .locals 0
    .param p1, "minWorldWidth"    # F

    .prologue
    .line 98
    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 99
    return-void
.end method

.method public update(IIZ)V
    .locals 12
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "centerCamera"    # Z

    .prologue
    const/4 v11, 0x0

    .line 62
    iget v7, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    .line 63
    .local v7, "worldWidth":F
    iget v6, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    .line 64
    .local v6, "worldHeight":F
    sget-object v8, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    int-to-float v9, p1

    int-to-float v10, p2

    invoke-virtual {v8, v7, v6, v9, v10}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 67
    .local v1, "scaled":Lcom/badlogic/gdx/math/Vector2;
    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 68
    .local v5, "viewportWidth":I
    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 69
    .local v4, "viewportHeight":I
    if-ge v5, p1, :cond_2

    .line 70
    int-to-float v8, v4

    div-float v2, v8, v6

    .line 71
    .local v2, "toViewportSpace":F
    int-to-float v8, v4

    div-float v3, v6, v8

    .line 72
    .local v3, "toWorldSpace":F
    sub-int v8, p1, v5

    int-to-float v8, v8

    mul-float v0, v8, v3

    .line 73
    .local v0, "lengthen":F
    iget v8, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_0

    iget v8, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldWidth:F

    iget v9, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldWidth:F

    sub-float/2addr v8, v9

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 74
    :cond_0
    add-float/2addr v7, v0

    .line 75
    mul-float v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v5, v8

    .line 85
    .end local v0    # "lengthen":F
    .end local v2    # "toViewportSpace":F
    .end local v3    # "toWorldSpace":F
    :cond_1
    :goto_0
    invoke-virtual {p0, v7, v6}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setWorldSize(FF)V

    .line 88
    sub-int v8, p1, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v9, p2, v4

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v8, v9, v5, v4}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->setScreenBounds(IIII)V

    .line 90
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->apply(Z)V

    .line 91
    return-void

    .line 76
    :cond_2
    if-ge v4, p2, :cond_1

    .line 77
    int-to-float v8, v5

    div-float v2, v8, v7

    .line 78
    .restart local v2    # "toViewportSpace":F
    int-to-float v8, v5

    div-float v3, v7, v8

    .line 79
    .restart local v3    # "toWorldSpace":F
    sub-int v8, p2, v4

    int-to-float v8, v8

    mul-float v0, v8, v3

    .line 80
    .restart local v0    # "lengthen":F
    iget v8, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_3

    iget v8, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->maxWorldHeight:F

    iget v9, p0, Lcom/badlogic/gdx/utils/viewport/ExtendViewport;->minWorldHeight:F

    sub-float/2addr v8, v9

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 81
    :cond_3
    add-float/2addr v6, v0

    .line 82
    mul-float v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_0
.end method

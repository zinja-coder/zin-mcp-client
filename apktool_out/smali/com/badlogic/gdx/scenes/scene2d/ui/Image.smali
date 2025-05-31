.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "Image.java"


# instance fields
.field private align:I

.field private drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private imageHeight:F

.field private imageWidth:F

.field private imageX:F

.field private imageY:F

.field private scaling:Lcom/badlogic/gdx/utils/Scaling;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 60
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 3
    .param p1, "patch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 49
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 55
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 3
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "drawableName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 71
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V
    .locals 1
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "scaling"    # Lcom/badlogic/gdx/utils/Scaling;

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V
    .locals 2
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "scaling"    # Lcom/badlogic/gdx/utils/Scaling;
    .param p3, "align"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 82
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 83
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 84
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setSize(FF)V

    .line 86
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 14
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->validate()V

    .line 118
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    .line 119
    .local v11, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v11, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 121
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getX()F

    move-result v12

    .line 122
    .local v12, "x":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getY()F

    move-result v13

    .line 123
    .local v13, "y":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getScaleX()F

    move-result v8

    .line 124
    .local v8, "scaleX":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getScaleY()F

    move-result v9

    .line 126
    .local v9, "scaleY":F
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getRotation()F

    move-result v10

    .line 128
    .local v10, "rotation":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v8, v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v9, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-eqz v0, :cond_2

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    add-float v2, v12, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    add-float v3, v13, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getOriginX()F

    move-result v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    sub-float v4, v1, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getOriginY()F

    move-result v1

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    move-object v1, p1

    invoke-interface/range {v0 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V

    .line 135
    .end local v10    # "rotation":F
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    add-float v2, v12, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    add-float v3, v13, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    mul-float v4, v1, v8

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    mul-float v5, v1, v9

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_0
.end method

.method public getDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    return v0
.end method

.method public getImageX()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    return v0
.end method

.method public getImageY()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 89
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v5, :cond_0

    .line 113
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    .line 92
    .local v2, "regionWidth":F
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    .line 93
    .local v1, "regionHeight":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v4

    .line 94
    .local v4, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getHeight()F

    move-result v0

    .line 96
    .local v0, "height":F
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v5, v2, v1, v4, v0}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 97
    .local v3, "size":Lcom/badlogic/gdx/math/Vector2;
    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    .line 98
    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    .line 100
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    .line 101
    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    .line 107
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 108
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    sub-float v5, v0, v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    goto :goto_0

    .line 102
    :cond_1
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2

    .line 103
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    sub-float v5, v4, v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    goto :goto_1

    .line 105
    :cond_2
    div-float v5, v4, v7

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    goto :goto_1

    .line 109
    :cond_3
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4

    .line 110
    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    goto :goto_0

    .line 112
    :cond_4
    div-float v5, v0, v7

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    goto :goto_0
.end method

.method public setAlign(I)V
    .locals 0
    .param p1, "align"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 161
    return-void
.end method

.method public setDrawable(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "drawableName"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 139
    return-void
.end method

.method public setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_0
    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefWidth()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefHeight()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->invalidateHierarchy()V

    .line 147
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->invalidateHierarchy()V

    goto :goto_1
.end method

.method public setScaling(Lcom/badlogic/gdx/utils/Scaling;)V
    .locals 2
    .param p1, "scaling"    # Lcom/badlogic/gdx/utils/Scaling;

    .prologue
    .line 155
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scaling cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 157
    return-void
.end method

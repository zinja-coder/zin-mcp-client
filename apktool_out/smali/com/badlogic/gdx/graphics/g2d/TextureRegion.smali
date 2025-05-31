.class public Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.super Ljava/lang/Object;
.source "TextureRegion.java"


# instance fields
.field regionHeight:I

.field regionWidth:I

.field texture:Lcom/badlogic/gdx/graphics/Texture;

.field u:F

.field u2:F

.field v:F

.field v2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "texture cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 39
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "u2"    # F
    .param p5, "v2"    # F

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 58
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 1
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 46
    invoke-virtual {p0, v0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 53
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 71
    return-void
.end method

.method public static split(Lcom/badlogic/gdx/graphics/Texture;II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p1, "tileWidth"    # I
    .param p2, "tileHeight"    # I

    .prologue
    .line 284
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 285
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 2
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 211
    .local v0, "temp":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 212
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 214
    .end local v0    # "temp":F
    :cond_0
    if-eqz p2, :cond_1

    .line 215
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 216
    .restart local v0    # "temp":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 217
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 219
    .end local v0    # "temp":F
    :cond_1
    return-void
.end method

.method public getRegionHeight()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    return v0
.end method

.method public getRegionWidth()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    return v0
.end method

.method public getRegionX()I
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getRegionY()I
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getU()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    return v0
.end method

.method public getU2()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    return v0
.end method

.method public getV()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    return v0
.end method

.method public getV2()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    return v0
.end method

.method public isFlipX()Z
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlipY()Z
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scroll(FF)V
    .locals 6
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 234
    cmpl-float v2, p1, v4

    if-eqz v2, :cond_0

    .line 235
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 236
    .local v1, "width":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    add-float/2addr v2, p1

    rem-float/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 237
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 239
    .end local v1    # "width":F
    :cond_0
    cmpl-float v2, p2, v4

    if-eqz v2, :cond_1

    .line 240
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v2, v3

    .line 241
    .local v0, "height":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    add-float/2addr v2, p2

    rem-float/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 242
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 244
    .end local v0    # "height":F
    :cond_1
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 8
    .param p1, "u"    # F
    .param p2, "v"    # F
    .param p3, "u2"    # F
    .param p4, "v2"    # F

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3e800000    # 0.25f

    .line 90
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    .local v3, "texWidth":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    .line 91
    .local v2, "texHeight":I
    sub-float v4, p3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 92
    sub-float v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 95
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    if-ne v4, v7, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    if-ne v4, v7, :cond_0

    .line 96
    int-to-float v4, v3

    div-float v0, v6, v4

    .line 97
    .local v0, "adjustX":F
    add-float/2addr p1, v0

    .line 98
    sub-float/2addr p3, v0

    .line 99
    int-to-float v4, v2

    div-float v1, v6, v4

    .line 100
    .local v1, "adjustY":F
    add-float/2addr p2, v1

    .line 101
    sub-float/2addr p4, v1

    .line 104
    .end local v0    # "adjustX":F
    .end local v1    # "adjustY":F
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 105
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 106
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 107
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 108
    return-void
.end method

.method public setRegion(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v3, v2

    .line 83
    .local v1, "invTexWidth":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v3, v2

    .line 84
    .local v0, "invTexHeight":F
    int-to-float v2, p1

    mul-float/2addr v2, v1

    int-to-float v3, p2

    mul-float/2addr v3, v0

    add-int v4, p1, p3

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-int v5, p2, p4

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 85
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 86
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 87
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/4 v2, 0x0

    .line 75
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 76
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 77
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 4
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 112
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 113
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 114
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 2
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 118
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 119
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 120
    return-void
.end method

.method public setRegionHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->isFlipY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    goto :goto_0
.end method

.method public setRegionWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->isFlipX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    goto :goto_0
.end method

.method public setRegionX(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 171
    int-to-float v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 172
    return-void
.end method

.method public setRegionY(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 179
    int-to-float v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 180
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 128
    return-void
.end method

.method public setU(F)V
    .locals 2
    .param p1, "u"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 137
    return-void
.end method

.method public setU2(F)V
    .locals 2
    .param p1, "u2"    # F

    .prologue
    .line 153
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 154
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 155
    return-void
.end method

.method public setV(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 144
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 145
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 146
    return-void
.end method

.method public setV2(F)V
    .locals 2
    .param p1, "v2"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 164
    return-void
.end method

.method public split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 15
    .param p1, "tileWidth"    # I
    .param p2, "tileHeight"    # I

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v2

    .line 256
    .local v2, "x":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v3

    .line 257
    .local v3, "y":I
    iget v13, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 258
    .local v13, "width":I
    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 260
    .local v8, "height":I
    div-int v10, v8, p2

    .line 261
    .local v10, "rows":I
    div-int v7, v13, p1

    .line 263
    .local v7, "cols":I
    move v11, v2

    .line 264
    .local v11, "startX":I
    filled-new-array {v10, v7}, [I

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 265
    .local v12, "tiles":[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 266
    move v2, v11

    .line 267
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 268
    aget-object v14, v12, v9

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    aput-object v0, v14, v6

    .line 267
    add-int/lit8 v6, v6, 0x1

    add-int v2, v2, p1

    goto :goto_1

    .line 265
    :cond_0
    add-int/lit8 v9, v9, 0x1

    add-int v3, v3, p2

    goto :goto_0

    .line 272
    .end local v6    # "col":I
    :cond_1
    return-object v12
.end method

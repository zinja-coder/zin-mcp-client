.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;
.super Lcom/badlogic/gdx/graphics/g2d/Sprite;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtlasSprite"
.end annotation


# instance fields
.field originalOffsetX:F

.field originalOffsetY:F

.field final region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V
    .locals 7
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 549
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    .line 550
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 551
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    .line 552
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    .line 553
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 554
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    .line 555
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result v1

    .line 556
    .local v1, "width":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionHeight()I

    move-result v0

    .line 557
    .local v0, "height":I
    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v2, :cond_0

    .line 558
    const/4 v2, 0x1

    invoke-super {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotate90(Z)V

    .line 559
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-super {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    .line 562
    :goto_0
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setColor(FFFF)V

    .line 563
    return-void

    .line 561
    :cond_0
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    int-to-float v4, v1

    int-to-float v5, v0

    invoke-super {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>()V

    .line 566
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 567
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    .line 568
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    .line 569
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 570
    return-void
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 8
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .line 616
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v6, :cond_0

    .line 617
    invoke-super {p0, p2, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    .line 621
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginX()F

    move-result v3

    .line 622
    .local v3, "oldOriginX":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginY()F

    move-result v4

    .line 623
    .local v4, "oldOriginY":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 624
    .local v1, "oldOffsetX":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 626
    .local v2, "oldOffsetY":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getWidthRatio()F

    move-result v5

    .line 627
    .local v5, "widthRatio":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getHeightRatio()F

    move-result v0

    .line 629
    .local v0, "heightRatio":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 630
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 631
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v6, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->flip(ZZ)V

    .line 632
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    .line 633
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    .line 634
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    mul-float/2addr v7, v5

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 635
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    mul-float/2addr v7, v0

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 638
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->translate(FF)V

    .line 639
    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    .line 640
    return-void

    .line 619
    .end local v0    # "heightRatio":F
    .end local v1    # "oldOffsetX":F
    .end local v2    # "oldOffsetY":F
    .end local v3    # "oldOriginX":F
    .end local v4    # "oldOriginY":F
    .end local v5    # "widthRatio":F
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    goto :goto_0
.end method

.method public getAtlasRegion()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 695
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedHeight()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getHeightRatio()F
    .locals 2

    .prologue
    .line 703
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedHeight()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getOriginX()F
    .locals 2

    .prologue
    .line 680
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOriginY()F
    .locals 2

    .prologue
    .line 685
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginY()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 690
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedWidth()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getWidthRatio()F
    .locals 2

    .prologue
    .line 699
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedWidth()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 670
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 675
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public rotate90(Z)V
    .locals 9
    .param p1, "clockwise"    # Z

    .prologue
    .line 645
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotate90(Z)V

    .line 647
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginX()F

    move-result v3

    .line 648
    .local v3, "oldOriginX":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getOriginY()F

    move-result v4

    .line 649
    .local v4, "oldOriginY":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 650
    .local v1, "oldOffsetX":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 652
    .local v2, "oldOffsetY":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getWidthRatio()F

    move-result v5

    .line 653
    .local v5, "widthRatio":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getHeightRatio()F

    move-result v0

    .line 655
    .local v0, "heightRatio":F
    if-eqz p1, :cond_0

    .line 656
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iput v2, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 657
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    sub-float/2addr v7, v1

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 664
    :goto_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->translate(FF)V

    .line 665
    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setOrigin(FF)V

    .line 666
    return-void

    .line 659
    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 660
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iput v1, v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    goto :goto_0
.end method

.method public setBounds(FFFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 589
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v4, v4

    div-float v3, p3, v4

    .line 590
    .local v3, "widthRatio":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v4, v4

    div-float v0, p4, v4

    .line 591
    .local v0, "heightRatio":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetX:F

    mul-float/2addr v5, v3

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 592
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->originalOffsetY:F

    mul-float/2addr v5, v0

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 593
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-boolean v4, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    .line 594
    .local v2, "packedWidth":I
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-boolean v4, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    .line 595
    .local v1, "packedHeight":I
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr v4, p1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr v5, p2

    int-to-float v6, v2

    mul-float/2addr v6, v3

    int-to-float v7, v1

    mul-float/2addr v7, v0

    invoke-super {p0, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    .line 596
    return-void

    .line 593
    .end local v1    # "packedHeight":I
    .end local v2    # "packedWidth":I
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    goto :goto_0

    .line 594
    .restart local v2    # "packedWidth":I
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    goto :goto_1
.end method

.method public setOrigin(FF)V
    .locals 2
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .prologue
    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float v1, p2, v1

    invoke-super {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 606
    return-void
.end method

.method public setOriginCenter()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 610
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->width:F

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->height:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 611
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr v1, p2

    invoke-super {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 575
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->setBounds(FFFF)V

    .line 601
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setX(F)V

    .line 580
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 584
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setY(F)V

    .line 585
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;->region:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

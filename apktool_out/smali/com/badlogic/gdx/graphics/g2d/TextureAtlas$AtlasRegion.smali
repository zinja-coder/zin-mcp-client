.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtlasRegion"
.end annotation


# instance fields
.field public index:I

.field public name:Ljava/lang/String;

.field public offsetX:F

.field public offsetY:F

.field public originalHeight:I

.field public originalWidth:I

.field public packedHeight:I

.field public packedWidth:I

.field public pads:[I

.field public rotate:Z

.field public splits:[I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 497
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 498
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 499
    iput p5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 500
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    .line 501
    iput p5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    .line 502
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 505
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 506
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 507
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 508
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 509
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 510
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    .line 511
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    .line 512
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 513
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 514
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    .line 515
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 516
    return-void
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 2
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .line 521
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 522
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 523
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 524
    :cond_1
    return-void
.end method

.method public getRotatedPackedHeight()F
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getRotatedPackedWidth()F
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    return-object v0
.end method

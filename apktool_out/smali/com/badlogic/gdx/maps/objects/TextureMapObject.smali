.class public Lcom/badlogic/gdx/maps/objects/TextureMapObject;
.super Lcom/badlogic/gdx/maps/MapObject;
.source "TextureMapObject.java"


# instance fields
.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    .line 25
    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->x:F

    .line 26
    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->y:F

    .line 27
    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->originX:F

    .line 28
    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->originY:F

    .line 29
    iput v1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->scaleX:F

    .line 30
    iput v1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->scaleY:F

    .line 31
    iput v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->rotation:F

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 124
    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 125
    return-void
.end method


# virtual methods
.method public getOriginX()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->scaleY:F

    return v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->y:F

    return v0
.end method

.method public setOriginX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->originX:F

    .line 62
    return-void
.end method

.method public setOriginY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->originY:F

    .line 72
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 101
    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->rotation:F

    .line 102
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->scaleX:F

    .line 82
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 91
    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->scaleY:F

    .line 92
    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 112
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->x:F

    .line 42
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->y:F

    .line 52
    return-void
.end method

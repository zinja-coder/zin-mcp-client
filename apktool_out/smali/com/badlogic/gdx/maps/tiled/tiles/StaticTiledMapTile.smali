.class public Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;
.super Ljava/lang/Object;
.source "StaticTiledMapTile.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapTile;


# instance fields
.field private blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

.field private id:I

.field private offsetX:F

.field private offsetY:F

.field private properties:Lcom/badlogic/gdx/maps/MapProperties;

.field private textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .line 100
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;)V
    .locals 2
    .param p1, "copy"    # Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .line 107
    iget-object v0, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->putAll(Lcom/badlogic/gdx/maps/MapProperties;)V

    .line 110
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 111
    iget v0, p1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->id:I

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->id:I

    .line 112
    return-void
.end method


# virtual methods
.method public getBlendMode()Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->id:I

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->offsetY:F

    return v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public setBlendMode(Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;)V
    .locals 0
    .param p1, "blendMode"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .line 56
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->id:I

    .line 46
    return-void
.end method

.method public setOffsetX(F)V
    .locals 0
    .param p1, "offsetX"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->offsetX:F

    .line 84
    return-void
.end method

.method public setOffsetY(F)V
    .locals 0
    .param p1, "offsetY"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->offsetY:F

    .line 94
    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 74
    return-void
.end method

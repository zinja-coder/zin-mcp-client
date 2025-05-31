.class public Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "TiledMapImageLayer.java"


# instance fields
.field private region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 13
    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->x:I

    .line 14
    iput p3, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->y:I

    .line 15
    return-void
.end method


# virtual methods
.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->y:I

    return v0
.end method

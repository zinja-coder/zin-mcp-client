.class public Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "BaseTmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        ">;"
    }
.end annotation


# instance fields
.field public convertObjectToTileSpace:Z

.field public generateMipMaps:Z

.field public textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->generateMipMaps:Z

    .line 40
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 42
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 44
    iput-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->convertObjectToTileSpace:Z

    return-void
.end method

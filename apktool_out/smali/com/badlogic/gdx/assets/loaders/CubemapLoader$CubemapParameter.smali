.class public Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "CubemapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/CubemapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CubemapParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/Cubemap;",
        ">;"
    }
.end annotation


# instance fields
.field public cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

.field public cubemapData:Lcom/badlogic/gdx/graphics/CubemapData;

.field public format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 104
    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    .line 106
    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemapData:Lcom/badlogic/gdx/graphics/CubemapData;

    .line 107
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 108
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-void
.end method

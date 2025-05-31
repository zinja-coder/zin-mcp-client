.class public Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "TextureLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/TextureLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field public format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public genMipMaps:Z

.field public magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public texture:Lcom/badlogic/gdx/graphics/Texture;

.field public textureData:Lcom/badlogic/gdx/graphics/TextureData;

.field public wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 100
    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 104
    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 106
    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    .line 107
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 108
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-void
.end method

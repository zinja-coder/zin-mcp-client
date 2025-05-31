.class public Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "ModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/ModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/Model;",
        ">;"
    }
.end annotation


# instance fields
.field public textureParameter:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 132
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;->textureParameter:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;->textureParameter:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;->textureParameter:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v2, v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v2, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;->textureParameter:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;->textureParameter:Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v2, v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v2, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 135
    return-void
.end method

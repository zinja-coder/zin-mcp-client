.class public Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "TextureAtlasLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;",
        ">;"
    }
.end annotation


# instance fields
.field public flip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;->flip:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "flip"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;->flip:Z

    .line 81
    iput-boolean p1, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader$TextureAtlasParameter;->flip:Z

    .line 82
    return-void
.end method

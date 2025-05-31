.class public Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;
.super Ljava/lang/Object;
.source "AtlasTmxMapLoader.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetManagerAtlasResolver"
.end annotation


# instance fields
.field private final assetManager:Lcom/badlogic/gdx/assets/AssetManager;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 0
    .param p1, "assetManager"    # Lcom/badlogic/gdx/assets/AssetManager;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 94
    return-void
.end method


# virtual methods
.method public getAtlas(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object v0
.end method

.class public Lcom/badlogic/gdx/maps/tiled/TiledMap;
.super Lcom/badlogic/gdx/maps/Map;
.source "TiledMap.java"


# instance fields
.field private ownedResources:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<+",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private tilesets:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/Map;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->tilesets:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    .line 40
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->ownedResources:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->ownedResources:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Disposable;

    .line 53
    .local v1, "resource":Lcom/badlogic/gdx/utils/Disposable;
    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_0

    .line 56
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "resource":Lcom/badlogic/gdx/utils/Disposable;
    :cond_0
    return-void
.end method

.method public getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->tilesets:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    return-object v0
.end method

.method public setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<+",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "resources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+Lcom/badlogic/gdx/utils/Disposable;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->ownedResources:Lcom/badlogic/gdx/utils/Array;

    .line 47
    return-void
.end method

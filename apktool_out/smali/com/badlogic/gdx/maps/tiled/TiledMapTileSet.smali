.class public Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
.super Ljava/lang/Object;
.source "TiledMapTileSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMapTile;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private properties:Lcom/badlogic/gdx/maps/MapProperties;

.field private tiles:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap",
            "<",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->tiles:Lcom/badlogic/gdx/utils/IntMap;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method

.method public getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->tiles:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->tiles:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->values()Lcom/badlogic/gdx/utils/IntMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "tile"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->tiles:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public removeTile(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->tiles:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->tiles:Lcom/badlogic/gdx/utils/IntMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    return v0
.end method

.class public Lcom/badlogic/gdx/maps/tiled/TideMapLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "TideMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        "Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;",
        ">;"
    }
.end annotation


# instance fields
.field private root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private xml:Lcom/badlogic/gdx/utils/XmlReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    .line 59
    return-void
.end method

.method private static getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\\/"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 291
    .local v0, "result":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "token":Ljava/lang/String;
    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_0

    .line 299
    .end local v1    # "token":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private loadLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 43
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v40

    const-string v41, "Layer"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 203
    const-string v40, "Id"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 204
    .local v19, "id":Ljava/lang/String;
    const-string v40, "Visible"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 206
    .local v36, "visible":Ljava/lang/String;
    const-string v40, "Dimensions"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v11

    .line 207
    .local v11, "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v40, "LayerSize"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 208
    .local v22, "layerSize":Ljava/lang/String;
    const-string v40, "TileSize"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 210
    .local v31, "tileSize":Ljava/lang/String;
    const-string v40, " x "

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 211
    .local v23, "layerSizeParts":[Ljava/lang/String;
    const/16 v40, 0x0

    aget-object v40, v23, v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 212
    .local v24, "layerSizeX":I
    const/16 v40, 0x1

    aget-object v40, v23, v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 214
    .local v25, "layerSizeY":I
    const-string v40, " x "

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 215
    .local v32, "tileSizeParts":[Ljava/lang/String;
    const/16 v40, 0x0

    aget-object v40, v32, v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 216
    .local v33, "tileSizeX":I
    const/16 v40, 0x1

    aget-object v40, v32, v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 218
    .local v34, "tileSizeY":I
    new-instance v21, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;-><init>(IIII)V

    .line 219
    .local v21, "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setName(Ljava/lang/String;)V

    .line 220
    const-string v40, "True"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setVisible(Z)V

    .line 221
    const-string v40, "TileArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v30

    .line 222
    .local v30, "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v40, "Row"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v29

    .line 223
    .local v29, "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v35

    .line 224
    .local v35, "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    const/4 v10, 0x0

    .line 225
    .local v10, "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    const/4 v12, 0x0

    .line 227
    .local v12, "firstgid":I
    const/16 v27, 0x0

    .local v27, "row":I
    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v28, v0

    .local v28, "rowCount":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 228
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 229
    .local v9, "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    add-int/lit8 v40, v28, -0x1

    sub-int v39, v40, v27

    .line 230
    .local v39, "y":I
    const/16 v37, 0x0

    .line 231
    .local v37, "x":I
    const/4 v6, 0x0

    .local v6, "child":I
    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v7

    .local v7, "childCount":I
    move/from16 v38, v37

    .end local v37    # "x":I
    .local v38, "x":I
    :goto_1
    if-ge v6, v7, :cond_6

    .line 232
    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    .line 233
    .local v8, "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v26

    .line 234
    .local v26, "name":Ljava/lang/String;
    const-string v40, "TileSheet"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 235
    const-string v40, "Ref"

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTileSet(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    move-result-object v10

    .line 236
    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v40

    const-string v41, "firstgid"

    const-class v42, Ljava/lang/Integer;

    invoke-virtual/range {v40 .. v42}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v37, v38

    .line 231
    .end local v38    # "x":I
    .restart local v37    # "x":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v38, v37

    .end local v37    # "x":I
    .restart local v38    # "x":I
    goto :goto_1

    .line 237
    :cond_0
    const-string v40, "Null"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 238
    const-string v40, "Count"

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v40

    add-int v37, v38, v40

    .end local v38    # "x":I
    .restart local v37    # "x":I
    goto :goto_2

    .line 239
    .end local v37    # "x":I
    .restart local v38    # "x":I
    :cond_1
    const-string v40, "Static"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 240
    new-instance v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    .line 241
    .local v5, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    const-string v40, "Index"

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v40

    add-int v40, v40, v12

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 242
    add-int/lit8 v37, v38, 0x1

    .end local v38    # "x":I
    .restart local v37    # "x":I
    move-object/from16 v0, v21

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    goto :goto_2

    .line 243
    .end local v5    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v37    # "x":I
    .restart local v38    # "x":I
    :cond_2
    const-string v40, "Animated"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 245
    const-string v40, "Interval"

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 246
    .local v20, "interval":I
    const-string v40, "Frames"

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v18

    .line 247
    .local v18, "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    new-instance v17, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v17 .. v17}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 248
    .local v17, "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    const/4 v14, 0x0

    .local v14, "frameChild":I
    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v15

    .local v15, "frameChildCount":I
    :goto_3
    if-ge v14, v15, :cond_5

    .line 249
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v13

    .line 250
    .local v13, "frame":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v16

    .line 251
    .local v16, "frameName":Ljava/lang/String;
    const-string v40, "TileSheet"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 252
    const-string v40, "Ref"

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTileSet(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    move-result-object v10

    .line 253
    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v40

    const-string v41, "firstgid"

    const-class v42, Ljava/lang/Integer;

    invoke-virtual/range {v40 .. v42}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 248
    :cond_3
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 254
    :cond_4
    const-string v40, "Static"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 255
    const-string v40, "Index"

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v40

    add-int v40, v40, v12

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v40

    check-cast v40, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 258
    .end local v13    # "frame":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v16    # "frameName":Ljava/lang/String;
    :cond_5
    new-instance v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    .line 259
    .restart local v5    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    new-instance v40, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v41, v0

    const/high16 v42, 0x447a0000    # 1000.0f

    div-float v41, v41, v42

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 260
    add-int/lit8 v37, v38, 0x1

    .end local v38    # "x":I
    .restart local v37    # "x":I
    move-object/from16 v0, v21

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    goto/16 :goto_2

    .line 227
    .end local v5    # "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .end local v8    # "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v14    # "frameChild":I
    .end local v15    # "frameChildCount":I
    .end local v17    # "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .end local v18    # "frames":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v20    # "interval":I
    .end local v26    # "name":Ljava/lang/String;
    .end local v37    # "x":I
    .restart local v38    # "x":I
    :cond_6
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 264
    .end local v6    # "child":I
    .end local v7    # "childCount":I
    .end local v9    # "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v38    # "x":I
    .end local v39    # "y":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 266
    .end local v10    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v11    # "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v12    # "firstgid":I
    .end local v19    # "id":Ljava/lang/String;
    .end local v21    # "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    .end local v22    # "layerSize":Ljava/lang/String;
    .end local v23    # "layerSizeParts":[Ljava/lang/String;
    .end local v24    # "layerSizeX":I
    .end local v25    # "layerSizeY":I
    .end local v27    # "row":I
    .end local v28    # "rowCount":I
    .end local v29    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .end local v30    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v31    # "tileSize":Ljava/lang/String;
    .end local v32    # "tileSizeParts":[Ljava/lang/String;
    .end local v33    # "tileSizeX":I
    .end local v34    # "tileSizeY":I
    .end local v35    # "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .end local v36    # "visible":Ljava/lang/String;
    :cond_8
    return-void

    .restart local v6    # "child":I
    .restart local v7    # "childCount":I
    .restart local v8    # "currentChild":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v9    # "currentRow":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v10    # "currentTileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .restart local v11    # "dimensions":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v12    # "firstgid":I
    .restart local v19    # "id":Ljava/lang/String;
    .restart local v21    # "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    .restart local v22    # "layerSize":Ljava/lang/String;
    .restart local v23    # "layerSizeParts":[Ljava/lang/String;
    .restart local v24    # "layerSizeX":I
    .restart local v25    # "layerSizeY":I
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v27    # "row":I
    .restart local v28    # "rowCount":I
    .restart local v29    # "rows":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .restart local v30    # "tileArray":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v31    # "tileSize":Ljava/lang/String;
    .restart local v32    # "tileSizeParts":[Ljava/lang/String;
    .restart local v33    # "tileSizeX":I
    .restart local v34    # "tileSizeY":I
    .restart local v35    # "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .restart local v36    # "visible":Ljava/lang/String;
    .restart local v38    # "x":I
    .restart local v39    # "y":I
    :cond_9
    move/from16 v37, v38

    .end local v38    # "x":I
    .restart local v37    # "x":I
    goto/16 :goto_2
.end method

.method private loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 8
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .prologue
    .line 108
    new-instance v3, Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMap;-><init>()V

    .line 109
    .local v3, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    const-string v7, "properties"

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    .line 110
    .local v4, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 113
    :cond_0
    const-string v7, "TileSheets"

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v6

    .line 114
    .local v6, "tilesheets":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v7, "TileSheet"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 115
    .local v5, "tilesheet":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-direct {p0, v3, v5, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadTileSheet(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    goto :goto_0

    .line 117
    .end local v5    # "tilesheet":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_1
    const-string v7, "Layers"

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    .line 118
    .local v2, "layers":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v7, "Layer"

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 119
    .local v1, "layer":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-direct {p0, v3, v1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_1

    .line 121
    .end local v1    # "layer":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_2
    return-object v3
.end method

.method private loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 8
    .param p1, "properties"    # Lcom/badlogic/gdx/maps/MapProperties;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    const/4 v7, 0x0

    .line 269
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Properties"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    const-string v5, "Property"

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 271
    .local v2, "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v5, "Key"

    invoke-virtual {v2, v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "key":Ljava/lang/String;
    const-string v5, "Type"

    invoke-virtual {v2, v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Int32"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_0
    const-string v5, "String"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    invoke-virtual {p1, v1, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_1
    const-string v5, "Boolean"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p1, v1, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private loadTileSheet(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 39
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p3, "tideFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .prologue
    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v37, "TileSheet"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    const-string v2, "Id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, "id":Ljava/lang/String;
    const-string v2, "Description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "description":Ljava/lang/String;
    const-string v2, "ImageSource"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 145
    .local v16, "imageSource":Ljava/lang/String;
    const-string v2, "Alignment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    .line 146
    .local v8, "alignment":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v2, "SheetSize"

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 147
    .local v22, "sheetSize":Ljava/lang/String;
    const-string v2, "TileSize"

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 148
    .local v33, "tileSize":Ljava/lang/String;
    const-string v2, "Margin"

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 149
    .local v17, "margin":Ljava/lang/String;
    const-string v2, "Spacing"

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 151
    .local v26, "spacing":Ljava/lang/String;
    const-string v2, " x "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 152
    .local v23, "sheetSizeParts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v23, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 153
    .local v24, "sheetSizeX":I
    const/4 v2, 0x1

    aget-object v2, v23, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 155
    .local v25, "sheetSizeY":I
    const-string v2, " x "

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 156
    .local v34, "tileSizeParts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v34, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "tileSizeX":I
    const/4 v2, 0x1

    aget-object v2, v34, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, "tileSizeY":I
    const-string v2, " x "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 160
    .local v18, "marginParts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 161
    .local v19, "marginX":I
    const/4 v2, 0x1

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 163
    .local v20, "marginY":I
    const-string v2, " x "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 164
    .local v27, "spacingParts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 165
    .local v28, "spacingX":I
    const/4 v2, 0x1

    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 167
    .local v29, "spacingY":I
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v15

    .line 168
    .local v15, "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v15}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 170
    .local v3, "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v36

    .line 171
    .local v36, "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    const/4 v10, 0x1

    .line 172
    .local v10, "firstgid":I
    invoke-virtual/range {v36 .. v36}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    .line 173
    .local v35, "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    invoke-virtual/range {v35 .. v35}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->size()I

    move-result v2

    add-int/2addr v10, v2

    .line 174
    goto :goto_0

    .line 176
    .end local v35    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    :cond_0
    new-instance v35, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct/range {v35 .. v35}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    .line 177
    .restart local v35    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {v35 .. v35}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    const-string v37, "firstgid"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    move v11, v10

    .line 181
    .local v11, "gid":I
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    sub-int v31, v2, v6

    .line 182
    .local v31, "stopWidth":I
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    sub-int v30, v2, v7

    .line 184
    .local v30, "stopHeight":I
    move/from16 v5, v20

    .local v5, "y":I
    :goto_1
    move/from16 v0, v30

    if-gt v5, v0, :cond_2

    .line 185
    move/from16 v4, v19

    .local v4, "x":I
    move v12, v11

    .end local v11    # "gid":I
    .local v12, "gid":I
    :goto_2
    move/from16 v0, v31

    if-gt v4, v0, :cond_1

    .line 186
    new-instance v32, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 187
    .local v32, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    move-object/from16 v0, v32

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    .line 188
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "gid":I
    .restart local v11    # "gid":I
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v12, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 185
    add-int v2, v6, v28

    add-int/2addr v4, v2

    move v12, v11

    .end local v11    # "gid":I
    .restart local v12    # "gid":I
    goto :goto_2

    .line 184
    .end local v32    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :cond_1
    add-int v2, v7, v29

    add-int/2addr v5, v2

    move v11, v12

    .end local v12    # "gid":I
    .restart local v11    # "gid":I
    goto :goto_1

    .line 192
    .end local v4    # "x":I
    :cond_2
    const-string v2, "Properties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v21

    .line 193
    .local v21, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v21, :cond_3

    .line 194
    invoke-virtual/range {v35 .. v35}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 197
    :cond_3
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    .line 199
    .end local v3    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v5    # "y":I
    .end local v6    # "tileSizeX":I
    .end local v7    # "tileSizeY":I
    .end local v8    # "alignment":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "firstgid":I
    .end local v11    # "gid":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v16    # "imageSource":Ljava/lang/String;
    .end local v17    # "margin":Ljava/lang/String;
    .end local v18    # "marginParts":[Ljava/lang/String;
    .end local v19    # "marginX":I
    .end local v20    # "marginY":I
    .end local v21    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v22    # "sheetSize":Ljava/lang/String;
    .end local v23    # "sheetSizeParts":[Ljava/lang/String;
    .end local v24    # "sheetSizeX":I
    .end local v25    # "sheetSizeY":I
    .end local v26    # "spacing":Ljava/lang/String;
    .end local v27    # "spacingParts":[Ljava/lang/String;
    .end local v28    # "spacingX":I
    .end local v29    # "spacingY":I
    .end local v30    # "stopHeight":I
    .end local v31    # "stopWidth":I
    .end local v33    # "tileSize":Ljava/lang/String;
    .end local v34    # "tileSizeParts":[Ljava/lang/String;
    .end local v35    # "tileset":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v36    # "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    :cond_4
    return-void
.end method

.method private loadTileSheets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;
    .locals 7
    .param p1, "root"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tideFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 130
    .local v3, "images":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/files/FileHandle;>;"
    const-string v6, "TileSheets"

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    .line 131
    .local v5, "tilesheets":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v6, "TileSheet"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 132
    .local v4, "tileset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v6, "ImageSource"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    .line 133
    .local v2, "imageSource":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 134
    .local v1, "image":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    .end local v1    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "imageSource":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "tileset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "x2"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 44
    check-cast p3, Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;

    .end local p3    # "x2":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 92
    .local v0, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    iput-object v4, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 93
    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {p0, v4, p2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadTileSheets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/files/FileHandle;

    .line 94
    .local v3, "image":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "image":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t load tilemap \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 96
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 4
    .param p1, "assetManager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "tideFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v2, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-direct {p0, v1, p3, v2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load tilemap \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 64
    .local v6, "tideFile":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v7

    iput-object v7, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 65
    new-instance v5, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 66
    .local v5, "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {p0, v7, v6}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadTileSheets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/files/FileHandle;

    .line 67
    .local v4, "textureFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v8, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "textureFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    .end local v6    # "tideFile":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t load tilemap \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v5    # "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    .restart local v6    # "tideFile":Lcom/badlogic/gdx/files/FileHandle;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 70
    .local v2, "imageResolver":Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;
    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {p0, v7, v6, v2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v3

    .line 71
    .local v3, "map":Lcom/badlogic/gdx/maps/tiled/TiledMap;
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    return-object v3
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "x3"    # Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    .prologue
    .line 44
    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;

    .end local p4    # "x3":Lcom/badlogic/gdx/assets/AssetLoaderParameters;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    return-object v0
.end method

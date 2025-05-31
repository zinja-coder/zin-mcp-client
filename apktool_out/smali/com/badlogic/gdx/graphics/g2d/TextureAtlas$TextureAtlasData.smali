.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;,
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    }
.end annotation


# instance fields
.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation
.end field

.field final regions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 24
    .param p1, "packFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imagesDir"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 100
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 103
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v21, 0x40

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 105
    .local v17, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .local v2, "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    move-object/from16 v16, v2

    .line 107
    .end local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .local v16, "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :goto_0
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 108
    .local v15, "line":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 189
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    sget-object v21, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->indexComparator:Ljava/util/Comparator;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 193
    return-void

    .line 109
    :cond_0
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 110
    const/4 v2, 0x0

    .end local v16    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :goto_1
    move-object/from16 v16, v2

    .line 185
    .end local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v16    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    goto :goto_0

    .line 111
    :cond_1
    if-nez v16, :cond_6

    .line 112
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 114
    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    const/4 v4, 0x0

    .local v4, "width":F
    const/4 v5, 0x0

    .line 115
    .local v5, "height":F
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    move-result v6

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v6, v0, :cond_2

    .line 116
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v4, v6

    .line 117
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v5, v6

    .line 118
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 120
    :cond_2
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v6, v6, v21

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v7

    .line 122
    .local v7, "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 123
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v6, v6, v21

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v8

    .line 124
    .local v8, "min":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v6, v6, v21

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v9

    .line 126
    .local v9, "max":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v12

    .line 127
    .local v12, "direction":Ljava/lang/String;
    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 128
    .local v10, "repeatX":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 129
    .local v11, "repeatY":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    const-string v6, "x"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 130
    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 138
    :cond_3
    :goto_2
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->isMipMap()Z

    move-result v6

    invoke-direct/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;-><init>(Lcom/badlogic/gdx/files/FileHandle;FFZLcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v16    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v13

    .line 187
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "width":F
    .end local v5    # "height":F
    .end local v7    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v8    # "min":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local v9    # "max":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local v10    # "repeatX":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .end local v11    # "repeatY":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .end local v12    # "direction":Ljava/lang/String;
    .end local v15    # "line":Ljava/lang/String;
    .local v13, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error reading pack file: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0, v13}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .end local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v13    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 131
    .restart local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4    # "width":F
    .restart local v5    # "height":F
    .restart local v7    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .restart local v8    # "min":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .restart local v9    # "max":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .restart local v10    # "repeatX":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .restart local v11    # "repeatY":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .restart local v12    # "direction":Ljava/lang/String;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :cond_4
    :try_start_4
    const-string v6, "y"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    goto :goto_2

    .line 133
    :cond_5
    const-string v6, "xy"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    sget-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 135
    sget-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    goto :goto_2

    .line 141
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "width":F
    .end local v5    # "height":F
    .end local v7    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v8    # "min":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local v9    # "max":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local v10    # "repeatX":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .end local v11    # "repeatY":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .end local v12    # "direction":Ljava/lang/String;
    :cond_6
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 143
    .local v19, "rotate":Z
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 144
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 145
    .local v14, "left":I
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 147
    .local v20, "top":I
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 148
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 149
    .local v4, "width":I
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 151
    .local v5, "height":I
    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-direct/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;-><init>()V

    .line 152
    .local v18, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 153
    move-object/from16 v0, v18

    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->left:I

    .line 154
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->top:I

    .line 155
    move-object/from16 v0, v18

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->width:I

    .line 156
    move-object/from16 v0, v18

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->height:I

    .line 157
    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->name:Ljava/lang/String;

    .line 158
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    .line 160
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    move-result v6

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v6, v0, :cond_7

    .line 161
    const/4 v6, 0x4

    new-array v6, v6, [I

    const/16 v21, 0x0

    sget-object v22, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aput v22, v6, v21

    const/16 v21, 0x1

    sget-object v22, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aput v22, v6, v21

    const/16 v21, 0x2

    sget-object v22, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aput v22, v6, v21

    const/16 v21, 0x3

    sget-object v22, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aput v22, v6, v21

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->splits:[I

    .line 164
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    move-result v6

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v6, v0, :cond_7

    .line 165
    const/4 v6, 0x4

    new-array v6, v6, [I

    const/16 v21, 0x0

    sget-object v22, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aput v22, v6, v21

    const/16 v21, 0x1

    sget-object v22, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aput v22, v6, v21

    const/16 v21, 0x2

    sget-object v22, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aput v22, v6, v21

    const/16 v21, 0x3

    sget-object v22, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    aput v22, v6, v21

    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->pads:[I

    .line 168
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 172
    :cond_7
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    .line 173
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    .line 175
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 176
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x0

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, v18

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetX:F

    .line 177
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v21, 0x1

    aget-object v6, v6, v21

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, v18

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetY:F

    .line 179
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    .line 181
    if-eqz p3, :cond_8

    const/4 v6, 0x1

    move-object/from16 v0, v18

    iput-boolean v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->flip:Z

    .line 183
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v2, v16

    .end local v16    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    goto/16 :goto_1

    .line 186
    .end local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v14    # "left":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    .end local v19    # "rotate":Z
    .end local v20    # "top":I
    .restart local v16    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :catch_1
    move-exception v13

    move-object/from16 v2, v16

    .end local v16    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    goto/16 :goto_3
.end method


# virtual methods
.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRegions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

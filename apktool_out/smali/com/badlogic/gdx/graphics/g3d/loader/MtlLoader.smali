.class Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;
.super Ljava/lang/Object;
.source "ObjLoader.java"


# instance fields
.field public materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    .line 455
    .local v1, "m":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    .end local v1    # "m":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    :goto_0
    return-object v1

    .line 456
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    .line 457
    .local v2, "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iput-object p1, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    .line 458
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 459
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v1, v2

    .line 460
    goto :goto_0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 23
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 356
    const-string v4, "default"

    .line 357
    .local v4, "curMatName":Ljava/lang/String;
    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 358
    .local v5, "difcolor":Lcom/badlogic/gdx/graphics/Color;
    sget-object v16, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 359
    .local v16, "speccolor":Lcom/badlogic/gdx/graphics/Color;
    const/high16 v12, 0x3f800000    # 1.0f

    .line 360
    .local v12, "opacity":F
    const/4 v15, 0x0

    .line 361
    .local v15, "shininess":F
    const/16 v19, 0x0

    .line 363
    .local v19, "texFilename":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .local v14, "reader":Ljava/io/BufferedReader;
    move-object/from16 v17, v16

    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .local v17, "speccolor":Lcom/badlogic/gdx/graphics/Color;
    move-object v6, v5

    .line 367
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .local v6, "difcolor":Lcom/badlogic/gdx/graphics/Color;
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_f

    .line 369
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 371
    :cond_3
    const-string v21, "\\s+"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 373
    .local v20, "tokens":[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_2

    .line 375
    const/16 v21, 0x0

    aget-object v21, v20, v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 378
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 379
    .local v9, "key":Ljava/lang/String;
    const-string v21, "newmtl"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 380
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    .line 381
    .local v11, "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iput-object v4, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    .line 382
    new-instance v21, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 383
    new-instance v21, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    .line 384
    iput v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    .line 385
    iput v15, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    .line 386
    if-eqz v19, :cond_5

    .line 387
    new-instance v18, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    .line 388
    .local v18, "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    .line 389
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    .line 390
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    new-instance v21, Lcom/badlogic/gdx/utils/Array;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 391
    :cond_4
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 393
    .end local v18    # "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 395
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 396
    const/16 v21, 0x1

    aget-object v4, v20, v21

    .line 397
    const/16 v21, 0x2e

    const/16 v22, 0x5f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 401
    :goto_2
    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    :try_start_1
    sget-object v16, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    const/high16 v12, 0x3f800000    # 1.0f

    .line 404
    const/4 v15, 0x0

    .end local v11    # "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    :goto_3
    move-object/from16 v17, v16

    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    move-object v6, v5

    .line 427
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    goto/16 :goto_1

    .line 399
    .restart local v11    # "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    :cond_6
    :try_start_2
    const-string v4, "default"

    goto :goto_2

    .line 405
    .end local v11    # "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    :cond_7
    const-string v21, "kd"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    const-string v21, "ks"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 407
    :cond_8
    const/16 v21, 0x1

    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 408
    .local v13, "r":F
    const/16 v21, 0x2

    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 409
    .local v8, "g":F
    const/16 v21, 0x3

    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 410
    .local v3, "b":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 411
    .local v2, "a":F
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    const/16 v21, 0x4

    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 413
    :cond_9
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "kd"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 414
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/Color;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 415
    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    :try_start_3
    invoke-virtual {v5, v13, v8, v3, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v16, v17

    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_3

    .line 417
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    :cond_a
    :try_start_4
    new-instance v16, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Color;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 418
    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v8, v3, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v5, v6

    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_3

    .line 420
    .end local v2    # "a":F
    .end local v3    # "b":F
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .end local v8    # "g":F
    .end local v13    # "r":F
    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    :cond_b
    :try_start_6
    const-string v21, "tr"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    const-string v21, "d"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 421
    :cond_c
    const/16 v21, 0x1

    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v16, v17

    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    move-object v5, v6

    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    goto/16 :goto_3

    .line 422
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    :cond_d
    const-string v21, "ns"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 423
    const/16 v21, 0x1

    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move-object/from16 v16, v17

    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    move-object v5, v6

    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    goto/16 :goto_3

    .line 424
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    :cond_e
    const-string v21, "map_kd"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v20, v22

    invoke-virtual/range {v21 .. v22}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v17

    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    move-object v5, v6

    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    goto/16 :goto_3

    .line 429
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .end local v20    # "tokens":[Ljava/lang/String;
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    :cond_f
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 435
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    .line 436
    .restart local v11    # "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iput-object v4, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    .line 437
    new-instance v21, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 438
    new-instance v21, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    .line 439
    iput v12, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    .line 440
    iput v15, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    .line 441
    if-eqz v19, :cond_11

    .line 442
    new-instance v18, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    .line 443
    .restart local v18    # "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    .line 444
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    .line 445
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v21, v0

    if-nez v21, :cond_10

    new-instance v21, Lcom/badlogic/gdx/utils/Array;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 446
    :cond_10
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 448
    .end local v18    # "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object/from16 v16, v17

    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    move-object v5, v6

    .line 450
    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    goto/16 :goto_0

    .line 430
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "mat":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    :catch_0
    move-exception v7

    move-object/from16 v16, v17

    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    move-object v5, v6

    .line 431
    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .local v7, "e":Ljava/io/IOException;
    :goto_4
    goto/16 :goto_0

    .line 430
    .end local v7    # "e":Ljava/io/IOException;
    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v20    # "tokens":[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object/from16 v16, v17

    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_4

    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v2    # "a":F
    .restart local v3    # "b":F
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v8    # "g":F
    .restart local v13    # "r":F
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_4

    .end local v2    # "a":F
    .end local v3    # "b":F
    .end local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .end local v8    # "g":F
    .end local v13    # "r":F
    .end local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    :cond_12
    move-object/from16 v16, v17

    .end local v17    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "speccolor":Lcom/badlogic/gdx/graphics/Color;
    move-object v5, v6

    .end local v6    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v5    # "difcolor":Lcom/badlogic/gdx/graphics/Color;
    goto/16 :goto_3
.end method

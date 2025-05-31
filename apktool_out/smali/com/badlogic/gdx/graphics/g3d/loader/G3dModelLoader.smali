.class public Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;
.super Lcom/badlogic/gdx/assets/loaders/ModelLoader;
.source "G3dModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader",
        "<",
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final VERSION_HI:S = 0x0s

.field public static final VERSION_LO:S = 0x1s


# instance fields
.field protected final reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

.field private final tempQ:Lcom/badlogic/gdx/math/Quaternion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/BaseJsonReader;)V
    .locals 1
    .param p1, "reader"    # Lcom/badlogic/gdx/utils/BaseJsonReader;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "reader"    # Lcom/badlogic/gdx/utils/BaseJsonReader;
    .param p2, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 288
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->tempQ:Lcom/badlogic/gdx/math/Quaternion;

    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

    .line 57
    return-void
.end method

.method private parseAnimations(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 28
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "json"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 371
    const-string v23, "animations"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    .line 372
    .local v4, "animations":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v4, :cond_1

    .line 467
    :cond_0
    return-void

    .line 374
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    iget v0, v4, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 376
    iget-object v2, v4, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "anim":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_0

    .line 377
    const-string v23, "bones"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    .line 378
    .local v12, "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v12, :cond_3

    .line 376
    :cond_2
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 379
    :cond_3
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;-><init>()V

    .line 380
    .local v3, "animation":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 381
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    iget v0, v12, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 382
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->id:Ljava/lang/String;

    .line 383
    iget-object v10, v12, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v10, "node":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v10, :cond_2

    .line 384
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;-><init>()V

    .line 385
    .local v11, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 386
    const-string v23, "boneId"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->nodeId:Ljava/lang/String;

    .line 389
    const-string v23, "keyframes"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    .line 390
    .local v6, "keyframes":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 391
    iget-object v5, v6, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v5, "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v5, :cond_10

    .line 392
    const-string v23, "keytime"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v23

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v7, v23, v24

    .line 393
    .local v7, "keytime":F
    const-string v23, "translation"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v21

    .line 394
    .local v21, "translation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 395
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 396
    new-instance v23, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v23 .. v23}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 397
    :cond_4
    new-instance v20, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct/range {v20 .. v20}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 398
    .local v20, "tkf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    move-object/from16 v0, v20

    iput v7, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 399
    new-instance v23, Lcom/badlogic/gdx/math/Vector3;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    invoke-direct/range {v23 .. v26}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 400
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 402
    .end local v20    # "tkf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    :cond_5
    const-string v23, "rotation"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    .line 403
    .local v14, "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v14, :cond_7

    iget v0, v14, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 404
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    .line 405
    new-instance v23, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v23 .. v23}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 406
    :cond_6
    new-instance v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 407
    .local v13, "rkf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iput v7, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 408
    new-instance v23, Lcom/badlogic/gdx/math/Quaternion;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v27

    invoke-direct/range {v23 .. v27}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 409
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 411
    .end local v13    # "rkf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    :cond_7
    const-string v23, "scale"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v16

    .line 412
    .local v16, "scale":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 413
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 414
    new-instance v23, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v23 .. v23}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 415
    :cond_8
    new-instance v19, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 416
    .local v19, "skf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    move-object/from16 v0, v19

    iput v7, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 417
    new-instance v23, Lcom/badlogic/gdx/math/Vector3;

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    invoke-direct/range {v23 .. v26}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 418
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 391
    .end local v19    # "skf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    :cond_9
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_2

    .line 422
    .end local v5    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v7    # "keytime":F
    .end local v14    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v16    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v21    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_a
    const-string v23, "translation"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v22

    .line 423
    .local v22, "translationKF":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 424
    new-instance v23, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v23 .. v23}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 425
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 426
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_3
    if-eqz v5, :cond_c

    .line 427
    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 428
    .local v9, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 429
    const-string v23, "keytime"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v23

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 430
    const-string v23, "value"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v21

    .line 431
    .restart local v21    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v21, :cond_b

    move-object/from16 v0, v21

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_b

    .line 432
    new-instance v23, Lcom/badlogic/gdx/math/Vector3;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    invoke-direct/range {v23 .. v26}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 426
    :cond_b
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_3

    .line 437
    .end local v5    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    .end local v21    # "translation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_c
    const-string v23, "rotation"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v15

    .line 438
    .local v15, "rotationKF":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 439
    new-instance v23, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v23 .. v23}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 440
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    iget v0, v15, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 441
    iget-object v5, v15, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_4
    if-eqz v5, :cond_e

    .line 442
    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 443
    .local v8, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 444
    const-string v23, "keytime"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v23

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 445
    const-string v23, "value"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    .line 446
    .restart local v14    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v14, :cond_d

    iget v0, v14, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_d

    .line 447
    new-instance v23, Lcom/badlogic/gdx/math/Quaternion;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v27

    invoke-direct/range {v23 .. v27}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 441
    :cond_d
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4

    .line 451
    .end local v5    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v8    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    .end local v14    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_e
    const-string v23, "scaling"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v18

    .line 452
    .local v18, "scalingKF":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v18, :cond_10

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 453
    new-instance v23, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v23 .. v23}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 454
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 455
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v5    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_5
    if-eqz v5, :cond_10

    .line 456
    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;-><init>()V

    .line 457
    .restart local v9    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 458
    const-string v23, "keytime"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v23

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    .line 459
    const-string v23, "value"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v17

    .line 460
    .local v17, "scaling":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v17, :cond_f

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_f

    .line 461
    new-instance v23, Lcom/badlogic/gdx/math/Vector3;

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    invoke-direct/range {v23 .. v26}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    .line 455
    :cond_f
    iget-object v5, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_5

    .line 383
    .end local v5    # "keyframe":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v9    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    .end local v15    # "rotationKF":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v17    # "scaling":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v18    # "scalingKF":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v22    # "translationKF":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_10
    iget-object v10, v10, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_1
.end method

.method private parseAttributes(Lcom/badlogic/gdx/utils/JsonValue;)[Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 11
    .param p1, "attributes"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 144
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 145
    .local v7, "vertexAttributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    const/4 v4, 0x0

    .line 146
    .local v4, "unit":I
    const/4 v2, 0x0

    .line 147
    .local v2, "blendWeightCount":I
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v6, "value":Lcom/badlogic/gdx/utils/JsonValue;
    move v3, v2

    .end local v2    # "blendWeightCount":I
    .local v3, "blendWeightCount":I
    move v5, v4

    .end local v4    # "unit":I
    .local v5, "unit":I
    :goto_0
    if-eqz v6, :cond_8

    .line 148
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "attribute":Ljava/lang/String;
    move-object v0, v1

    .line 150
    .local v0, "attr":Ljava/lang/String;
    const-string v8, "POSITION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 151
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Position()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v3

    .end local v3    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    move v4, v5

    .line 147
    .end local v5    # "unit":I
    .restart local v4    # "unit":I
    :goto_1
    iget-object v6, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move v3, v2

    .end local v2    # "blendWeightCount":I
    .restart local v3    # "blendWeightCount":I
    move v5, v4

    .end local v4    # "unit":I
    .restart local v5    # "unit":I
    goto :goto_0

    .line 152
    :cond_0
    const-string v8, "NORMAL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Normal()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v3

    .end local v3    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    move v4, v5

    .end local v5    # "unit":I
    .restart local v4    # "unit":I
    goto :goto_1

    .line 154
    .end local v2    # "blendWeightCount":I
    .end local v4    # "unit":I
    .restart local v3    # "blendWeightCount":I
    .restart local v5    # "unit":I
    :cond_1
    const-string v8, "COLOR"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->ColorUnpacked()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v3

    .end local v3    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    move v4, v5

    .end local v5    # "unit":I
    .restart local v4    # "unit":I
    goto :goto_1

    .line 156
    .end local v2    # "blendWeightCount":I
    .end local v4    # "unit":I
    .restart local v3    # "blendWeightCount":I
    .restart local v5    # "unit":I
    :cond_2
    const-string v8, "COLORPACKED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 157
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->ColorPacked()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v3

    .end local v3    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    move v4, v5

    .end local v5    # "unit":I
    .restart local v4    # "unit":I
    goto :goto_1

    .line 158
    .end local v2    # "blendWeightCount":I
    .end local v4    # "unit":I
    .restart local v3    # "blendWeightCount":I
    .restart local v5    # "unit":I
    :cond_3
    const-string v8, "TANGENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 159
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Tangent()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v3

    .end local v3    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    move v4, v5

    .end local v5    # "unit":I
    .restart local v4    # "unit":I
    goto :goto_1

    .line 160
    .end local v2    # "blendWeightCount":I
    .end local v4    # "unit":I
    .restart local v3    # "blendWeightCount":I
    .restart local v5    # "unit":I
    :cond_4
    const-string v8, "BINORMAL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 161
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Binormal()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v3

    .end local v3    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    move v4, v5

    .end local v5    # "unit":I
    .restart local v4    # "unit":I
    goto :goto_1

    .line 162
    .end local v2    # "blendWeightCount":I
    .end local v4    # "unit":I
    .restart local v3    # "blendWeightCount":I
    .restart local v5    # "unit":I
    :cond_5
    const-string v8, "TEXCOORD"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 163
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "unit":I
    .restart local v4    # "unit":I
    invoke-static {v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;->TexCoords(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v2, v3

    .end local v3    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    goto :goto_1

    .line 164
    .end local v2    # "blendWeightCount":I
    .end local v4    # "unit":I
    .restart local v3    # "blendWeightCount":I
    .restart local v5    # "unit":I
    :cond_6
    const-string v8, "BLENDWEIGHT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 165
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "blendWeightCount":I
    .restart local v2    # "blendWeightCount":I
    invoke-static {v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;->BoneWeight(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v4, v5

    .end local v5    # "unit":I
    .restart local v4    # "unit":I
    goto/16 :goto_1

    .line 167
    .end local v2    # "blendWeightCount":I
    .end local v4    # "unit":I
    .restart local v3    # "blendWeightCount":I
    .restart local v5    # "unit":I
    :cond_7
    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown vertex attribute \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', should be one of position, normal, uv, tangent or binormal"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 171
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "attribute":Ljava/lang/String;
    :cond_8
    const-class v8, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    return-object v8
.end method

.method private parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;
    .locals 5
    .param p1, "colorArray"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 261
    iget v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 262
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0

    .line 264
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Expected Color values <> than three."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseMaterials(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;)V
    .locals 22
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "json"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "materialDir"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v19, "materials"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v12

    .line 176
    .local v12, "materials":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v12, :cond_1

    .line 235
    :cond_0
    return-void

    .line 179
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v19, v0

    iget v0, v12, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 180
    iget-object v11, v12, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v11, "material":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v11, :cond_0

    .line 181
    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    .line 183
    .local v9, "jsonMaterial":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    const-string v19, "id"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "id":Ljava/lang/String;
    if-nez v8, :cond_2

    new-instance v19, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v20, "Material needs an id."

    invoke-direct/range {v19 .. v20}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 186
    :cond_2
    iput-object v8, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    .line 189
    const-string v19, "diffuse"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .line 190
    .local v5, "diffuse":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 191
    :cond_3
    const-string v19, "ambient"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    .line 192
    .local v4, "ambient":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    .line 193
    :cond_4
    const-string v19, "emissive"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v6

    .line 194
    .local v6, "emissive":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    .line 195
    :cond_5
    const-string v19, "specular"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    .line 196
    .local v14, "specular":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    .line 197
    :cond_6
    const-string v19, "reflection"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v13

    .line 198
    .local v13, "reflection":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseColor(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    .line 200
    :cond_7
    const-string v19, "shininess"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v19

    move/from16 v0, v19

    iput v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    .line 202
    const-string v19, "opacity"

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v19

    move/from16 v0, v19

    iput v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    .line 205
    const-string v19, "textures"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v18

    .line 206
    .local v18, "textures":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v18, :cond_e

    .line 207
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v15, "texture":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v15, :cond_e

    .line 208
    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct {v10}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    .line 210
    .local v10, "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    const-string v19, "id"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 211
    .local v16, "textureId":Ljava/lang/String;
    if-nez v16, :cond_8

    new-instance v19, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v20, "Texture has no id."

    invoke-direct/range {v19 .. v20}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 212
    :cond_8
    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->id:Ljava/lang/String;

    .line 214
    const-string v19, "filename"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "fileName":Ljava/lang/String;
    if-nez v7, :cond_9

    new-instance v19, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v20, "Texture needs filename."

    invoke-direct/range {v19 .. v20}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 216
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, "/"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    :cond_a
    const-string v19, ""

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    .line 219
    const-string v19, "uvTranslation"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    .line 220
    const-string v19, "uvScaling"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v19

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    .line 222
    const-string v19, "type"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 223
    .local v17, "textureType":Ljava/lang/String;
    if-nez v17, :cond_c

    new-instance v19, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v20, "Texture needs type."

    invoke-direct/range {v19 .. v20}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 216
    .end local v17    # "textureType":Ljava/lang/String;
    :cond_b
    const-string v19, "/"

    goto :goto_2

    .line 225
    .restart local v17    # "textureType":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseTextureUsage(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    .line 227
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v19, v0

    if-nez v19, :cond_d

    new-instance v19, Lcom/badlogic/gdx/utils/Array;

    invoke-direct/range {v19 .. v19}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    .line 228
    :cond_d
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 207
    iget-object v15, v15, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_1

    .line 232
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v10    # "jsonTexture":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .end local v15    # "texture":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v16    # "textureId":Ljava/lang/String;
    .end local v17    # "textureType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 180
    iget-object v11, v11, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_0
.end method

.method private parseMeshes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 17
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "json"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 82
    const-string v14, "meshes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v9

    .line 83
    .local v9, "meshes":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v9, :cond_5

    .line 85
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    iget v15, v9, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 86
    iget-object v6, v9, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v6, "mesh":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v6, :cond_5

    .line 87
    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;-><init>()V

    .line 89
    .local v4, "jsonMesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    const-string v14, "id"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "id":Ljava/lang/String;
    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->id:Ljava/lang/String;

    .line 92
    const-string v14, "attributes"

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 93
    .local v1, "attributes":Lcom/badlogic/gdx/utils/JsonValue;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseAttributes(Lcom/badlogic/gdx/utils/JsonValue;)[Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v14

    iput-object v14, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 94
    const-string v14, "vertices"

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/JsonValue;->asFloatArray()[F

    move-result-object v14

    iput-object v14, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    .line 96
    const-string v14, "parts"

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v8

    .line 97
    .local v8, "meshParts":Lcom/badlogic/gdx/utils/JsonValue;
    new-instance v12, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v12}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 98
    .local v12, "parts":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;>;"
    iget-object v7, v8, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v7, "meshPart":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v7, :cond_4

    .line 99
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;-><init>()V

    .line 100
    .local v5, "jsonPart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    const-string v14, "id"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "partId":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 102
    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Not id given for mesh part"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 104
    :cond_0
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .line 105
    .local v10, "other":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    iget-object v14, v10, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 106
    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Mesh part with id \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' already in defined"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 109
    .end local v10    # "other":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    :cond_2
    iput-object v11, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    .line 111
    const-string v14, "type"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "type":Ljava/lang/String;
    if-nez v13, :cond_3

    .line 113
    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No primitive type given for mesh part \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 115
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseType(Ljava/lang/String;)I

    move-result v14

    iput v14, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    .line 117
    const-string v14, "indices"

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/JsonValue;->asShortArray()[S

    move-result-object v14

    iput-object v14, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    .line 118
    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 98
    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_1

    .line 120
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "jsonPart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .end local v11    # "partId":Ljava/lang/String;
    .end local v13    # "type":Ljava/lang/String;
    :cond_4
    const-class v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    iput-object v14, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .line 121
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 86
    iget-object v6, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto/16 :goto_0

    .line 124
    .end local v1    # "attributes":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsonMesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    .end local v6    # "mesh":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v7    # "meshPart":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v8    # "meshParts":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v12    # "parts":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;>;"
    :cond_5
    return-void
.end method

.method private parseNodes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "json"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    const-string v2, "nodes"

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 278
    .local v1, "nodes":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v1, :cond_0

    .line 279
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 280
    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "node":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_0

    .line 281
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 280
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 285
    .end local v0    # "node":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_0
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    return-object v2
.end method

.method private parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    .locals 29
    .param p1, "json"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 291
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;-><init>()V

    .line 293
    .local v11, "jsonNode":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    const-string v24, "id"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "id":Ljava/lang/String;
    if-nez v9, :cond_0

    new-instance v24, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v25, "Node id missing."

    invoke-direct/range {v24 .. v25}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 295
    :cond_0
    iput-object v9, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    .line 297
    const-string v24, "translation"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v22

    .line 298
    .local v22, "translation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    new-instance v24, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v25, "Node translation incomplete"

    invoke-direct/range {v24 .. v25}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 299
    :cond_1
    if-nez v22, :cond_2

    const/16 v24, 0x0

    :goto_0
    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    .line 302
    const-string v24, "rotation"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v19

    .line 303
    .local v19, "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    new-instance v24, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v25, "Node rotation incomplete"

    invoke-direct/range {v24 .. v25}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 299
    .end local v19    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_2
    new-instance v24, Lcom/badlogic/gdx/math/Vector3;

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    const/16 v27, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v27

    invoke-direct/range {v24 .. v27}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    goto :goto_0

    .line 304
    .restart local v19    # "rotation":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_3
    if-nez v19, :cond_4

    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 307
    const-string v24, "scale"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v20

    .line 308
    .local v20, "scale":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v20, :cond_5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    new-instance v24, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v25, "Node scale incomplete"

    invoke-direct/range {v24 .. v25}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 304
    .end local v20    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_4
    new-instance v24, Lcom/badlogic/gdx/math/Quaternion;

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    const/16 v27, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v27

    const/16 v28, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v28

    invoke-direct/range {v24 .. v28}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    goto :goto_1

    .line 309
    .restart local v20    # "scale":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    if-nez v20, :cond_8

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 311
    const-string v24, "mesh"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 312
    .local v15, "meshId":Ljava/lang/String;
    if-eqz v15, :cond_6

    iput-object v15, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->meshId:Ljava/lang/String;

    .line 314
    :cond_6
    const-string v24, "parts"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    .line 315
    .local v14, "materials":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v14, :cond_f

    .line 316
    iget v0, v14, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    .line 317
    const/4 v8, 0x0

    .line 318
    .local v8, "i":I
    iget-object v12, v14, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v12, "material":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_3
    if-eqz v12, :cond_f

    .line 319
    new-instance v18, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    invoke-direct/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;-><init>()V

    .line 321
    .local v18, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    const-string v24, "meshpartid"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 322
    .local v16, "meshPartId":Ljava/lang/String;
    const-string v24, "materialid"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, "materialId":Ljava/lang/String;
    if-eqz v16, :cond_7

    if-nez v13, :cond_9

    .line 324
    :cond_7
    new-instance v24, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Node "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " part is missing meshPartId or materialId"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 309
    .end local v8    # "i":I
    .end local v12    # "material":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v13    # "materialId":Ljava/lang/String;
    .end local v14    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "meshId":Ljava/lang/String;
    .end local v16    # "meshPartId":Ljava/lang/String;
    .end local v18    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    :cond_8
    new-instance v24, Lcom/badlogic/gdx/math/Vector3;

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    const/16 v27, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v27

    invoke-direct/range {v24 .. v27}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    goto/16 :goto_2

    .line 326
    .restart local v8    # "i":I
    .restart local v12    # "material":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v13    # "materialId":Ljava/lang/String;
    .restart local v14    # "materials":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v15    # "meshId":Ljava/lang/String;
    .restart local v16    # "meshPartId":Ljava/lang/String;
    .restart local v18    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    :cond_9
    move-object/from16 v0, v18

    iput-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    .line 327
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    .line 329
    const-string v24, "bones"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    .line 330
    .local v5, "bones":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v5, :cond_e

    .line 331
    new-instance v24, Lcom/badlogic/gdx/utils/ArrayMap;

    const/16 v25, 0x1

    iget v0, v5, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v26, v0

    const-class v27, Ljava/lang/String;

    const-class v28, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct/range {v24 .. v28}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 332
    const/4 v10, 0x0

    .line 333
    .local v10, "j":I
    iget-object v4, v5, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v4, "bone":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_4
    if-eqz v4, :cond_e

    .line 334
    const-string v24, "node"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 335
    .local v17, "nodeId":Ljava/lang/String;
    if-nez v17, :cond_a

    new-instance v24, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v25, "Bone node ID missing"

    invoke-direct/range {v24 .. v25}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 337
    :cond_a
    new-instance v21, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct/range {v21 .. v21}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 339
    .local v21, "transform":Lcom/badlogic/gdx/math/Matrix4;
    const-string v24, "translation"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v23

    .line 340
    .local v23, "val":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_b

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 342
    :cond_b
    const-string v24, "rotation"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v23

    .line 343
    if-eqz v23, :cond_c

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_c

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->tempQ:Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    const/16 v27, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v27

    const/16 v28, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v28

    invoke-virtual/range {v24 .. v28}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 346
    :cond_c
    const-string v24, "scale"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v23

    .line 347
    if-eqz v23, :cond_d

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v25

    const/16 v26, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 349
    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 333
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 353
    .end local v4    # "bone":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v10    # "j":I
    .end local v17    # "nodeId":Ljava/lang/String;
    .end local v21    # "transform":Lcom/badlogic/gdx/math/Matrix4;
    .end local v23    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_e
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    move-object/from16 v24, v0

    aput-object v18, v24, v8

    .line 318
    iget-object v12, v12, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 357
    .end local v5    # "bones":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v8    # "i":I
    .end local v12    # "material":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v13    # "materialId":Ljava/lang/String;
    .end local v16    # "meshPartId":Ljava/lang/String;
    .end local v18    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    :cond_f
    const-string v24, "children"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    .line 358
    .local v7, "children":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v7, :cond_10

    .line 359
    iget v0, v7, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .line 361
    const/4 v8, 0x0

    .line 362
    .restart local v8    # "i":I
    iget-object v6, v7, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v6, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_5
    if-eqz v6, :cond_10

    .line 363
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodesRecursively(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    move-result-object v25

    aput-object v25, v24, v8

    .line 362
    iget-object v6, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 367
    .end local v6    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v8    # "i":I
    :cond_10
    return-object v11
.end method

.method private parseTextureUsage(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "AMBIENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x4

    .line 257
    :goto_0
    return v0

    .line 240
    :cond_0
    const-string v0, "BUMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const/16 v0, 0x8

    goto :goto_0

    .line 242
    :cond_1
    const-string v0, "DIFFUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    const/4 v0, 0x2

    goto :goto_0

    .line 244
    :cond_2
    const-string v0, "EMISSIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    const/4 v0, 0x3

    goto :goto_0

    .line 246
    :cond_3
    const-string v0, "NONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :cond_4
    const-string v0, "NORMAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    const/4 v0, 0x7

    goto :goto_0

    .line 250
    :cond_5
    const-string v0, "REFLECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    const/16 v0, 0xa

    goto :goto_0

    .line 252
    :cond_6
    const-string v0, "SHININESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    const/4 v0, 0x6

    goto :goto_0

    .line 254
    :cond_7
    const-string v0, "SPECULAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    const/4 v0, 0x5

    goto :goto_0

    .line 256
    :cond_8
    const-string v0, "TRANSPARENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto :goto_0

    .line 257
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "TRIANGLES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x4

    .line 136
    :goto_0
    return v0

    .line 129
    :cond_0
    const-string v0, "LINES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const-string v0, "POINTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "TRIANGLE_STRIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const/4 v0, 0x5

    goto :goto_0

    .line 135
    :cond_3
    const-string v0, "LINE_STRIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    const/4 v0, 0x3

    goto :goto_0

    .line 138
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown primitive type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', should be one of triangle, trianglestrip, line, linestrip, lineloop or point"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readVector2(Lcom/badlogic/gdx/utils/JsonValue;FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "vectorArray"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 271
    :goto_0
    return-object v0

    .line 270
    :cond_0
    iget v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 271
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Expected Vector2 values <> than two."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 1
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "parameters"    # Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object v0

    return-object v0
.end method

.method public parseModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 7
    .param p1, "handle"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 65
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->reader:Lcom/badlogic/gdx/utils/BaseJsonReader;

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/utils/BaseJsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 66
    .local v0, "json":Lcom/badlogic/gdx/utils/JsonValue;
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;-><init>()V

    .line 67
    .local v1, "model":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    const-string v3, "version"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    .line 68
    .local v2, "version":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getShort(I)S

    move-result v4

    aput-short v4, v3, v6

    .line 69
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getShort(I)S

    move-result v4

    aput-short v4, v3, v5

    .line 70
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    aget-short v3, v3, v6

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->version:[S

    aget-short v3, v3, v5

    if-eq v3, v5, :cond_1

    .line 71
    :cond_0
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Model version not supported"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_1
    const-string v3, "id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->id:Ljava/lang/String;

    .line 74
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseMeshes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 75
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseMaterials(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseNodes(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)Lcom/badlogic/gdx/utils/Array;

    .line 77
    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;->parseAnimations(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 78
    return-object v1
.end method

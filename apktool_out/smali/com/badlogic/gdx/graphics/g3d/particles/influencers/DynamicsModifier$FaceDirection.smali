.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.source "DynamicsModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceDirection"
.end annotation


# instance fields
.field accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;)V
    .locals 0
    .param p1, "rotation"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;)V

    .line 31
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 35
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 36
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;)V

    return-object v0
.end method

.method public update()V
    .locals 19

    .prologue
    .line 40
    const/16 v18, 0x0

    .local v18, "i":I
    const/4 v13, 0x0

    .local v13, "accelOffset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v2, v3

    add-int v17, v18, v2

    .line 41
    .local v17, "c":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 44
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v13, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v13, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v13, 0x2

    aget v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v16

    .line 47
    .local v16, "axisZ":Lcom/badlogic/gdx/math/Vector3;
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    .line 48
    .local v15, "axisY":Lcom/badlogic/gdx/math/Vector3;
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    .line 49
    .local v14, "axisX":Lcom/badlogic/gdx/math/Vector3;
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    const/4 v3, 0x0

    iget v4, v14, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, v16

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, v15, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, v16

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v11, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, v16

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v18, 0x0

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/math/Quaternion;->x:F

    aput v4, v2, v3

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v18, 0x1

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/math/Quaternion;->y:F

    aput v4, v2, v3

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v18, 0x2

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/math/Quaternion;->z:F

    aput v4, v2, v3

    .line 55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v18, 0x3

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/math/Quaternion;->w:F

    aput v4, v2, v3

    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int v18, v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v13, v2

    goto/16 :goto_0

    .line 57
    .end local v14    # "axisX":Lcom/badlogic/gdx/math/Vector3;
    .end local v15    # "axisY":Lcom/badlogic/gdx/math/Vector3;
    .end local v16    # "axisZ":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    return-void
.end method

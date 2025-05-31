.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;
.source "DynamicsModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolarAcceleration"
.end annotation


# instance fields
.field directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;)V
    .locals 0
    .param p1, "rotation"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;)V

    .line 348
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->allocateChannels()V

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 354
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;)V

    return-object v0
.end method

.method public update()V
    .locals 18

    .prologue
    .line 358
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x2

    .local v6, "l":I
    const/4 v9, 0x0

    .local v9, "s":I
    const/4 v1, 0x0

    .line 359
    .local v1, "a":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v15, v15, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v14, v15

    add-int v2, v5, v14

    .line 360
    .local v2, "c":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v7, v14, v6

    .line 365
    .local v7, "lifePercent":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v9, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v9, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->strengthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v16

    mul-float v15, v15, v16

    add-float v12, v14, v15

    .line 367
    .local v12, "strength":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v1, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v1, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v16

    mul-float v15, v15, v16

    add-float v8, v14, v15

    .line 369
    .local v8, "phi":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v1, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v1, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v16

    mul-float v15, v15, v16

    add-float v13, v14, v15

    .line 372
    .local v13, "theta":F
    invoke-static {v13}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v4

    .local v4, "cosTheta":F
    invoke-static {v13}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v11

    .line 373
    .local v11, "sinTheta":F
    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    .local v3, "cosPhi":F
    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    .line 374
    .local v10, "sinPhi":F
    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    mul-float v15, v4, v10

    mul-float v16, v11, v10

    move/from16 v0, v16

    invoke-virtual {v14, v15, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v5, 0x0

    aget v16, v14, v15

    sget-object v17, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v5, 0x1

    aget v16, v14, v15

    sget-object v17, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v5, 0x2

    aget v16, v14, v15

    sget-object v17, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v17, v0

    add-float v16, v16, v17

    aput v16, v14, v15

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v9, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v5, v14

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v6, v14

    goto/16 :goto_0

    .line 379
    .end local v3    # "cosPhi":F
    .end local v4    # "cosTheta":F
    .end local v7    # "lifePercent":F
    .end local v8    # "phi":F
    .end local v10    # "sinPhi":F
    .end local v11    # "sinTheta":F
    .end local v12    # "strength":F
    .end local v13    # "theta":F
    :cond_0
    return-void
.end method

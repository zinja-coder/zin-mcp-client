.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;
.source "DynamicsModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TangentialAcceleration"
.end annotation


# instance fields
.field directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;)V
    .locals 0
    .param p1, "rotation"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;)V

    .line 394
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->allocateChannels()V

    .line 399
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 401
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;)V

    return-object v0
.end method

.method public update()V
    .locals 22

    .prologue
    .line 405
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x2

    .local v8, "l":I
    const/4 v12, 0x0

    .local v12, "s":I
    const/4 v3, 0x0

    .local v3, "a":I
    const/4 v11, 0x0

    .line 406
    .local v11, "positionOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    add-int v4, v7, v17

    .line 407
    .local v4, "c":I
    :goto_0
    if-ge v7, v4, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    aget v9, v17, v8

    .line 412
    .local v9, "lifePercent":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v12, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v12, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->strengthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v19

    mul-float v18, v18, v19

    add-float v15, v17, v18

    .line 414
    .local v15, "strength":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v3, 0x2

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v3, 0x3

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v19

    mul-float v18, v18, v19

    add-float v10, v17, v18

    .line 416
    .local v10, "phi":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v3, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v3, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v19

    mul-float v18, v18, v19

    add-float v16, v17, v18

    .line 419
    .local v16, "theta":F
    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v6

    .local v6, "cosTheta":F
    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v14

    .line 420
    .local v14, "sinTheta":F
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v5

    .local v5, "cosPhi":F
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    .line 421
    .local v13, "sinPhi":F
    sget-object v17, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    mul-float v18, v6, v13

    mul-float v19, v14, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v5, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x2

    aget v20, v20, v21

    invoke-virtual/range {v17 .. v20}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x0

    aget v19, v17, v18

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x1

    aget v19, v17, v18

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v20, v0

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, 0x2

    aget v19, v17, v18

    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v20, v0

    add-float v19, v19, v20

    aput v19, v17, v18

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v17, v0

    add-int v12, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->directionalVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v17, v0

    add-int v7, v7, v17

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v17, v0

    add-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v17, v0

    add-int v8, v8, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v17, v0

    add-int v11, v11, v17

    goto/16 :goto_0

    .line 430
    .end local v5    # "cosPhi":F
    .end local v6    # "cosTheta":F
    .end local v9    # "lifePercent":F
    .end local v10    # "phi":F
    .end local v13    # "sinPhi":F
    .end local v14    # "sinTheta":F
    .end local v15    # "strength":F
    .end local v16    # "theta":F
    :cond_0
    return-void
.end method

.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;
.source "DynamicsModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CentripetalAcceleration"
.end annotation


# instance fields
.field accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;)V
    .locals 0
    .param p1, "rotation"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;)V

    .line 298
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->allocateChannels()V

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 305
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;)V

    return-object v0
.end method

.method public update()V
    .locals 17

    .prologue
    .line 309
    const/4 v2, 0x0

    .local v2, "cx":F
    const/4 v3, 0x0

    .local v3, "cy":F
    const/4 v4, 0x0

    .line 310
    .local v4, "cz":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->isGlobal:Z

    if-nez v12, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v11, v12, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 312
    .local v11, "val":[F
    const/16 v12, 0xc

    aget v2, v11, v12

    .line 313
    const/16 v12, 0xd

    aget v3, v11, v12

    .line 314
    const/16 v12, 0xe

    aget v4, v11, v12

    .line 317
    .end local v11    # "val":[F
    :cond_0
    const/4 v7, 0x2

    .local v7, "lifeOffset":I
    const/4 v10, 0x0

    .local v10, "strengthOffset":I
    const/4 v8, 0x0

    .local v8, "positionOffset":I
    const/4 v5, 0x0

    .line 318
    .local v5, "forceOffset":I
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v1, "c":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v10, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v10, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->strengthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v15, v15, v7

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v9, v12, v13

    .line 326
    .local v9, "strength":F
    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v8, 0x0

    aget v13, v13, v14

    sub-float/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v14, v14, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v8, 0x1

    aget v14, v14, v15

    sub-float/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v15, v15, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v8, 0x2

    aget v15, v15, v16

    sub-float/2addr v15, v4

    invoke-virtual {v12, v13, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v5, 0x0

    aget v14, v12, v13

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 331
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v5, 0x1

    aget v14, v12, v13

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v5, 0x2

    aget v14, v12, v13

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 318
    add-int/lit8 v6, v6, 0x1

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v8, v12

    .line 320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v10, v12

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v5, v12

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v7, v12

    goto/16 :goto_0

    .line 334
    .end local v9    # "strength":F
    :cond_1
    return-void
.end method

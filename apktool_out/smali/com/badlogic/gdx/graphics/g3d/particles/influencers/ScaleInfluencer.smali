.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;
.source "ScaleInfluencer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;-><init>()V

    .line 12
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannelDescriptor:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;)V
    .locals 0
    .param p1, "scaleInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V

    .line 41
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 8
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x0

    .line 17
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v3, p1, v5

    .local v3, "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v0, p1, v5

    .local v0, "a":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v5, p2

    add-int v1, v3, v5

    .line 19
    .local v1, "c":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 20
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v4, v5, v6

    .line 21
    .local v4, "start":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v2, v5, v6

    .line 22
    .local v2, "diff":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x0

    aput v4, v5, v6

    .line 23
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x1

    aput v2, v5, v6

    .line 24
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    aput v6, v5, v3

    .line 19
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v5

    goto :goto_0

    .line 28
    .end local v0    # "a":I
    .end local v1    # "c":I
    .end local v2    # "diff":F
    .end local v3    # "i":I
    .end local v4    # "start":F
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v3, p1, v5

    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v0, p1, v5

    .restart local v0    # "a":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v5, p2

    add-int v1, v3, v5

    .line 29
    .restart local v1    # "c":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 30
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v4, v5, v6

    .line 31
    .restart local v4    # "start":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v6

    sub-float v2, v5, v4

    .line 32
    .restart local v2    # "diff":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x0

    aput v4, v5, v6

    .line 33
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x1

    aput v2, v5, v6

    .line 34
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    aput v6, v5, v3

    .line 29
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v5

    goto :goto_1

    .line 37
    .end local v2    # "diff":F
    .end local v4    # "start":F
    :cond_1
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ScaleInfluencer;)V

    return-object v0
.end method

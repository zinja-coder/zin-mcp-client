.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;
.source "DynamicsModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrownianAcceleration"
.end annotation


# instance fields
.field accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;)V
    .locals 0
    .param p1, "rotation"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;)V

    .line 444
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->allocateChannels()V

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 450
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;)V

    return-object v0
.end method

.method public update()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    .line 454
    const/4 v3, 0x2

    .local v3, "lifeOffset":I
    const/4 v5, 0x0

    .local v5, "strengthOffset":I
    const/4 v1, 0x0

    .line 455
    .local v1, "forceOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .local v0, "c":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 460
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v5, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->strengthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 462
    .local v4, "strength":F
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v10, v11}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v7

    invoke-static {v10, v11}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v8

    invoke-static {v10, v11}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 463
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x0

    aget v8, v6, v7

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 464
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x1

    aget v8, v6, v7

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 465
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x2

    aget v8, v6, v7

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 455
    add-int/lit8 v2, v2, 0x1

    .line 456
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v5, v6

    .line 457
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->accelerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v6

    .line 458
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v6

    goto :goto_0

    .line 467
    .end local v4    # "strength":F
    :cond_0
    return-void
.end method

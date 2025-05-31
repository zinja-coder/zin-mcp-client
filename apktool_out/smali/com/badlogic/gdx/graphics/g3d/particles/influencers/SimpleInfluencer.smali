.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "SimpleInfluencer.java"


# instance fields
.field interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field valueChannelDescriptor:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 20
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 21
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setHigh(F)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V
    .locals 0
    .param p1, "billboardScaleinfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->set(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V

    .line 27
    return-void
.end method

.method private set(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;)V
    .locals 2
    .param p1, "scaleInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 31
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannelDescriptor:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannelDescriptor:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 32
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 8
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x0

    .line 44
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v5

    if-nez v5, :cond_0

    .line 45
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v3, p1, v5

    .local v3, "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v0, p1, v5

    .local v0, "a":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v5, p2

    add-int v1, v3, v5

    .line 46
    .local v1, "c":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 47
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v4

    .line 48
    .local v4, "start":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v5

    sub-float v2, v5, v4

    .line 49
    .local v2, "diff":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x0

    aput v4, v5, v6

    .line 50
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x1

    aput v2, v5, v6

    .line 51
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    aput v6, v5, v3

    .line 46
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v5

    goto :goto_0

    .line 55
    .end local v0    # "a":I
    .end local v1    # "c":I
    .end local v2    # "diff":F
    .end local v3    # "i":I
    .end local v4    # "start":F
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v3, p1, v5

    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v0, p1, v5

    .restart local v0    # "a":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v5, p2

    add-int v1, v3, v5

    .line 56
    .restart local v1    # "c":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 57
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v4

    .line 58
    .restart local v4    # "start":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v2

    .line 59
    .restart local v2    # "diff":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x0

    aput v4, v5, v6

    .line 60
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x1

    aput v2, v5, v6

    .line 61
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    aput v6, v5, v3

    .line 56
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v5

    goto :goto_1

    .line 64
    .end local v2    # "diff":F
    .end local v4    # "start":F
    :cond_1
    return-void
.end method

.method public allocateChannels()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannelDescriptor:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 37
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newId()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 40
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 85
    const-string v0, "value"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 86
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    .line 68
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v0, 0x0

    .local v0, "a":I
    const/4 v3, 0x2

    .line 69
    .local v3, "l":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v4, v5

    add-int v1, v2, v4

    .line 70
    .local v1, "c":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 73
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v0, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 71
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->valueChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->interpolationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 80
    const-string v0, "value"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/SimpleInfluencer;->value:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

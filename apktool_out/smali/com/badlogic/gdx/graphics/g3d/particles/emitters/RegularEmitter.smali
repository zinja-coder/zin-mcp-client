.class public Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;
.super Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
.source "RegularEmitter.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    }
.end annotation


# instance fields
.field private continuous:Z

.field protected delay:F

.field protected delayTimer:F

.field public delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field protected duration:F

.field protected durationTimer:F

.field public durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field protected emission:I

.field protected emissionDelta:I

.field protected emissionDiff:I

.field private emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

.field public emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field protected life:I

.field private lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field protected lifeDiff:I

.field protected lifeOffset:I

.field protected lifeOffsetDiff:I

.field public lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;-><init>()V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->setActive(Z)V

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setActive(Z)V

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setActive(Z)V

    .line 50
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    .line 51
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V
    .locals 0
    .param p1, "regularEmitter"    # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V

    .line 57
    return-void
.end method

.method private addParticles(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 171
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->maxParticleCount:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 172
    if-gtz p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->activateParticles(II)V

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    goto :goto_0
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 10
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 96
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int v2, v6, v7

    .line 97
    .local v2, "currentTotaLife":I
    move v1, v2

    .line 98
    .local v1, "currentLife":I
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 99
    .local v5, "offsetTime":I
    if-lez v5, :cond_1

    .line 100
    if-lt v5, v1, :cond_0

    .line 101
    add-int/lit8 v5, v1, -0x1

    .line 102
    :cond_0
    sub-int/2addr v1, v5

    .line 104
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v1

    int-to-float v8, v2

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 106
    .local v4, "lifePercent":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v3, p1, v6

    .local v3, "i":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v6, p2

    add-int v0, v3, v6

    .local v0, "c":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 107
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v3, 0x0

    int-to-float v8, v1

    aput v8, v6, v7

    .line 108
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v2

    aput v8, v6, v7

    .line 109
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v3, 0x2

    aput v4, v6, v7

    .line 106
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v6

    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method

.method public allocateChannels()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 62
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V

    return-object v0
.end method

.method public getDelay()Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    return-object v0
.end method

.method public getDuration()Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    return-object v0
.end method

.method public getEmission()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getEmissionMode()Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    return-object v0
.end method

.method public getLife()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getLifeOffset()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getPercentComplete()F
    .locals 3

    .prologue
    .line 223
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->init()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    .line 93
    return-void
.end method

.method public isComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 218
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isContinuous()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 267
    const-string v0, "continous"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    .line 268
    const-string v0, "emission"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 269
    const-string v0, "delay"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 270
    const-string v0, "duration"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 271
    const-string v0, "life"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 272
    const-string v0, "lifeOffset"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 273
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;)V
    .locals 2
    .param p1, "emitter"    # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 234
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    .line 235
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    .line 236
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 237
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    .line 238
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    .line 239
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    .line 240
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    .line 241
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    .line 242
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    .line 243
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    .line 244
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    .line 245
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    .line 246
    return-void
.end method

.method public setContinuous(Z)V
    .locals 0
    .param p1, "continuous"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    .line 203
    return-void
.end method

.method public setEmissionMode(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;)V
    .locals 0
    .param p1, "emissionMode"    # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    .line 215
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->active:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    .line 67
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    .line 68
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    .line 71
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->life:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeDiff:I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->active:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetDiff:I

    .line 87
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 66
    goto :goto_0

    .line 83
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public update()V
    .locals 14

    .prologue
    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v13, 0x0

    .line 114
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    mul-float/2addr v7, v11

    float-to-int v1, v7

    .line 116
    .local v1, "deltaMillis":I
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delay:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 117
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayTimer:F

    .line 152
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 153
    .local v0, "activeParticles":I
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v5, v7, :cond_7

    .line 154
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v6, 0x0

    aget v9, v7, v8

    int-to-float v10, v1

    sub-float/2addr v9, v10

    aput v9, v7, v8

    cmpg-float v7, v9, v13

    if-gtz v7, :cond_6

    .line 155
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->removeElement(I)V

    goto :goto_1

    .line 119
    .end local v0    # "activeParticles":I
    .end local v5    # "i":I
    .end local v6    # "k":I
    :cond_1
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Disabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    if-eq v7, v8, :cond_3

    const/4 v3, 0x1

    .line 121
    .local v3, "emit":Z
    :goto_2
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 122
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    .line 123
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationTimer:F

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->duration:F

    div-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    .line 132
    :goto_3
    if-eqz v3, :cond_0

    .line 134
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 135
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emission:I

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDiff:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->percent:F

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v2, v7, v8

    .line 136
    .local v2, "emissionTime":F
    cmpl-float v7, v2, v13

    if-lez v7, :cond_2

    .line 137
    div-float v2, v11, v2

    .line 138
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v7, v7

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_2

    .line 139
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v7, v7

    div-float/2addr v7, v2

    float-to-int v4, v7

    .line 140
    .local v4, "emitCount":I
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->maxParticleCount:I

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 141
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 142
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    int-to-float v7, v7

    rem-float/2addr v7, v2

    float-to-int v7, v7

    iput v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionDelta:I

    .line 143
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->addParticles(I)V

    .line 146
    .end local v4    # "emitCount":I
    :cond_2
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->minParticleCount:I

    if-ge v7, v8, :cond_0

    .line 147
    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->minParticleCount:I

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->addParticles(I)V

    goto/16 :goto_0

    .line 119
    .end local v2    # "emissionTime":F
    .end local v3    # "emit":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 126
    .restart local v3    # "emit":Z
    :cond_4
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    if-eqz v7, :cond_5

    if-eqz v3, :cond_5

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionMode:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;->Enabled:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter$EmissionMode;

    if-ne v7, v8, :cond_5

    .line 127
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    goto :goto_3

    .line 129
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 159
    .end local v3    # "emit":Z
    .restart local v0    # "activeParticles":I
    .restart local v5    # "i":I
    .restart local v6    # "k":I
    :cond_6
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v6, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v11, v6, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v11, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v12, v6, 0x1

    aget v11, v11, v12

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    aput v9, v7, v8

    .line 161
    add-int/lit8 v5, v5, 0x1

    .line 162
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v6, v7

    goto/16 :goto_1

    .line 165
    :cond_7
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v7, v0, :cond_8

    .line 166
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    sub-int v9, v0, v9

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->killParticles(II)V

    .line 168
    :cond_8
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 256
    const-string v0, "continous"

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->continuous:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    const-string v0, "emission"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->emissionValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    const-string v0, "delay"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->delayValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    const-string v0, "duration"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->durationValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    const-string v0, "life"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v0, "lifeOffset"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/RegularEmitter;->lifeOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    return-void
.end method

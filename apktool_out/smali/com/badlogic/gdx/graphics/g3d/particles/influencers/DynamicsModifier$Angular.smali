.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;
.source "DynamicsModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Angular"
.end annotation


# instance fields
.field protected angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field public thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>()V

    .line 122
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 123
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;)V
    .locals 2
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;)V

    .line 128
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 129
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 132
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->activateParticles(II)V

    .line 145
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v2, p1, v4

    .local v2, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v4, p2

    add-int v0, v2, v4

    .line 146
    .local v0, "c":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 150
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v3

    .line 151
    .local v3, "start":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v1

    .line 152
    .local v1, "diff":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    sub-float/2addr v1, v3

    .line 154
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v2, 0x0

    aput v3, v4, v5

    .line 155
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v2, 0x1

    aput v1, v4, v5

    .line 158
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v3

    .line 159
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v1

    .line 160
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v4

    if-nez v4, :cond_1

    .line 161
    sub-float/2addr v1, v3

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v2, 0x2

    aput v3, v4, v5

    .line 163
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v2, 0x3

    aput v1, v4, v5

    .line 147
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 165
    .end local v1    # "diff":F
    .end local v3    # "start":F
    :cond_2
    return-void
.end method

.method public allocateChannels()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->allocateChannels()V

    .line 137
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation4:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newId()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation4:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->angularChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 139
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 177
    const-string v0, "thetaValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 178
    const-string v0, "phiValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 179
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 170
    const-string v0, "thetaValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->thetaValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v0, "phiValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;->phiValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

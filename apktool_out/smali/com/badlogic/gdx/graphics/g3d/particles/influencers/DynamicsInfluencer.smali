.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "DynamicsInfluencer.java"


# instance fields
.field private accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field private angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field has2dAngularVelocity:Z

.field has3dAngularVelocity:Z

.field hasAcceleration:Z

.field private positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field private previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field private rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public velocities:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;)V
    .locals 2
    .param p1, "velocityInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;

    .prologue
    .line 34
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;)V

    .line 35
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;)V
    .locals 8
    .param p1, "velocities"    # [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 27
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    const/4 v5, 0x1

    array-length v6, p1

    const-class v7, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-direct {v4, v5, v6, v7}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    .line 28
    move-object v0, p1

    .local v0, "arr$":[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 29
    .local v3, "value":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v3    # "value":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
    :cond_0
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 9
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 83
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->hasAcceleration:Z

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v1, p1, v3

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, p2

    add-int v0, v1, v3

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 87
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x0

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v1, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 88
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 89
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    .line 86
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 99
    .end local v0    # "c":I
    .end local v1    # "i":I
    :cond_0
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has2dAngularVelocity:Z

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v1, p1, v3

    .restart local v1    # "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, p2

    add-int v0, v1, v3

    .restart local v0    # "c":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 102
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x0

    aput v8, v3, v4

    .line 103
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x1

    aput v7, v3, v4

    .line 101
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 106
    .end local v0    # "c":I
    .end local v1    # "i":I
    :cond_1
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has3dAngularVelocity:Z

    if-eqz v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v1, p1, v3

    .restart local v1    # "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, p2

    add-int v0, v1, v3

    .restart local v0    # "c":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 109
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x0

    aput v7, v3, v4

    .line 110
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x1

    aput v7, v3, v4

    .line 111
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x2

    aput v7, v3, v4

    .line 112
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x3

    aput v8, v3, v4

    .line 108
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v3

    goto :goto_2

    .line 116
    .end local v0    # "c":I
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_3

    .line 117
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->activateParticles(II)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 119
    :cond_3
    return-void
.end method

.method public allocateChannels()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->allocateChannels()V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 46
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->hasAcceleration:Z

    .line 47
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->hasAcceleration:Z

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->PreviousPosition:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->AngularVelocity2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 54
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has2dAngularVelocity:Z

    .line 55
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has2dAngularVelocity:Z

    if-eqz v1, :cond_5

    .line 56
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 57
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has3dAngularVelocity:Z

    .line 65
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v1, v3

    .line 46
    goto :goto_1

    :cond_4
    move v1, v3

    .line 54
    goto :goto_2

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->AngularVelocity3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 61
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v1, :cond_6

    :goto_4
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has3dAngularVelocity:Z

    .line 62
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has3dAngularVelocity:Z

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    goto :goto_3

    :cond_6
    move v2, v3

    .line 61
    goto :goto_4
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;)V

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->init()V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    const-string v0, "velocities"

    const-class v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-virtual {p1, v0, v2, v3, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 211
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 2
    .param p1, "particleController"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 70
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public update()V
    .locals 31

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->hasAcceleration:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Ljava/util/Arrays;->fill([FIIF)V

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has2dAngularVelocity:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has3dAngularVelocity:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    const/16 v29, 0x0

    invoke-static/range {v26 .. v29}, Ljava/util/Arrays;->fill([FIIF)V

    .line 129
    :cond_2
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    aget-object v26, v26, v10

    invoke-virtual/range {v26 .. v26}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->update()V

    .line 129
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 134
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->hasAcceleration:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 148
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v13, 0x0

    .local v13, "offset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_4

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x0

    aget v23, v26, v27

    .line 150
    .local v23, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x1

    aget v24, v26, v27

    .line 151
    .local v24, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x2

    aget v25, v26, v27

    .line 152
    .local v25, "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x0

    const/high16 v28, 0x40000000    # 2.0f

    mul-float v28, v28, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v13, 0x0

    aget v29, v29, v30

    sub-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v13, 0x0

    aget v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTimeSqr:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aput v28, v26, v27

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x1

    const/high16 v28, 0x40000000    # 2.0f

    mul-float v28, v28, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v13, 0x1

    aget v29, v29, v30

    sub-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v13, 0x1

    aget v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTimeSqr:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aput v28, v26, v27

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x2

    const/high16 v28, 0x40000000    # 2.0f

    mul-float v28, v28, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v13, 0x2

    aget v29, v29, v30

    sub-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->accellerationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v13, 0x2

    aget v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTimeSqr:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    add-float v28, v28, v29

    aput v28, v26, v27

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x0

    aput v23, v26, v27

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x1

    aput v24, v26, v27

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->previousPositionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x2

    aput v25, v26, v27

    .line 148
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v26, v0

    add-int v13, v13, v26

    goto/16 :goto_1

    .line 164
    .end local v9    # "i":I
    .end local v13    # "offset":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    .end local v25    # "z":F
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has2dAngularVelocity:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 165
    const/4 v9, 0x0

    .restart local v9    # "i":I
    const/4 v13, 0x0

    .restart local v13    # "offset":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    aget v26, v26, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    move/from16 v27, v0

    mul-float v18, v26, v27

    .line 167
    .local v18, "rotation":F
    const/16 v26, 0x0

    cmpl-float v26, v18, v26

    if-eqz v26, :cond_5

    .line 168
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v6

    .local v6, "cosBeta":F
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v19

    .line 169
    .local v19, "sinBeta":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x0

    aget v7, v26, v27

    .line 170
    .local v7, "currentCosine":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x1

    aget v8, v26, v27

    .line 171
    .local v8, "currentSine":F
    mul-float v26, v7, v6

    mul-float v27, v8, v19

    sub-float v11, v26, v27

    .line 172
    .local v11, "newCosine":F
    mul-float v26, v8, v6

    mul-float v27, v7, v19

    add-float v12, v26, v27

    .line 173
    .local v12, "newSine":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x0

    aput v11, v26, v27

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x1

    aput v12, v26, v27

    .line 165
    .end local v6    # "cosBeta":F
    .end local v7    # "currentCosine":F
    .end local v8    # "currentSine":F
    .end local v11    # "newCosine":F
    .end local v12    # "newSine":F
    .end local v19    # "sinBeta":F
    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v26, v0

    add-int v13, v13, v26

    goto/16 :goto_2

    .line 178
    .end local v9    # "i":I
    .end local v13    # "offset":I
    .end local v18    # "rotation":F
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->has3dAngularVelocity:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 179
    const/4 v9, 0x0

    .restart local v9    # "i":I
    const/4 v13, 0x0

    .restart local v13    # "offset":I
    const/4 v5, 0x0

    .local v5, "angularOffset":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v5, 0x0

    aget v20, v26, v27

    .line 183
    .local v20, "wx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v5, 0x1

    aget v21, v26, v27

    .line 184
    .local v21, "wy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v5, 0x2

    aget v22, v26, v27

    .line 185
    .local v22, "wz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x0

    aget v15, v26, v27

    .line 186
    .local v15, "qx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x1

    aget v16, v26, v27

    .line 187
    .local v16, "qy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x2

    aget v17, v26, v27

    .line 188
    .local v17, "qz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x3

    aget v14, v26, v27

    .line 189
    .local v14, "qw":F
    sget-object v26, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2, v14}, Lcom/badlogic/gdx/math/Quaternion;->mul(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v26

    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/badlogic/gdx/math/Quaternion;->mul(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2, v14}, Lcom/badlogic/gdx/math/Quaternion;->add(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x0

    sget-object v28, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    move/from16 v28, v0

    aput v28, v26, v27

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x1

    sget-object v28, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    move/from16 v28, v0

    aput v28, v26, v27

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x2

    sget-object v28, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    move/from16 v28, v0

    aput v28, v26, v27

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x3

    sget-object v28, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    move/from16 v28, v0

    aput v28, v26, v27

    .line 179
    add-int/lit8 v9, v9, 0x1

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v26, v0

    add-int v13, v13, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->angularVelocityChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    move/from16 v26, v0

    add-int v5, v5, v26

    goto/16 :goto_3

    .line 196
    .end local v5    # "angularOffset":I
    .end local v9    # "i":I
    .end local v13    # "offset":I
    .end local v14    # "qw":F
    .end local v15    # "qx":F
    .end local v16    # "qy":F
    .end local v17    # "qz":F
    .end local v20    # "wx":F
    .end local v21    # "wy":F
    .end local v22    # "wz":F
    :cond_7
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 205
    const-string v0, "velocities"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsInfluencer;->velocities:Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 206
    return-void
.end method

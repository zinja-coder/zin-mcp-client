.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;
.source "DynamicsModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rotational2D"
.end annotation


# instance fields
.field rotationalVelocity2dChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;)V
    .locals 0
    .param p1, "rotation"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;)V

    .line 190
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;->allocateChannels()V

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->AngularVelocity2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->rotationalVelocity2dChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 196
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;)V

    return-object v0
.end method

.method public update()V
    .locals 10

    .prologue
    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x2

    .local v2, "l":I
    const/4 v3, 0x0

    .line 201
    .local v3, "s":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->rotationalVelocity2dChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v4, v5

    add-int v0, v1, v4

    .line 202
    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 204
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->rotationalVelocity2dChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v5, v4, v1

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v3, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->strengthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->getScale(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v4, v1

    .line 203
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->strengthChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->rotationalVelocity2dChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;
.source "ColorInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Random"
.end annotation


# instance fields
.field colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;-><init>()V

    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 5
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 26
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v1, p1, v2

    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v2, p2

    add-int v0, v1, v2

    .line 27
    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 29
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v4

    aput v4, v2, v3

    .line 30
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x1

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v4

    aput v4, v2, v3

    .line 31
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v4

    aput v4, v2, v3

    .line 32
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x3

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v4

    aput v4, v2, v3

    .line 28
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public allocateChannels()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Color:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 22
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;-><init>()V

    return-object v0
.end method

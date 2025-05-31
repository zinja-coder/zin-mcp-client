.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;
.source "RegionInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Animated"
.end annotation


# instance fields
.field lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;)V
    .locals 0
    .param p1, "regionInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;)V

    .line 94
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->allocateChannels()V

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 108
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;)V

    return-object v0
.end method

.method public update()V
    .locals 7

    .prologue
    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x2

    .line 113
    .local v2, "l":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v0, v4, v5

    .line 114
    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 116
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v5, v5, v2

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    .line 117
    .local v3, "region":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x0

    iget v6, v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u:F

    aput v6, v4, v5

    .line 118
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x1

    iget v6, v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v:F

    aput v6, v4, v5

    .line 119
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x2

    iget v6, v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u2:F

    aput v6, v4, v5

    .line 120
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x3

    iget v6, v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v2:F

    aput v6, v4, v5

    .line 121
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x4

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, v4, v5

    .line 122
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x5

    iget v6, v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->halfInvAspectRatio:F

    aput v6, v4, v5

    .line 115
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 124
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;
    :cond_0
    return-void
.end method

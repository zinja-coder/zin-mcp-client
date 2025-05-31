.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;
.source "RegionInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Random"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;)V
    .locals 0
    .param p1, "regionInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;)V

    .line 57
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 68
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v1, p1, v3

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v3, p2

    add-int v0, v1, v3

    .line 69
    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 71
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->random()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    .line 72
    .local v2, "region":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x0

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u:F

    aput v5, v3, v4

    .line 73
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x1

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v:F

    aput v5, v3, v4

    .line 74
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x2

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u2:F

    aput v5, v3, v4

    .line 75
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x3

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v2:F

    aput v5, v3, v4

    .line 76
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x4

    const/high16 v5, 0x3f000000    # 0.5f

    aput v5, v3, v4

    .line 77
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v1, 0x5

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->halfInvAspectRatio:F

    aput v5, v3, v4

    .line 70
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 79
    .end local v2    # "region":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;)V

    return-object v0
.end method

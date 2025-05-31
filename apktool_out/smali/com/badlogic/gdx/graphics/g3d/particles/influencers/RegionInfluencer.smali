.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "RegionInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Animated;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Random;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$Single;
    }
.end annotation


# instance fields
.field regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public regions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 173
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>(I)V

    .line 174
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;-><init>()V

    .line 175
    .local v0, "aspectRegion":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;
    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u:F

    .line 176
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v2:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u2:F

    .line 177
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->halfInvAspectRatio:F

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "regionsCount"    # I

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 169
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;)V
    .locals 4
    .param p1, "regionInfluencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;

    .prologue
    .line 192
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;-><init>(I)V

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 4
    .param p1, "regions"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 183
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    array-length v2, p1

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 184
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->add([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 185
    return-void
.end method


# virtual methods
.method public varargs add([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 6
    .param p1, "regions"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 200
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    array-length v5, p1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 201
    move-object v0, p1

    .local v0, "arr$":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 202
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_0
    return-void
.end method

.method public allocateChannels()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->TextureRegion:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 213
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 208
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 223
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    const-string v0, "regions"

    const-class v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    invoke-virtual {p1, v0, v2, v3, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 224
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 217
    const-string v0, "regions"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;->regions:Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 218
    return-void
.end method

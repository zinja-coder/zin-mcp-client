.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;
.super Ljava/lang/Object;
.source "ParticleChannels.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureRegionInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;

    .line 25
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .prologue
    .line 20
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .end local p1    # "x0":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;->init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V

    return-void
.end method

.method public init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V
    .locals 7
    .param p1, "channel"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    array-length v0, v2

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x0

    aput v4, v2, v3

    .line 32
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x1

    aput v4, v2, v3

    .line 33
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x2

    aput v6, v2, v3

    .line 34
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x3

    aput v6, v2, v3

    .line 35
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x4

    aput v5, v2, v3

    .line 36
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x5

    aput v5, v2, v3

    .line 30
    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

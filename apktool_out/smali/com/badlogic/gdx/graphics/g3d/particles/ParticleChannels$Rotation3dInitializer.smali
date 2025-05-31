.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;
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
    name = "Rotation3dInitializer"
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
.field private static instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;

    .line 88
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .prologue
    .line 83
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .end local p1    # "x0":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;->init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V

    return-void
.end method

.method public init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V
    .locals 9
    .param p1, "channel"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .prologue
    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    array-length v0, v2

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x0

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    aput v8, v4, v5

    aput v8, v2, v3

    .line 96
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 92
    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

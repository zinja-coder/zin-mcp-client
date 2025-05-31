.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;
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
    name = "Rotation2dInitializer"
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
.field private static instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;

    .line 72
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .prologue
    .line 67
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .end local p1    # "x0":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;->init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V

    return-void
.end method

.method public init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V
    .locals 5
    .param p1, "channel"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .prologue
    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    array-length v0, v2

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 77
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 78
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 76
    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

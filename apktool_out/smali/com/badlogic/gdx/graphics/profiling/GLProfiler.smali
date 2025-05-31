.class public abstract Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
.super Ljava/lang/Object;
.source "GLProfiler.java"


# static fields
.field public static calls:I

.field public static drawCalls:I

.field public static shaderSwitches:I

.field public static textureBindings:I

.field public static vertexCount:Lcom/badlogic/gdx/math/FloatCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/FloatCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 58
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 59
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 60
    :cond_2
    return-void
.end method

.method public static enable()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 50
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    :goto_1
    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 51
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    .line 53
    :cond_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;-><init>(Lcom/badlogic/gdx/graphics/GL30;)V

    goto :goto_0

    .line 50
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;-><init>(Lcom/badlogic/gdx/graphics/GL20;)V

    goto :goto_1
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Profiler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Profiler;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->calls:I

    .line 70
    sput v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->textureBindings:I

    .line 71
    sput v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->drawCalls:I

    .line 72
    sput v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->shaderSwitches:I

    .line 73
    sget-object v0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    .line 74
    return-void
.end method

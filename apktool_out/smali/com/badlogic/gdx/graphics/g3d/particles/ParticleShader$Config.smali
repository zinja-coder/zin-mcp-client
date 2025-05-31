.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;
.super Ljava/lang/Object;
.source "ParticleShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field public defaultCullFace:I

.field public defaultDepthFunc:I

.field public fragmentShader:Ljava/lang/String;

.field public ignoreUnimplemented:Z

.field public type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

.field public vertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->vertexShader:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->fragmentShader:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->ignoreUnimplemented:Z

    .line 61
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    .line 63
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Billboard:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V
    .locals 2
    .param p1, "align"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->vertexShader:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->fragmentShader:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->ignoreUnimplemented:Z

    .line 61
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    .line 63
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Billboard:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .line 73
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;)V
    .locals 2
    .param p1, "align"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .param p2, "type"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->vertexShader:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->fragmentShader:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->ignoreUnimplemented:Z

    .line 61
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    .line 63
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Billboard:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .line 68
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 69
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;)V
    .locals 2
    .param p1, "type"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->vertexShader:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->fragmentShader:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->ignoreUnimplemented:Z

    .line 61
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    .line 63
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Billboard:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .line 77
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->vertexShader:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->fragmentShader:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->ignoreUnimplemented:Z

    .line 61
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultCullFace:I

    .line 63
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->defaultDepthFunc:I

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->align:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Billboard:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->type:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->vertexShader:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;->fragmentShader:Ljava/lang/String;

    .line 83
    return-void
.end method

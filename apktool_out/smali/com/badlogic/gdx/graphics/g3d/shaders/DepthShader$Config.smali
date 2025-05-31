.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
.source "DepthShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public defaultAlphaTest:F

.field public depthBufferOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->depthBufferOnly:Z

    .line 35
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->defaultAlphaTest:F

    .line 39
    const/16 v0, 0x404

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->defaultCullFace:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->depthBufferOnly:Z

    .line 35
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->defaultAlphaTest:F

    .line 44
    return-void
.end method

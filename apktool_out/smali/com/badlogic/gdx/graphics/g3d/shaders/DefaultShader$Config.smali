.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
.super Ljava/lang/Object;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public defaultCullFace:I

.field public defaultDepthFunc:I

.field public fragmentShader:Ljava/lang/String;

.field public ignoreUnimplemented:Z

.field public numBones:I

.field public numDirectionalLights:I

.field public numPointLights:I

.field public numSpotLights:I

.field public vertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    .line 60
    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    .line 64
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    .line 66
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numSpotLights:I

    .line 60
    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    .line 64
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    .line 66
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    .line 74
    return-void
.end method

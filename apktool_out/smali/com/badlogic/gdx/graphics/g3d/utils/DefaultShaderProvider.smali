.class public Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;
.super Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;
.source "DefaultShaderProvider.java"


# instance fields
.field public final config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1, "vertexShader"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "fragmentShader"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V
    .locals 0
    .param p1, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;-><init>()V

    .line 29
    if-nez p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .end local p1    # "config":Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .locals 2
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    return-object v0
.end method

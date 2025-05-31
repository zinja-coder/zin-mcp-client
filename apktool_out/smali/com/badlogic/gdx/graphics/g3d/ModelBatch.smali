.class public Lcom/badlogic/gdx/graphics/g3d/ModelBatch;
.super Ljava/lang/Object;
.source "ModelBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;
    }
.end annotation


# instance fields
.field protected camera:Lcom/badlogic/gdx/graphics/Camera;

.field protected final context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

.field private final ownContext:Z

.field protected final renderables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field

.field protected final renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

.field protected final shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

.field protected final sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1, "vertexShader"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "fragmentShader"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    const/4 v1, 0x0

    .line 136
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {p0, v1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .locals 1
    .param p1, "context"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .locals 1
    .param p1, "context"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .param p2, "sorter"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;)V
    .locals 1
    .param p1, "context"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .param p2, "shaderProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .locals 2
    .param p1, "context"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .param p2, "shaderProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    .param p3, "sorter"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    .line 86
    if-nez p3, :cond_0

    new-instance p3, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;

    .end local p3    # "sorter":Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;
    invoke-direct {p3}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .line 87
    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->ownContext:Z

    .line 88
    if-nez p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .end local p1    # "context":Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;)V

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    .line 89
    if-nez p2, :cond_2

    new-instance p2, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    .end local p2    # "shaderProvider":Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    invoke-direct {p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>()V

    :cond_2
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    .line 90
    return-void

    .line 87
    .restart local p1    # "context":Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .restart local p2    # "shaderProvider":Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .locals 1
    .param p1, "sorter"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;)V
    .locals 1
    .param p1, "shaderProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, v0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V
    .locals 1
    .param p1, "shaderProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    .param p2, "sorter"    # Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 144
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultShaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;)V

    .line 145
    return-void
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 2
    .param p1, "cam"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call end() first."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 159
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->ownContext:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->begin()V

    .line 160
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->dispose()V

    .line 342
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->flush()V

    .line 225
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->ownContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->end()V

    .line 226
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 227
    return-void
.end method

.method public flush()V
    .locals 6

    .prologue
    .line 204
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;->sort(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/utils/Array;)V

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "currentShader":Lcom/badlogic/gdx/graphics/g3d/Shader;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 208
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    if-eq v0, v3, :cond_1

    .line 209
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->end()V

    .line 210
    :cond_0
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 211
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Shader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    .line 213
    :cond_1
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/Shader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->end()V

    .line 216
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;->flush()V

    .line 217
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 218
    return-void
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getRenderContext()Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    return-object v0
.end method

.method public getRenderableSorter()Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->sorter:Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;

    return-object v0
.end method

.method public getShaderProvider()Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    return-object v0
.end method

.method public ownsRenderContext()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->ownContext:Z

    return v0
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 2
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v0

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 234
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setAutoBind(Z)V

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V
    .locals 5
    .param p1, "renderableProvider"    # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .prologue
    .line 242
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 243
    .local v1, "offset":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 244
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 246
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_0
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V
    .locals 5
    .param p1, "renderableProvider"    # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    .param p2, "environment"    # Lcom/badlogic/gdx/graphics/g3d/Environment;

    .prologue
    .line 264
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 265
    .local v1, "offset":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 266
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 268
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iput-object p2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 269
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_0
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .locals 5
    .param p1, "renderableProvider"    # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    .param p2, "environment"    # Lcom/badlogic/gdx/graphics/g3d/Environment;
    .param p3, "shader"    # Lcom/badlogic/gdx/graphics/g3d/Shader;

    .prologue
    .line 316
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 317
    .local v1, "offset":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 318
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 320
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iput-object p2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 321
    iput-object p3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 322
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_0
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .locals 5
    .param p1, "renderableProvider"    # Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    .param p2, "shader"    # Lcom/badlogic/gdx/graphics/g3d/Shader;

    .prologue
    .line 289
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 290
    .local v1, "offset":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderablesPool:Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;

    invoke-interface {p1, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    .line 291
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 293
    .local v2, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iput-object p2, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 294
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->shaderProvider:Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;->getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    :cond_0
    return-void
.end method

.method public render(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 255
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;)V

    goto :goto_0

    .line 256
    .end local v1    # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    :cond_0
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Environment;)V
    .locals 3
    .param p2, "environment"    # Lcom/badlogic/gdx/graphics/g3d/Environment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 280
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;)V

    goto :goto_0

    .line 281
    .end local v1    # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    :cond_0
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .locals 3
    .param p2, "environment"    # Lcom/badlogic/gdx/graphics/g3d/Environment;
    .param p3, "shader"    # Lcom/badlogic/gdx/graphics/g3d/Shader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 336
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Environment;Lcom/badlogic/gdx/graphics/g3d/Shader;)V

    goto :goto_0

    .line 337
    .end local v1    # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    :cond_0
    return-void
.end method

.method public render(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/Shader;)V
    .locals 3
    .param p2, "shader"    # Lcom/badlogic/gdx/graphics/g3d/Shader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "renderableProviders":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;

    .line 305
    .local v1, "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->render(Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;Lcom/badlogic/gdx/graphics/g3d/Shader;)V

    goto :goto_0

    .line 306
    .end local v1    # "renderableProvider":Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;
    :cond_0
    return-void
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 2
    .param p1, "cam"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call begin() first."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->renderables:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->flush()V

    .line 168
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 169
    return-void
.end method

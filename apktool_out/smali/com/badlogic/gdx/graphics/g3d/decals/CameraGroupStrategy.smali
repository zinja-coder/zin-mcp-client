.class public Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;
.super Ljava/lang/Object;
.source "CameraGroupStrategy.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final GROUP_BLEND:I = 0x1

.field private static final GROUP_OPAQUE:I


# instance fields
.field arrayPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field camera:Lcom/badlogic/gdx/graphics/Camera;

.field private final cameraSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;"
        }
    .end annotation
.end field

.field materialGroups:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field usedArrays:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 99
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$2;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$2;-><init>(Lcom/badlogic/gdx/graphics/Camera;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;-><init>(Lcom/badlogic/gdx/graphics/Camera;Ljava/util/Comparator;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Camera;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/Camera;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "sorter":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->arrayPool:Lcom/badlogic/gdx/utils/Pool;

    .line 91
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->usedArrays:Lcom/badlogic/gdx/utils/Array;

    .line 92
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->materialGroups:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 110
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 111
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->cameraSorter:Ljava/util/Comparator;

    .line 112
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->createDefaultShader()V

    .line 114
    return-void
.end method

.method private createDefaultShader()V
    .locals 5

    .prologue
    .line 180
    const-string v1, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n"

    .line 193
    .local v1, "vertexShader":Ljava/lang/String;
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    .line 204
    .local v0, "fragmentShader":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 205
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t compile shader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public afterGroup(I)V
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 161
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public afterGroups()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 176
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 177
    return-void
.end method

.method public beforeGroup(ILcom/badlogic/gdx/utils/Array;)V
    .locals 7
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "contents":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 132
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v6, 0xbe2

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 133
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->cameraSorter:Ljava/util/Comparator;

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 156
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget v4, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 136
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .line 137
    .local v0, "decal":Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->materialGroups:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 138
    .local v3, "materialGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    if-nez v3, :cond_1

    .line 139
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->arrayPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "materialGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 140
    .restart local v3    # "materialGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 141
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->usedArrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 142
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->materialGroups:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-virtual {v5, v6, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v0    # "decal":Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .end local v3    # "materialGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    :cond_2
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 148
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->materialGroups:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 149
    .restart local v3    # "materialGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    goto :goto_2

    .line 152
    .end local v3    # "materialGroup":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/decals/Decal;>;"
    :cond_3
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->materialGroups:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 153
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->arrayPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->usedArrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 154
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->usedArrays:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_0
.end method

.method public beforeGroups()V
    .locals 3

    .prologue
    .line 167
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_projectionViewMatrix"

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "u_texture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 171
    return-void
.end method

.method public decideGroup(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I
    .locals 1
    .param p1, "decal"    # Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    .line 216
    :cond_0
    return-void
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->camera:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getGroupShader(I)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 118
    return-void
.end method

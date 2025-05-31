.class public Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final BINORMAL_ATTRIBUTE:Ljava/lang/String; = "a_binormal"

.field public static final COLOR_ATTRIBUTE:Ljava/lang/String; = "a_color"

.field public static final NORMAL_ATTRIBUTE:Ljava/lang/String; = "a_normal"

.field public static final POSITION_ATTRIBUTE:Ljava/lang/String; = "a_position"

.field public static final TANGENT_ATTRIBUTE:Ljava/lang/String; = "a_tangent"

.field public static final TEXCOORD_ATTRIBUTE:Ljava/lang/String; = "a_texCoord"

.field static final intbuf:Ljava/nio/IntBuffer;

.field public static pedantic:Z

.field private static final shaders:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private attributeNames:[Ljava/lang/String;

.field private final attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentShaderHandle:I

.field private final fragmentShaderSource:Ljava/lang/String;

.field private invalidated:Z

.field private isCompiled:Z

.field private log:Ljava/lang/String;

.field private final matrix:Ljava/nio/FloatBuffer;

.field params:Ljava/nio/IntBuffer;

.field private program:I

.field private refCount:I

.field type:Ljava/nio/IntBuffer;

.field private uniformNames:[Ljava/lang/String;

.field private final uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vertexShaderHandle:I

.field private final vertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    sput-boolean v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 87
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 242
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->intbuf:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1, "vertexShader"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "fragmentShader"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 102
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->refCount:I

    .line 781
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    .line 782
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    .line 149
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vertex shader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fragment shader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    .line 154
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->matrix:Ljava/nio/FloatBuffer;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->compileShaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributes()V

    .line 159
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniforms()V

    .line 160
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-direct {p0, v0, p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->addManagedShader(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 162
    :cond_2
    return-void
.end method

.method private addManagedShader(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2
    .param p1, "app"    # Lcom/badlogic/gdx/Application;
    .param p2, "shaderProgram"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 732
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 733
    .local v0, "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    .end local v0    # "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 734
    .restart local v0    # "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;>;"
    :cond_0
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 735
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    return-void
.end method

.method private checkManaged()V
    .locals 2

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->compileShaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    .line 729
    :cond_0
    return-void
.end method

.method public static clearAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 753
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    return-void
.end method

.method private compileShaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 173
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    .line 174
    const v0, 0x8b30

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    if-ne v0, v1, :cond_1

    .line 177
    :cond_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->linkProgram()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    .line 182
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    if-ne v0, v1, :cond_2

    .line 183
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    goto :goto_0

    .line 187
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    goto :goto_0
.end method

.method private fetchAttributeLocation(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x2

    .line 265
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 269
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v2, p1, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    .local v1, "location":I
    if-ne v1, v3, :cond_0

    .line 270
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 271
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v2, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 273
    :cond_0
    return v1
.end method

.method private fetchAttributes()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 805
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 806
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    const v6, 0x8b89

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 807
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 809
    .local v3, "numAttributes":I
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    .line 811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 812
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 813
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 814
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 815
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-interface {v4, v5, v0, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "name":Ljava/lang/String;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v4, v5, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 817
    .local v1, "location":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v4, v2, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 818
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 819
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 820
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    aput-object v2, v4, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    .end local v1    # "location":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private fetchUniformLocation(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 277
    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private fetchUniforms()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 785
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 786
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    const v6, 0x8b86

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 787
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    .line 789
    .local v3, "numUniforms":I
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    .line 791
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 792
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 793
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 794
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 795
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-interface {v4, v5, v0, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "name":Ljava/lang/String;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v4, v5, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 797
    .local v1, "location":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v4, v2, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 798
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->type:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 799
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->params:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 800
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    aput-object v2, v4, v0

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    .end local v1    # "location":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 759
    .local v2, "i":I
    const-string v4, "Managed shaders/app: { "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 761
    .local v0, "app":Lcom/badlogic/gdx/Application;
    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 764
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    :cond_0
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static invalidateAllShaderPrograms(Lcom/badlogic/gdx/Application;)V
    .locals 4
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 741
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v2, :cond_1

    .line 750
    :cond_0
    return-void

    .line 743
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 744
    .local v1, "shaderArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;>;"
    if-eqz v1, :cond_0

    .line 746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    .line 747
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->invalidated:Z

    .line 748
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private linkProgram()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 216
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 217
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v3

    .line 218
    .local v3, "program":I
    if-nez v3, :cond_1

    move v3, v5

    .line 239
    .end local v3    # "program":I
    :cond_0
    :goto_0
    return v3

    .line 220
    .restart local v3    # "program":I
    :cond_1
    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    invoke-interface {v0, v3, v6}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 221
    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    invoke-interface {v0, v3, v6}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 222
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    .line 224
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 225
    .local v4, "tmp":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 228
    .local v1, "intbuf":Ljava/nio/IntBuffer;
    const v6, 0x8b82

    invoke-interface {v0, v3, v6, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 229
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 230
    .local v2, "linked":I
    if-nez v2, :cond_0

    .line 234
    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    move v3, v5

    .line 236
    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 191
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 192
    .local v1, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v3

    .line 194
    .local v3, "intbuf":Ljava/nio/IntBuffer;
    invoke-interface {v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result v4

    .line 195
    .local v4, "shader":I
    if-nez v4, :cond_1

    move v4, v5

    .line 212
    .end local v4    # "shader":I
    :cond_0
    :goto_0
    return v4

    .line 197
    .restart local v4    # "shader":I
    :cond_1
    invoke-interface {v1, v4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    .line 198
    invoke-interface {v1, v4}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    .line 199
    const v6, 0x8b81

    invoke-interface {v1, v4, v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 201
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 202
    .local v0, "compiled":I
    if-nez v0, :cond_0

    .line 206
    invoke-interface {v1, v4}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "infoLog":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    move v4, v5

    .line 209
    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 2

    .prologue
    .line 668
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 669
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 670
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 671
    return-void
.end method

.method public disableVertexAttribute(I)V
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 702
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 703
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 704
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    .line 705
    return-void
.end method

.method public disableVertexAttribute(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 694
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 695
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 696
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 697
    .local v1, "location":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 699
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 682
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 683
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 684
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 685
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 686
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    .line 687
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->shaders:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 688
    :cond_0
    return-void
.end method

.method public enableVertexAttribute(I)V
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 719
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 720
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 721
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 722
    return-void
.end method

.method public enableVertexAttribute(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 711
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 712
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 713
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 714
    .local v1, "location":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method public end()V
    .locals 2

    .prologue
    .line 676
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 677
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 678
    return-void
.end method

.method public fetchUniformLocation(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pedantic"    # Z

    .prologue
    const/4 v3, -0x2

    .line 281
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 285
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v2, p1, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    .local v1, "location":I
    if-ne v1, v3, :cond_1

    .line 286
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 287
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no uniform with name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in shader"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v2, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 290
    :cond_1
    return v1
.end method

.method public getAttributeLocation(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getAttributeSize(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 845
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getAttributeType(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getAttributes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributeNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentShaderSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fragmentShaderSource:Ljava/lang/String;

    return-object v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    .line 255
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->log:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getUniformSize(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformSizes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getUniformType(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformTypes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getUniforms()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniformNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVertexShaderSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->vertexShaderSource:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->attributes:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUniform(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 851
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->uniforms:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCompiled()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled:Z

    return v0
.end method

.method public setAttributef(Ljava/lang/String;FFFF)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F
    .param p5, "value4"    # F

    .prologue
    .line 776
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 777
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .local v1, "location":I
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 778
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    .line 779
    return-void
.end method

.method public setUniform1fv(I[FII)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 449
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 450
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 451
    invoke-interface {v0, p1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    .line 452
    return-void
.end method

.method public setUniform1fv(Ljava/lang/String;[FII)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 442
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 443
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 444
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 445
    .local v1, "location":I
    invoke-interface {v0, v1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    .line 446
    return-void
.end method

.method public setUniform2fv(I[FII)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 462
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 463
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 464
    div-int/lit8 v1, p4, 0x2

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    .line 465
    return-void
.end method

.method public setUniform2fv(Ljava/lang/String;[FII)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 455
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 456
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 457
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, "location":I
    div-int/lit8 v2, p4, 0x2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    .line 459
    return-void
.end method

.method public setUniform3fv(I[FII)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 475
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 476
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 477
    div-int/lit8 v1, p4, 0x3

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    .line 478
    return-void
.end method

.method public setUniform3fv(Ljava/lang/String;[FII)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 468
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 469
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 470
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 471
    .local v1, "location":I
    div-int/lit8 v2, p4, 0x3

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    .line 472
    return-void
.end method

.method public setUniform4fv(I[FII)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 488
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 489
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 490
    div-int/lit8 v1, p4, 0x4

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    .line 491
    return-void
.end method

.method public setUniform4fv(Ljava/lang/String;[FII)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 481
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 482
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 483
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 484
    .local v1, "location":I
    div-int/lit8 v2, p4, 0x4

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    .line 485
    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V

    .line 539
    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;
    .param p3, "transpose"    # Z

    .prologue
    .line 542
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 543
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 544
    const/4 v2, 0x1

    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x0

    move v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZ[FI)V

    .line 545
    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V

    .line 512
    return-void
.end method

.method public setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "transpose"    # Z

    .prologue
    .line 515
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 516
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 517
    const/4 v2, 0x1

    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x0

    move v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    .line 518
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V

    .line 526
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix3;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;
    .param p3, "transpose"    # Z

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix3;Z)V

    .line 535
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V

    .line 499
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "transpose"    # Z

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(ILcom/badlogic/gdx/math/Matrix4;Z)V

    .line 508
    return-void
.end method

.method public setUniformMatrix3fv(Ljava/lang/String;Ljava/nio/FloatBuffer;IZ)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/FloatBuffer;
    .param p3, "count"    # I
    .param p4, "transpose"    # Z

    .prologue
    .line 553
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 554
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 555
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 557
    .local v1, "location":I
    invoke-interface {v0, v1, p3, p4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 558
    return-void
.end method

.method public setUniformMatrix4fv(I[FII)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 574
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 575
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 576
    div-int/lit8 v2, p4, 0x10

    const/4 v3, 0x0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    .line 577
    return-void
.end method

.method public setUniformMatrix4fv(Ljava/lang/String;Ljava/nio/FloatBuffer;IZ)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/FloatBuffer;
    .param p3, "count"    # I
    .param p4, "transpose"    # Z

    .prologue
    .line 566
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 567
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 568
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 569
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 570
    .local v1, "location":I
    invoke-interface {v0, v1, p3, p4, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 571
    return-void
.end method

.method public setUniformMatrix4fv(Ljava/lang/String;[FII)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [F
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix4fv(I[FII)V

    .line 581
    return-void
.end method

.method public setUniformf(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "value"    # F

    .prologue
    .line 379
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 380
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 381
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 382
    return-void
.end method

.method public setUniformf(IFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "value1"    # F
    .param p3, "value2"    # F

    .prologue
    .line 397
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 398
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 399
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 400
    return-void
.end method

.method public setUniformf(IFFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F

    .prologue
    .line 416
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 417
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 418
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 419
    return-void
.end method

.method public setUniformf(IFFFF)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F
    .param p5, "value4"    # F

    .prologue
    .line 436
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 437
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 438
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 439
    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "values"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 616
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFFF)V

    .line 617
    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "values"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 592
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFF)V

    .line 593
    return-void
.end method

.method public setUniformf(ILcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "location"    # I
    .param p2, "values"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 604
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    .line 605
    return-void
.end method

.method public setUniformf(Ljava/lang/String;F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 372
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 373
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 374
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 375
    .local v1, "location":I
    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 376
    return-void
.end method

.method public setUniformf(Ljava/lang/String;FF)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F

    .prologue
    .line 390
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 391
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 392
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 393
    .local v1, "location":I
    invoke-interface {v0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 394
    return-void
.end method

.method public setUniformf(Ljava/lang/String;FFF)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F

    .prologue
    .line 409
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 410
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 411
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "location":I
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 413
    return-void
.end method

.method public setUniformf(Ljava/lang/String;FFFF)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value1"    # F
    .param p3, "value2"    # F
    .param p4, "value3"    # F
    .param p5, "value4"    # F

    .prologue
    .line 429
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 430
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 431
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .local v1, "location":I
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 432
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 433
    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 612
    iget v2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 613
    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 588
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 589
    return-void
.end method

.method public setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 600
    iget v0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 601
    return-void
.end method

.method public setUniformi(II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "value"    # I

    .prologue
    .line 305
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 306
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 307
    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 308
    return-void
.end method

.method public setUniformi(III)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    .line 323
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 324
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 325
    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 326
    return-void
.end method

.method public setUniformi(IIII)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I

    .prologue
    .line 342
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 343
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 344
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 345
    return-void
.end method

.method public setUniformi(IIIII)V
    .locals 6
    .param p1, "location"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I
    .param p5, "value4"    # I

    .prologue
    .line 362
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 363
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 364
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 365
    return-void
.end method

.method public setUniformi(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 298
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 299
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 300
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "location":I
    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 302
    return-void
.end method

.method public setUniformi(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    .line 316
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 317
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 318
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 319
    .local v1, "location":I
    invoke-interface {v0, v1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 320
    return-void
.end method

.method public setUniformi(Ljava/lang/String;III)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I

    .prologue
    .line 335
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 336
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 337
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .line 338
    .local v1, "location":I
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 339
    return-void
.end method

.method public setUniformi(Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I
    .param p5, "value4"    # I

    .prologue
    .line 355
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 356
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 357
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result v1

    .local v1, "location":I
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 358
    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 359
    return-void
.end method

.method public setVertexAttribute(IIIZII)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalize"    # Z
    .param p5, "stride"    # I
    .param p6, "offset"    # I

    .prologue
    .line 660
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 661
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 662
    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    .line 663
    return-void
.end method

.method public setVertexAttribute(IIIZILjava/nio/Buffer;)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalize"    # Z
    .param p5, "stride"    # I
    .param p6, "buffer"    # Ljava/nio/Buffer;

    .prologue
    .line 637
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 638
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 639
    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 640
    return-void
.end method

.method public setVertexAttribute(Ljava/lang/String;IIZII)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalize"    # Z
    .param p5, "stride"    # I
    .param p6, "offset"    # I

    .prologue
    .line 652
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 653
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 654
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 655
    .local v1, "location":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 657
    :goto_0
    return-void

    :cond_0
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 656
    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    goto :goto_0
.end method

.method public setVertexAttribute(Ljava/lang/String;IIZILjava/nio/Buffer;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalize"    # Z
    .param p5, "stride"    # I
    .param p6, "buffer"    # Ljava/nio/Buffer;

    .prologue
    .line 629
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 630
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->checkManaged()V

    .line 631
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->fetchAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 632
    .local v1, "location":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 634
    :goto_0
    return-void

    :cond_0
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 633
    invoke-interface/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0
.end method

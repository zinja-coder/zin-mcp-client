.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;
.super Ljava/lang/Object;
.source "VertexBufferObjectSubData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# instance fields
.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field bufferHandle:I

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field final isDirect:Z

.field isDirty:Z

.field final isStatic:Z

.field final usage:I


# direct methods
.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "numVertices"    # I
    .param p3, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 61
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 69
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isStatic:Z

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirect:Z

    .line 74
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    .line 76
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    return-void

    .line 74
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method private bufferChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8892

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 113
    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 115
    :cond_0
    return-void
.end method

.method private createBufferObject()I
    .locals 6

    .prologue
    const v5, 0x8892

    .line 82
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    .line 83
    .local v0, "result":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v5, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 84
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    invoke-interface {v1, v5, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 85
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 86
    return v0
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 155
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 11
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .prologue
    const v4, 0x8892

    .line 159
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 161
    .local v8, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v8, v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 162
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->usage:I

    invoke-interface {v8, v4, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 169
    .local v10, "numAttributes":I
    if-nez p2, :cond_2

    .line 170
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_4

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    .line 172
    .local v7, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "location":I
    if-gez v1, :cond_1

    .line 170
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 176
    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v3, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v4, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    goto :goto_1

    .line 180
    .end local v1    # "location":I
    .end local v7    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v9    # "i":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v10, :cond_4

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    .line 182
    .restart local v7    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v1, p2, v9

    .line 183
    .restart local v1    # "location":I
    if-gez v1, :cond_3

    .line 180
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 186
    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v3, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v4, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v6, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    goto :goto_3

    .line 190
    .end local v1    # "location":I
    .end local v7    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 191
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 229
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const v1, 0x8892

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 230
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 231
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 232
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getBufferHandle()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    return v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferHandle:I

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 223
    return-void
.end method

.method public setVertices([FII)V
    .locals 2
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 120
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirect:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferChanged()V

    .line 133
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 199
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 6
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .prologue
    const/4 v5, 0x0

    .line 203
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 204
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 205
    .local v3, "numAttributes":I
    if-nez p2, :cond_0

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 207
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 211
    aget v2, p2, v1

    .line 212
    .local v2, "location":I
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 210
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v2    # "location":I
    :cond_2
    const v4, 0x8892

    invoke-interface {v0, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 216
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isBound:Z

    .line 217
    return-void
.end method

.method public updateVertices(I[FII)V
    .locals 3
    .param p1, "targetOffset"    # I
    .param p2, "vertices"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirty:Z

    .line 138
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->isDirect:Z

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 140
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bufferChanged()V

    .line 147
    return-void

    .line 144
    .end local v0    # "pos":I
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Buffer must be allocated direct."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

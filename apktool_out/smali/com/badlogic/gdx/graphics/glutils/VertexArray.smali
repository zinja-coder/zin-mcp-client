.class public Lcom/badlogic/gdx/graphics/glutils/VertexArray;
.super Ljava/lang/Object;
.source "VertexArray.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# instance fields
.field final attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field final buffer:Ljava/nio/FloatBuffer;

.field final byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1
    .param p1, "numVertices"    # I
    .param p2, "attributes"    # Lcom/badlogic/gdx/graphics/VertexAttributes;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->isBound:Z

    .line 58
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    return-void
.end method

.method public varargs constructor <init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .param p1, "numVertices"    # I
    .param p2, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 51
    return-void
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 102
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 12
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .prologue
    const/16 v11, 0x1406

    .line 106
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 107
    .local v8, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v10

    .line 108
    .local v10, "numAttributes":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    if-nez p2, :cond_2

    .line 110
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_5

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    .line 112
    .local v7, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "location":I
    if-gez v1, :cond_0

    .line 110
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 116
    iget v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    if-ne v0, v11, :cond_1

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v3, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v4, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZILjava/nio/Buffer;)V

    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v3, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v4, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZILjava/nio/Buffer;)V

    goto :goto_1

    .line 127
    .end local v1    # "location":I
    .end local v7    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    .end local v9    # "i":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v10, :cond_5

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v7

    .line 129
    .restart local v7    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    aget v1, p2, v9

    .line 130
    .restart local v1    # "location":I
    if-gez v1, :cond_3

    .line 127
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    .line 133
    iget v0, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    if-ne v0, v11, :cond_4

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v3, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v4, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZILjava/nio/Buffer;)V

    goto :goto_3

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    iget v2, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v3, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v4, v7, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v5, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZILjava/nio/Buffer;)V

    goto :goto_3

    .line 144
    .end local v1    # "location":I
    .end local v7    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->isBound:Z

    .line 145
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 68
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public setVertices([FII)V
    .locals 2
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 89
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    .line 153
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 5
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .param p2, "locations"    # [I

    .prologue
    .line 157
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 158
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    .line 159
    .local v3, "numAttributes":I
    if-nez p2, :cond_0

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 161
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 165
    aget v2, p2, v1

    .line 166
    .local v2, "location":I
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    .end local v2    # "location":I
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->isBound:Z

    .line 170
    return-void
.end method

.method public updateVertices(I[FII)V
    .locals 3
    .param p1, "targetOffset"    # I
    .param p2, "vertices"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 94
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    .line 96
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    return-void
.end method

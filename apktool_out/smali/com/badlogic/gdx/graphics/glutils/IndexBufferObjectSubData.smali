.class public Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;
.super Ljava/lang/Object;
.source "IndexBufferObjectSubData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/IndexData;


# instance fields
.field buffer:Ljava/nio/ShortBuffer;

.field bufferHandle:I

.field byteBuffer:Ljava/nio/ByteBuffer;

.field isBound:Z

.field final isDirect:Z

.field isDirty:Z

.field final usage:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxIndices"    # I

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    .line 75
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 76
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirect:Z

    .line 78
    const v0, 0x88e4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->usage:I

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 82
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    .line 83
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2
    .param p1, "isStatic"    # Z
    .param p2, "maxIndices"    # I

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    .line 61
    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 62
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirect:Z

    .line 64
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->usage:I

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 68
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    .line 69
    return-void

    .line 64
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method

.method private createBufferObject()I
    .locals 6

    .prologue
    const v5, 0x8893

    .line 86
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    .line 87
    .local v0, "result":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v5, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 88
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->usage:I

    invoke-interface {v1, v5, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 89
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 90
    return v0
.end method


# virtual methods
.method public bind()V
    .locals 5

    .prologue
    const v4, 0x8893

    const/4 v3, 0x0

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "buuh"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 162
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 164
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 165
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 167
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    .line 168
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 185
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    const v1, 0x8893

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 186
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 187
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    .line 188
    return-void
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->createBufferObject()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->bufferHandle:I

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 180
    return-void
.end method

.method public setIndices(Ljava/nio/ShortBuffer;)V
    .locals 6
    .param p1, "indices"    # Ljava/nio/ShortBuffer;

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 131
    .local v0, "pos":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 132
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 134
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 135
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8893

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2, v5, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 141
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 143
    :cond_0
    return-void
.end method

.method public setIndices([SII)V
    .locals 5
    .param p1, "indices"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 123
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 125
    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isDirty:Z

    .line 127
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 173
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->isBound:Z

    .line 174
    return-void
.end method

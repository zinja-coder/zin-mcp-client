.class public Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;
.super Ljava/lang/Object;
.source "IndexBufferObject.java"

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
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 75
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 76
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirect:Z

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 82
    const v0, 0x88e4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

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
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 61
    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 62
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirect:Z

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 67
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 68
    if-eqz p1, :cond_0

    const v0, 0x88e4

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    .line 69
    return-void

    .line 68
    :cond_0
    const v0, 0x88e8

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 5

    .prologue
    const v4, 0x8893

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No buffer allocated!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-interface {v0, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 154
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 156
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 159
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 160
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 177
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 178
    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 181
    return-void
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bufferHandle:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 172
    return-void
.end method

.method public setIndices(Ljava/nio/ShortBuffer;)V
    .locals 7
    .param p1, "indices"    # Ljava/nio/ShortBuffer;

    .prologue
    const/4 v6, 0x0

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 123
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 124
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 125
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 126
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 131
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8893

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 133
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 135
    :cond_0
    return-void
.end method

.method public setIndices([SII)V
    .locals 6
    .param p1, "indices"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 115
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->usage:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 117
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isDirty:Z

    .line 119
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 165
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->isBound:Z

    .line 166
    return-void
.end method

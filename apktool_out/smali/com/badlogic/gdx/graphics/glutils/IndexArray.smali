.class public Lcom/badlogic/gdx/graphics/glutils/IndexArray;
.super Ljava/lang/Object;
.source "IndexArray.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/IndexData;


# static fields
.field static final tmpHandle:Ljava/nio/IntBuffer;


# instance fields
.field buffer:Ljava/nio/ShortBuffer;

.field byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->tmpHandle:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxIndices"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 40
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 108
    return-void
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public setIndices(Ljava/nio/ShortBuffer;)V
    .locals 3
    .param p1, "indices"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 74
    .local v0, "pos":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 76
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 81
    return-void
.end method

.method public setIndices([SII)V
    .locals 2
    .param p1, "indices"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->byteBuffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    return-void
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

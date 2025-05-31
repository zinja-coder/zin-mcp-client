.class public final Lcom/badlogic/gdx/utils/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field static allocatedUnsafe:I

.field static unsafeBuffers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToElements(Ljava/nio/Buffer;I)I
    .locals 3
    .param p0, "dst"    # Ljava/nio/Buffer;
    .param p1, "bytes"    # I

    .prologue
    .line 417
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 430
    .end local p1    # "bytes":I
    :goto_0
    return p1

    .line 419
    .restart local p1    # "bytes":I
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 420
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 421
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 422
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 423
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 424
    ushr-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 425
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    .line 426
    ushr-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 427
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 428
    ushr-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 429
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    .line 430
    ushr-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 432
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native clear(Ljava/nio/ByteBuffer;I)V
.end method

.method public static copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
    .locals 3
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "dst"    # Ljava/nio/Buffer;
    .param p2, "numElements"    # I

    .prologue
    .line 226
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->elementsToBytes(Ljava/nio/Buffer;I)I

    move-result v0

    .line 227
    .local v0, "numBytes":I
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v2

    invoke-static {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    .line 228
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    return-void
.end method

.method public static copy([BILjava/nio/Buffer;I)V
    .locals 2
    .param p0, "src"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "numElements"    # I

    .prologue
    .line 68
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([BILjava/nio/Buffer;II)V

    .line 69
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    return-void
.end method

.method public static copy([CIILjava/nio/Buffer;)V
    .locals 2
    .param p0, "src"    # [C
    .param p1, "srcOffset"    # I
    .param p2, "numElements"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 95
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x1

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([CILjava/nio/Buffer;II)V

    .line 96
    return-void
.end method

.method public static copy([CILjava/nio/Buffer;I)V
    .locals 2
    .param p0, "src"    # [C
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "numElements"    # I

    .prologue
    .line 156
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([CILjava/nio/Buffer;II)V

    .line 157
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 158
    return-void
.end method

.method public static copy([DIILjava/nio/Buffer;)V
    .locals 2
    .param p0, "src"    # [D
    .param p1, "srcOffset"    # I
    .param p2, "numElements"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 143
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x3

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([DILjava/nio/Buffer;II)V

    .line 144
    return-void
.end method

.method public static copy([DILjava/nio/Buffer;I)V
    .locals 2
    .param p0, "src"    # [D
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "numElements"    # I

    .prologue
    .line 212
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([DILjava/nio/Buffer;II)V

    .line 213
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 214
    return-void
.end method

.method public static copy([FIILjava/nio/Buffer;)V
    .locals 2
    .param p0, "src"    # [F
    .param p1, "srcOffset"    # I
    .param p2, "numElements"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 131
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x2

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FILjava/nio/Buffer;II)V

    .line 132
    return-void
.end method

.method public static copy([FILjava/nio/Buffer;I)V
    .locals 2
    .param p0, "src"    # [F
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "numElements"    # I

    .prologue
    .line 198
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FILjava/nio/Buffer;II)V

    .line 199
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 200
    return-void
.end method

.method public static copy([FLjava/nio/Buffer;II)V
    .locals 1
    .param p0, "src"    # [F
    .param p1, "dst"    # Ljava/nio/Buffer;
    .param p2, "numFloats"    # I
    .param p3, "offset"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([FLjava/nio/Buffer;II)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 53
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 54
    shl-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static copy([IIILjava/nio/Buffer;)V
    .locals 2
    .param p0, "src"    # [I
    .param p1, "srcOffset"    # I
    .param p2, "numElements"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 107
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x2

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([IILjava/nio/Buffer;II)V

    .line 108
    return-void
.end method

.method public static copy([IILjava/nio/Buffer;I)V
    .locals 2
    .param p0, "src"    # [I
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "numElements"    # I

    .prologue
    .line 170
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([IILjava/nio/Buffer;II)V

    .line 171
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x2

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 172
    return-void
.end method

.method public static copy([JIILjava/nio/Buffer;)V
    .locals 2
    .param p0, "src"    # [J
    .param p1, "srcOffset"    # I
    .param p2, "numElements"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 119
    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p2, 0x3

    invoke-static {p0, p1, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([JILjava/nio/Buffer;II)V

    .line 120
    return-void
.end method

.method public static copy([JILjava/nio/Buffer;I)V
    .locals 2
    .param p0, "src"    # [J
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "numElements"    # I

    .prologue
    .line 184
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([JILjava/nio/Buffer;II)V

    .line 185
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x3

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 186
    return-void
.end method

.method public static copy([SILjava/nio/Buffer;I)V
    .locals 2
    .param p0, "src"    # [S
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "numElements"    # I

    .prologue
    .line 82
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([SILjava/nio/Buffer;II)V

    .line 83
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v1, p3, 0x1

    invoke-static {p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 84
    return-void
.end method

.method private static native copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([BILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([CILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([DILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([FILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([FLjava/nio/Buffer;II)V
.end method

.method private static native copyJni([IILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([JILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([SILjava/nio/Buffer;II)V
.end method

.method public static disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 504
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 505
    .local v0, "size":I
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v2

    .line 506
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "buffer not allocated with newUnsafeByteBuffer or already disposed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    sub-int/2addr v1, v0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 510
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->freeMemory(Ljava/nio/ByteBuffer;)V

    .line 511
    return-void
.end method

.method private static elementsToBytes(Ljava/nio/Buffer;I)I
    .locals 3
    .param p0, "dst"    # Ljava/nio/Buffer;
    .param p1, "elements"    # I

    .prologue
    .line 436
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 449
    .end local p1    # "elements":I
    :goto_0
    return p1

    .line 438
    .restart local p1    # "elements":I
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 439
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 440
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 441
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 442
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 443
    shl-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 444
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    .line 445
    shl-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 446
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 447
    shl-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 448
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    .line 449
    shl-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 451
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native find(Ljava/nio/Buffer;IILjava/nio/Buffer;II)J
.end method

.method private static native find(Ljava/nio/Buffer;IILjava/nio/Buffer;IIF)J
.end method

.method private static native find(Ljava/nio/Buffer;II[FII)J
.end method

.method private static native find(Ljava/nio/Buffer;II[FIIF)J
.end method

.method private static native find([FIILjava/nio/Buffer;II)J
.end method

.method private static native find([FIILjava/nio/Buffer;IIF)J
.end method

.method private static native find([FII[FII)J
.end method

.method private static native find([FII[FIIF)J
.end method

.method public static findFloats(Ljava/nio/Buffer;ILjava/nio/Buffer;I)J
    .locals 6
    .param p0, "vertex"    # Ljava/nio/Buffer;
    .param p1, "strideInBytes"    # I
    .param p2, "vertices"    # Ljava/nio/Buffer;
    .param p3, "numVertices"    # I

    .prologue
    .line 366
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;IILjava/nio/Buffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats(Ljava/nio/Buffer;ILjava/nio/Buffer;IF)J
    .locals 7
    .param p0, "vertex"    # Ljava/nio/Buffer;
    .param p1, "strideInBytes"    # I
    .param p2, "vertices"    # Ljava/nio/Buffer;
    .param p3, "numVertices"    # I
    .param p4, "epsilon"    # F

    .prologue
    .line 382
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;IILjava/nio/Buffer;IIF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats(Ljava/nio/Buffer;I[FI)J
    .locals 6
    .param p0, "vertex"    # Ljava/nio/Buffer;
    .param p1, "strideInBytes"    # I
    .param p2, "vertices"    # [F
    .param p3, "numVertices"    # I

    .prologue
    .line 374
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;II[FII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats(Ljava/nio/Buffer;I[FIF)J
    .locals 7
    .param p0, "vertex"    # Ljava/nio/Buffer;
    .param p1, "strideInBytes"    # I
    .param p2, "vertices"    # [F
    .param p3, "numVertices"    # I
    .param p4, "epsilon"    # F

    .prologue
    .line 390
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find(Ljava/nio/Buffer;II[FIIF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats([FILjava/nio/Buffer;I)J
    .locals 6
    .param p0, "vertex"    # [F
    .param p1, "strideInBytes"    # I
    .param p2, "vertices"    # Ljava/nio/Buffer;
    .param p3, "numVertices"    # I

    .prologue
    .line 370
    const/4 v1, 0x0

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FIILjava/nio/Buffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats([FILjava/nio/Buffer;IF)J
    .locals 7
    .param p0, "vertex"    # [F
    .param p1, "strideInBytes"    # I
    .param p2, "vertices"    # Ljava/nio/Buffer;
    .param p3, "numVertices"    # I
    .param p4, "epsilon"    # F

    .prologue
    .line 386
    const/4 v1, 0x0

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FIILjava/nio/Buffer;IIF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats([FI[FI)J
    .locals 6
    .param p0, "vertex"    # [F
    .param p1, "strideInBytes"    # I
    .param p2, "vertices"    # [F
    .param p3, "numVertices"    # I

    .prologue
    const/4 v1, 0x0

    .line 378
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FII[FII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findFloats([FI[FIF)J
    .locals 7
    .param p0, "vertex"    # [F
    .param p1, "strideInBytes"    # I
    .param p2, "vertices"    # [F
    .param p3, "numVertices"    # I
    .param p4, "epsilon"    # F

    .prologue
    const/4 v1, 0x0

    .line 394
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, v1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/utils/BufferUtils;->find([FII[FIIF)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native freeMemory(Ljava/nio/ByteBuffer;)V
.end method

.method public static getAllocatedBytesUnsafe()I
    .locals 1

    .prologue
    .line 554
    sget v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return v0
.end method

.method private static native getBufferAddress(Ljava/nio/Buffer;)J
.end method

.method public static getUnsafeBufferAddress(Ljava/nio/Buffer;)J
    .locals 4
    .param p0, "buffer"    # Ljava/nio/Buffer;

    .prologue
    .line 532
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->getBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "numBytes"    # I

    .prologue
    .line 467
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 468
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 469
    return-object v0
.end method

.method public static newCharBuffer(I)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "numChars"    # I

    .prologue
    .line 479
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 480
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 481
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static native newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static newDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "numDoubles"    # I

    .prologue
    .line 461
    mul-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 462
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "numFloats"    # I

    .prologue
    .line 455
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 456
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 2
    .param p0, "numInts"    # I

    .prologue
    .line 485
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 486
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 487
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newLongBuffer(I)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "numLongs"    # I

    .prologue
    .line 491
    mul-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 492
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 493
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "numShorts"    # I

    .prologue
    .line 473
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 474
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "numBytes"    # I

    .prologue
    .line 517
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 518
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 519
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    add-int/2addr v1, p0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 520
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v2

    .line 521
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 522
    monitor-exit v2

    .line 523
    return-object v0

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static newUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 543
    sget v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 544
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 545
    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 546
    monitor-exit v1

    .line 547
    return-object p0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static positionInBytes(Ljava/nio/Buffer;)I
    .locals 3
    .param p0, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 398
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 411
    :goto_0
    return v0

    .line 400
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 406
    :cond_3
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_4

    .line 407
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 408
    :cond_4
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 410
    :cond_5
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_6

    .line 411
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 413
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;)V
    .locals 6
    .param p0, "data"    # Ljava/nio/Buffer;
    .param p1, "dimensions"    # I
    .param p2, "strideInBytes"    # I
    .param p3, "count"    # I
    .param p4, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 309
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;I)V

    .line 310
    return-void
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix3;I)V
    .locals 2
    .param p0, "data"    # Ljava/nio/Buffer;
    .param p1, "dimensions"    # I
    .param p2, "strideInBytes"    # I
    .param p3, "count"    # I
    .param p4, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;
    .param p5, "offset"    # I

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 334
    :pswitch_0
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M3Jni(Ljava/nio/Buffer;II[FI)V

    .line 342
    :goto_0
    return-void

    .line 337
    :pswitch_1
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M3Jni(Ljava/nio/Buffer;II[FI)V

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;)V
    .locals 6
    .param p0, "data"    # Ljava/nio/Buffer;
    .param p1, "dimensions"    # I
    .param p2, "strideInBytes"    # I
    .param p3, "count"    # I
    .param p4, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 239
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;I)V

    .line 240
    return-void
.end method

.method public static transform(Ljava/nio/Buffer;IIILcom/badlogic/gdx/math/Matrix4;I)V
    .locals 2
    .param p0, "data"    # Ljava/nio/Buffer;
    .param p1, "dimensions"    # I
    .param p2, "strideInBytes"    # I
    .param p3, "count"    # I
    .param p4, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p5, "offset"    # I

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 264
    :pswitch_0
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV4M4Jni(Ljava/nio/Buffer;II[FI)V

    .line 275
    :goto_0
    return-void

    .line 267
    :pswitch_1
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M4Jni(Ljava/nio/Buffer;II[FI)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p0, p2, p3, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M4Jni(Ljava/nio/Buffer;II[FI)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix3;)V
    .locals 6
    .param p0, "data"    # [F
    .param p1, "dimensions"    # I
    .param p2, "strideInBytes"    # I
    .param p3, "count"    # I
    .param p4, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 320
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform([FIIILcom/badlogic/gdx/math/Matrix3;I)V

    .line 321
    return-void
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix3;I)V
    .locals 1
    .param p0, "data"    # [F
    .param p1, "dimensions"    # I
    .param p2, "strideInBytes"    # I
    .param p3, "count"    # I
    .param p4, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;
    .param p5, "offset"    # I

    .prologue
    .line 353
    packed-switch p1, :pswitch_data_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 355
    :pswitch_0
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M3Jni([FII[FI)V

    .line 363
    :goto_0
    return-void

    .line 358
    :pswitch_1
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M3Jni([FII[FI)V

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix4;)V
    .locals 6
    .param p0, "data"    # [F
    .param p1, "dimensions"    # I
    .param p2, "strideInBytes"    # I
    .param p3, "count"    # I
    .param p4, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 250
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/BufferUtils;->transform([FIIILcom/badlogic/gdx/math/Matrix4;I)V

    .line 251
    return-void
.end method

.method public static transform([FIIILcom/badlogic/gdx/math/Matrix4;I)V
    .locals 1
    .param p0, "data"    # [F
    .param p1, "dimensions"    # I
    .param p2, "strideInBytes"    # I
    .param p3, "count"    # I
    .param p4, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p5, "offset"    # I

    .prologue
    .line 286
    packed-switch p1, :pswitch_data_0

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 288
    :pswitch_0
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV4M4Jni([FII[FI)V

    .line 299
    :goto_0
    return-void

    .line 291
    :pswitch_1
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV3M4Jni([FII[FI)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p4, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p0, p2, p3, v0, p5}, Lcom/badlogic/gdx/utils/BufferUtils;->transformV2M4Jni([FII[FI)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native transformV2M3Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV2M3Jni([FII[FI)V
.end method

.method private static native transformV2M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV2M4Jni([FII[FI)V
.end method

.method private static native transformV3M3Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV3M3Jni([FII[FI)V
.end method

.method private static native transformV3M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV3M4Jni([FII[FI)V
.end method

.method private static native transformV4M4Jni(Ljava/nio/Buffer;II[FI)V
.end method

.method private static native transformV4M4Jni([FII[FI)V
.end method

.class public final Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;
.super Ljava/lang/Object;
.source "ETC1.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/glutils/ETC1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ETC1Data"
.end annotation


# instance fields
.field public final compressedData:Ljava/nio/ByteBuffer;

.field public final dataOffset:I

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "compressedData"    # Ljava/nio/ByteBuffer;
    .param p4, "dataOffset"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->width:I

    .line 57
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->height:I

    .line 58
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    .line 59
    iput p4, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dataOffset:I

    .line 60
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->checkNPOT()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 10
    .param p1, "pkmFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    const/4 v9, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v6, 0x2800

    new-array v0, v6, [B

    .line 65
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 67
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 69
    .local v2, "fileSize":I
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    .line 70
    const/4 v5, 0x0

    .line 71
    .local v5, "readBytes":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 72
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 76
    .end local v2    # "fileSize":I
    .end local v5    # "readBytes":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 77
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_1
    :try_start_2
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t load pkm file \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v3}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 74
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "fileSize":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "readBytes":I
    :cond_0
    :try_start_3
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v6, v9}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getWidthPKM(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->width:I

    .line 83
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v6, v9}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getHeightPKM(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->height:I

    .line 84
    sget v6, Lcom/badlogic/gdx/graphics/glutils/ETC1;->PKM_HEADER_SIZE:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dataOffset:I

    .line 85
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dataOffset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->checkNPOT()V

    .line 87
    return-void

    .line 79
    .end local v2    # "fileSize":I
    .end local v5    # "readBytes":I
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .line 76
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private checkNPOT()V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->width:I

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->height:I

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ETC1Data"

    const-string v2, "warning: non-power-of-two ETC1 textures may crash the driver of PowerVR GPUs"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 129
    return-void
.end method

.method public hasPKMHeader()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dataOffset:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->hasPKMHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->isValidPKM(Ljava/nio/ByteBuffer;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "valid"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkm ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getWidthPKM(Ljava/nio/ByteBuffer;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->getHeightPKM(Ljava/nio/ByteBuffer;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], compressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sget v2, Lcom/badlogic/gdx/graphics/glutils/ETC1;->PKM_HEADER_SIZE:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_1
    return-object v0

    .line 133
    :cond_0
    const-string v0, "invalid"

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], compressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sget v2, Lcom/badlogic/gdx/graphics/glutils/ETC1;->PKM_HEADER_SIZE:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public write(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 9
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    const/4 v7, 0x0

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, "write":Ljava/io/DataOutputStream;
    const/16 v6, 0x2800

    new-array v0, v6, [B

    .line 105
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 106
    .local v5, "writtenBytes":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    :try_start_0
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v3    # "write":Ljava/io/DataOutputStream;
    .local v4, "write":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 111
    :goto_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 112
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 113
    .local v1, "bytesToWrite":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 114
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    add-int/2addr v5, v1

    .line 116
    goto :goto_0

    .line 120
    .end local v1    # "bytesToWrite":I
    :cond_0
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dataOffset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 124
    return-void

    .line 117
    .end local v4    # "write":Ljava/io/DataOutputStream;
    .restart local v3    # "write":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t write PKM file to \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v3}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .end local v3    # "write":Ljava/io/DataOutputStream;
    .restart local v4    # "write":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "write":Ljava/io/DataOutputStream;
    .restart local v3    # "write":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 117
    .end local v3    # "write":Ljava/io/DataOutputStream;
    .restart local v4    # "write":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "write":Ljava/io/DataOutputStream;
    .restart local v3    # "write":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.class Lcom/badlogic/gdx/graphics/PixmapIO$CIM;
.super Ljava/lang/Object;
.source "PixmapIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CIM"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x7d00

.field private static final readBuffer:[B

.field private static final writeBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x7d00

    .line 77
    new-array v0, v1, [B

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    .line 78
    new-array v0, v1, [B

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 12
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 124
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/util/zip/InflaterInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 126
    .local v8, "width":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 127
    .local v2, "height":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-static {v9}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v1

    .line 128
    .local v1, "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    new-instance v6, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v6, v8, v2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 130
    .local v6, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 131
    .local v5, "pixelBuf":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 134
    sget-object v10, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 135
    const/4 v7, 0x0

    .line 136
    .local v7, "readBytes":I
    :goto_0
    :try_start_2
    sget-object v9, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    invoke-virtual {v4, v9}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    .line 137
    sget-object v9, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->readBuffer:[B

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 145
    .end local v1    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v2    # "height":I
    .end local v5    # "pixelBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v7    # "readBytes":I
    .end local v8    # "width":I
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 146
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_1
    :try_start_4
    new-instance v9, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read Pixmap from file \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    :goto_2
    invoke-static {v3}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 139
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .restart local v2    # "height":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "pixelBuf":Ljava/nio/ByteBuffer;
    .restart local v6    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .restart local v7    # "readBytes":I
    .restart local v8    # "width":I
    :cond_0
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 148
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v6

    .end local v1    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v2    # "height":I
    .end local v5    # "pixelBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v7    # "readBytes":I
    .end local v8    # "width":I
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .line 145
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 11
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 85
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v0, "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .local v5, "out":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v8

    invoke-static {v8}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 92
    .local v6, "pixelBuf":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    rem-int/lit16 v7, v8, 0x7d00

    .line 96
    .local v7, "remainingBytes":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    div-int/lit16 v3, v8, 0x7d00

    .line 98
    .local v3, "iterations":I
    sget-object v9, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 100
    :try_start_2
    sget-object v8, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    sget-object v8, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    sget-object v8, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 105
    sget-object v8, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->writeBuffer:[B

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 106
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 115
    invoke-static {v5}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    return-void

    .line 106
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 112
    .end local v2    # "i":I
    .end local v3    # "iterations":I
    .end local v6    # "pixelBuf":Ljava/nio/ByteBuffer;
    .end local v7    # "remainingBytes":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 113
    .end local v0    # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :goto_1
    :try_start_6
    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t write Pixmap to file \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :goto_2
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 112
    .end local v0    # "deflaterOutputStream":Ljava/util/zip/DeflaterOutputStream;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.class Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;
.super Ljava/io/DataOutputStream;
.source "PixmapIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChunkBuffer"
.end annotation


# instance fields
.field final buffer:Ljava/io/ByteArrayOutputStream;

.field final crc:Ljava/util/zip/CRC32;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .prologue
    .line 325
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/zip/CRC32;)V

    .line 326
    return-void
.end method

.method private constructor <init>(Ljava/io/ByteArrayOutputStream;Ljava/util/zip/CRC32;)V
    .locals 1
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "crc"    # Ljava/util/zip/CRC32;

    .prologue
    .line 329
    new-instance v0, Ljava/util/zip/CheckedOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/util/zip/CheckedOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 330
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 331
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->crc:Ljava/util/zip/CRC32;

    .line 332
    return-void
.end method


# virtual methods
.method public endChunk(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "target"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->flush()V

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 340
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 341
    return-void
.end method

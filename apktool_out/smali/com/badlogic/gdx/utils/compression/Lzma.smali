.class public Lcom/badlogic/gdx/utils/compression/Lzma;
.super Ljava/lang/Object;
.source "Lzma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 13
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 62
    new-instance v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;

    invoke-direct {v12}, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;-><init>()V

    .line 63
    .local v12, "params":Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;
    const/4 v0, 0x0

    .line 64
    .local v0, "eos":Z
    iget-boolean v2, v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Eos:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 65
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;-><init>()V

    .line 66
    .local v1, "encoder":Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
    iget v2, v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Algorithm:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetAlgorithm(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Incorrect compression mode"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_1
    iget v2, v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->DictionarySize:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetDictionarySize(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Incorrect dictionary size"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_2
    iget v2, v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Fb:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetNumFastBytes(I)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Incorrect -fb value"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_3
    iget v2, v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->MatchFinder:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetMatchFinder(I)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Incorrect -mf value"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_4
    iget v2, v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lc:I

    iget v3, v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lp:I

    iget v6, v12, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Pb:I

    invoke-virtual {v1, v2, v3, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetLcLpPb(III)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Incorrect -lc or -lp or -pb value"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_5
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetEndMarkerMode(Z)V

    .line 72
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->WriteCoderProperties(Ljava/io/OutputStream;)V

    .line 74
    if-eqz v0, :cond_7

    .line 75
    const-wide/16 v10, -0x1

    .line 81
    .local v10, "fileSize":J
    :cond_6
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/16 v2, 0x8

    if-ge v9, v2, :cond_8

    .line 82
    mul-int/lit8 v2, v9, 0x8

    ushr-long v2, v10, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 77
    .end local v9    # "i":I
    .end local v10    # "fileSize":J
    :cond_7
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v10, v2

    .restart local v10    # "fileSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_6

    .line 78
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 84
    .restart local v9    # "i":I
    :cond_8
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/badlogic/gdx/utils/compression/ICodeProgress;)V

    .line 85
    return-void
.end method

.method public static decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v5, 0x5

    .line 94
    .local v5, "propertiesSize":I
    new-array v4, v5, [B

    .line 95
    .local v4, "properties":[B
    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-eq v7, v5, :cond_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "input .lzma file is too short"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 96
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;-><init>()V

    .line 97
    .local v0, "decoder":Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetDecoderProperties([B)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Incorrect stream properties"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 98
    :cond_1
    const-wide/16 v2, 0x0

    .line 99
    .local v2, "outSize":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v7, 0x8

    if-ge v1, v7, :cond_3

    .line 100
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 101
    .local v6, "v":I
    if-gez v6, :cond_2

    .line 102
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Can\'t read stream size"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 104
    :cond_2
    int-to-long v8, v6

    mul-int/lit8 v7, v1, 0x8

    shl-long/2addr v8, v7

    or-long/2addr v2, v8

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v6    # "v":I
    :cond_3
    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v7

    if-nez v7, :cond_4

    .line 107
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error in data stream"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 109
    :cond_4
    return-void
.end method

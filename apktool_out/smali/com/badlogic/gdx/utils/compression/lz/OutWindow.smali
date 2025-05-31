.class public Lcom/badlogic/gdx/utils/compression/lz/OutWindow;
.super Ljava/lang/Object;
.source "OutWindow.java"


# instance fields
.field _buffer:[B

.field _pos:I

.field _stream:Ljava/io/OutputStream;

.field _streamPos:I

.field _windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    return-void
.end method


# virtual methods
.method public CopyBlock(II)V
    .locals 5
    .param p1, "distance"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 48
    .local v0, "pos":I
    if-gez v0, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    add-int/2addr v0, v2

    .line 49
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 50
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    .line 52
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    .line 49
    :cond_2
    add-int/lit8 p2, p2, -0x1

    move v0, v1

    .end local v1    # "pos":I
    .restart local v0    # "pos":I
    goto :goto_0

    .line 54
    :cond_3
    return-void
.end method

.method public Create(I)V
    .locals 2
    .param p1, "windowSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 15
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-eq v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    .line 16
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    .line 17
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    .line 18
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    .line 19
    return-void
.end method

.method public Flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    sub-int v0, v1, v2

    .line 40
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_stream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    .line 43
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    goto :goto_0
.end method

.method public GetByte(I)B
    .locals 2
    .param p1, "distance"    # I

    .prologue
    .line 62
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 63
    .local v0, "pos":I
    if-gez v0, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    add-int/2addr v0, v1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    aget-byte v1, v1, v0

    return v1
.end method

.method public Init(Z)V
    .locals 1
    .param p1, "solid"    # Z

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_0

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_streamPos:I

    .line 34
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    .line 36
    :cond_0
    return-void
.end method

.method public PutByte(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_buffer:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    aput-byte p1, v0, v1

    .line 58
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_windowSize:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    .line 59
    :cond_0
    return-void
.end method

.method public ReleaseStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_stream:Ljava/io/OutputStream;

    .line 29
    return-void
.end method

.method public SetStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->ReleaseStream()V

    .line 23
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->_stream:Ljava/io/OutputStream;

    .line 24
    return-void
.end method

.class public Lcom/badlogic/gdx/utils/compression/lz/InWindow;
.super Ljava/lang/Object;
.source "InWindow.java"


# instance fields
.field public _blockSize:I

.field public _bufferBase:[B

.field public _bufferOffset:I

.field _keepSizeAfter:I

.field _keepSizeBefore:I

.field _pointerToLastSafePosition:I

.field public _pos:I

.field _posLimit:I

.field _stream:Ljava/io/InputStream;

.field _streamEndWasReached:Z

.field public _streamPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Create(III)V
    .locals 2
    .param p1, "keepSizeBefore"    # I
    .param p2, "keepSizeAfter"    # I
    .param p3, "keepSizeReserv"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_keepSizeBefore:I

    .line 61
    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_keepSizeAfter:I

    .line 62
    add-int v1, p1, p2

    add-int v0, v1, p3

    .line 63
    .local v0, "blockSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    if-eq v1, v0, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Free()V

    .line 65
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    .line 66
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    .line 68
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pointerToLastSafePosition:I

    .line 69
    return-void
.end method

.method Free()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    .line 57
    return-void
.end method

.method public GetIndexByte(I)B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public GetMatchLen(III)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "distance"    # I
    .param p3, "limit"    # I

    .prologue
    .line 102
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamEndWasReached:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/2addr v2, p1

    add-int/2addr v2, p3

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/2addr v3, p1

    sub-int p3, v2, v3

    .line 103
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 105
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/2addr v2, v3

    add-int v1, v2, p1

    .line 108
    .local v1, "pby":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v3, v1, v0

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v4, v1, v0

    sub-int/2addr v4, p2

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return v0
.end method

.method public GetNumAvailableBytes()I
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public Init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    .line 81
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    .line 82
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    .line 83
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamEndWasReached:Z

    .line 84
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->ReadBlock()V

    .line 85
    return-void
.end method

.method public MoveBlock()V
    .locals 6

    .prologue
    .line 24
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_keepSizeBefore:I

    sub-int v2, v3, v4

    .line 26
    .local v2, "offset":I
    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 28
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    add-int/2addr v3, v4

    sub-int v1, v3, v2

    .line 31
    .local v1, "numBytes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 32
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    .line 34
    return-void
.end method

.method public MovePos()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    .line 89
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_posLimit:I

    if-le v1, v2, :cond_1

    .line 90
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int v0, v1, v2

    .line 91
    .local v0, "pointerToPostion":I
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pointerToLastSafePosition:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->MoveBlock()V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->ReadBlock()V

    .line 94
    .end local v0    # "pointerToPostion":I
    :cond_1
    return-void
.end method

.method public ReadBlock()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamEndWasReached:Z

    if-eqz v3, :cond_2

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 50
    .local v0, "numReadBytes":I
    .local v2, "size":I
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    .line 51
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_keepSizeAfter:I

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_keepSizeAfter:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_posLimit:I

    .line 39
    .end local v0    # "numReadBytes":I
    .end local v2    # "size":I
    :cond_2
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    sub-int v2, v3, v4

    .line 40
    .restart local v2    # "size":I
    if-eqz v2, :cond_0

    .line 41
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_stream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v6, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 42
    .restart local v0    # "numReadBytes":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 43
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_posLimit:I

    .line 44
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_posLimit:I

    add-int v1, v3, v4

    .line 45
    .local v1, "pointerToPostion":I
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pointerToLastSafePosition:I

    if-le v1, v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pointerToLastSafePosition:I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_posLimit:I

    .line 47
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamEndWasReached:Z

    goto :goto_0
.end method

.method public ReduceOffsets(I)V
    .locals 1
    .param p1, "subValue"    # I

    .prologue
    .line 118
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    .line 119
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_posLimit:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_posLimit:I

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    .line 121
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    .line 122
    return-void
.end method

.method public ReleaseStream()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_stream:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method public SetStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_stream:Ljava/io/InputStream;

    .line 73
    return-void
.end method

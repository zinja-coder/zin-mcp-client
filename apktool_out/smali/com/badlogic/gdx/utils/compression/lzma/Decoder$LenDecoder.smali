.class Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LenDecoder"
.end annotation


# instance fields
.field m_Choice:[S

.field m_HighCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_NumPosStates:I

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 25
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_Choice:[S

    .line 27
    new-array v0, v1, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 28
    new-array v0, v1, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_HighCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    return-void
.end method


# virtual methods
.method public Create(I)V
    .locals 4
    .param p1, "numPosStates"    # I

    .prologue
    const/4 v3, 0x3

    .line 33
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    if-ge v0, p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    .line 35
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    .line 33
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I
    .locals 3
    .param p1, "rangeDecoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
    .param p2, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_Choice:[S

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 50
    :cond_0
    const/16 v0, 0x8

    .line 51
    .local v0, "symbol":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_Choice:[S

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_HighCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public Init()V
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_Choice:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 41
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 43
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_HighCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 46
    return-void
.end method

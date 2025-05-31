.class Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Decoder2"
.end annotation


# instance fields
.field m_Decoders:[S

.field final synthetic this$1:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->this$1:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x300

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    return-void
.end method


# virtual methods
.method public DecodeNormal(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)B
    .locals 3
    .param p1, "rangeDecoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x1

    .line 70
    .local v0, "symbol":I
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v2

    or-int v0, v1, v2

    .line 71
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 72
    int-to-byte v1, v0

    return v1
.end method

.method public DecodeWithMatchByte(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;B)B
    .locals 6
    .param p1, "rangeDecoder"    # Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
    .param p2, "matchByte"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x100

    .line 77
    const/4 v2, 0x1

    .line 79
    .local v2, "symbol":I
    :cond_0
    shr-int/lit8 v3, p2, 0x7

    and-int/lit8 v1, v3, 0x1

    .line 80
    .local v1, "matchBit":I
    shl-int/lit8 v3, p2, 0x1

    int-to-byte p2, v3

    .line 81
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v0

    .line 82
    .local v0, "bit":I
    shl-int/lit8 v3, v2, 0x1

    or-int v2, v3, v0

    .line 83
    if-eq v1, v0, :cond_1

    .line 84
    :goto_0
    if-ge v2, v5, :cond_2

    .line 85
    shl-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    invoke-virtual {p1, v4, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v4

    or-int v2, v3, v4

    goto :goto_0

    .line 88
    :cond_1
    if-lt v2, v5, :cond_0

    .line 89
    :cond_2
    int-to-byte v3, v2

    return v3
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 65
    return-void
.end method

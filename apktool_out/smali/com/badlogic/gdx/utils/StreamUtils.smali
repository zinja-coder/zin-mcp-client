.class public final Lcom/badlogic/gdx/utils/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final EMPTY_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 89
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 37
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-array v0, p2, [B

    .line 44
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 45
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public static copyStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyStreamToByteArray(Ljava/io/InputStream;I)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "estimatedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;-><init>(I)V

    .line 60
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static copyStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyStreamToString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "approxStringLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 74
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/StringWriter;

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/io/StringWriter;-><init>(I)V

    .line 76
    .local v3, "w":Ljava/io/StringWriter;
    const/16 v4, 0x2000

    new-array v0, v4, [C

    .line 79
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .local v1, "charsRead":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 80
    invoke-virtual {v3, v0, v5, v1}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

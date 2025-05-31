.class Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/net/NetJavaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpClientResponse"
.end annotation


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private status:Lcom/badlogic/gdx/net/HttpStatus;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    .line 51
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/net/HttpStatus;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/net/HttpStatus;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/net/HttpStatus;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/net/HttpStatus;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;

    goto :goto_0
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResult()[B
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 61
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 65
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public getResultAsStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResultAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 74
    .local v1, "input":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 75
    const-string v2, ""

    .line 83
    :goto_0
    return-object v2

    .line 79
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 83
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public getStatus()Lcom/badlogic/gdx/net/HttpStatus;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->status:Lcom/badlogic/gdx/net/HttpStatus;

    return-object v0
.end method

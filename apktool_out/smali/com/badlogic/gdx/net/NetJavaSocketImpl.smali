.class public Lcom/badlogic/gdx/net/NetJavaSocketImpl;
.super Ljava/lang/Object;
.source "NetJavaSocketImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/net/Socket;


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)V
    .locals 5
    .param p1, "protocol"    # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "hints"    # Lcom/badlogic/gdx/net/SocketHints;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    .line 41
    invoke-direct {p0, p4}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->applyHints(Lcom/badlogic/gdx/net/SocketHints;)V

    .line 44
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 45
    .local v0, "address":Ljava/net/InetSocketAddress;
    if-eqz p4, :cond_0

    .line 46
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v3, p4, Lcom/badlogic/gdx/net/SocketHints;->connectTimeout:I

    invoke-virtual {v2, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error making a socket connection to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/net/Socket;Lcom/badlogic/gdx/net/SocketHints;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hints"    # Lcom/badlogic/gdx/net/SocketHints;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    .line 57
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->applyHints(Lcom/badlogic/gdx/net/SocketHints;)V

    .line 58
    return-void
.end method

.method private applyHints(Lcom/badlogic/gdx/net/SocketHints;)V
    .locals 5
    .param p1, "hints"    # Lcom/badlogic/gdx/net/SocketHints;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefConnectionTime:I

    iget v3, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefLatency:I

    iget v4, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefBandwidth:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 65
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->trafficClass:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 66
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget-boolean v2, p1, Lcom/badlogic/gdx/net/SocketHints;->tcpNoDelay:Z

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget-boolean v2, p1, Lcom/badlogic/gdx/net/SocketHints;->keepAlive:Z

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->sendBufferSize:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 69
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->receiveBufferSize:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 70
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget-boolean v2, p1, Lcom/badlogic/gdx/net/SocketHints;->linger:Z

    iget v3, p1, Lcom/badlogic/gdx/net/SocketHints;->lingerDuration:I

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 71
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->socketTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error setting socket hints."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error closing socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error getting input stream from socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error getting output stream from socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;
.super Ljava/lang/Object;
.source "NetJavaServerSocketImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/net/ServerSocket;


# instance fields
.field private protocol:Lcom/badlogic/gdx/Net$Protocol;

.field private server:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)V
    .locals 6
    .param p1, "protocol"    # Lcom/badlogic/gdx/Net$Protocol;
    .param p2, "port"    # I
    .param p3, "hints"    # Lcom/badlogic/gdx/net/ServerSocketHints;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->protocol:Lcom/badlogic/gdx/Net$Protocol;

    .line 46
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    .line 47
    if-eqz p3, :cond_0

    .line 48
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v3, p3, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefConnectionTime:I

    iget v4, p3, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefLatency:I

    iget v5, p3, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefBandwidth:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V

    .line 50
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget-boolean v3, p3, Lcom/badlogic/gdx/net/ServerSocketHints;->reuseAddress:Z

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 51
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v3, p3, Lcom/badlogic/gdx/net/ServerSocketHints;->acceptTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 52
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v3, p3, Lcom/badlogic/gdx/net/ServerSocketHints;->receiveBufferSize:I

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 56
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 57
    .local v0, "address":Ljava/net/InetSocketAddress;
    if-eqz p3, :cond_1

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    iget v3, p3, Lcom/badlogic/gdx/net/ServerSocketHints;->backlog:I

    invoke-virtual {v2, v0, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create a server socket at port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public accept(Lcom/badlogic/gdx/net/SocketHints;)Lcom/badlogic/gdx/net/Socket;
    .locals 3
    .param p1, "hints"    # Lcom/badlogic/gdx/net/SocketHints;

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/net/NetJavaSocketImpl;

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;-><init>(Ljava/net/Socket;Lcom/badlogic/gdx/net/SocketHints;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error accepting socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->server:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error closing server."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProtocol()Lcom/badlogic/gdx/Net$Protocol;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;->protocol:Lcom/badlogic/gdx/Net$Protocol;

    return-object v0
.end method

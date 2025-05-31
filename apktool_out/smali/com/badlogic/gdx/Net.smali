.class public interface abstract Lcom/badlogic/gdx/Net;
.super Ljava/lang/Object;
.source "Net.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/Net$Protocol;,
        Lcom/badlogic/gdx/Net$HttpResponseListener;,
        Lcom/badlogic/gdx/Net$HttpRequest;,
        Lcom/badlogic/gdx/Net$HttpMethods;,
        Lcom/badlogic/gdx/Net$HttpResponse;
    }
.end annotation


# virtual methods
.method public abstract cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V
.end method

.method public abstract newClientSocket(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)Lcom/badlogic/gdx/net/Socket;
.end method

.method public abstract newServerSocket(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)Lcom/badlogic/gdx/net/ServerSocket;
.end method

.method public abstract openURI(Ljava/lang/String;)Z
.end method

.method public abstract sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
.end method
